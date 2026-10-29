"""
Fetches Iranian holidays from holidayapi.ir (Gregorian per-day endpoint).
Writes UPDATE statements ONLY for days where is_holiday == true.
"""

import argparse
import json
import sys
import time
import urllib.error
import urllib.request
from datetime import date, datetime, timedelta
from pathlib import Path

API_BASE = "https://holidayapi.ir/gregorian/{year}/{month}/{day}"
TABLE = "[temporary].[general].[dim_date]"
TIMEOUT = 15
DEFAULT_OUT = "update_holidays.sql"
CACHE_DIR = Path("cache_gregorian")
DEBUG_DIR = CACHE_DIR / "debug"
CACHE_DIR.mkdir(exist_ok=True)

DEFAULT_START = "2016-03-20"
DEFAULT_END = "2027-03-20"

FRIDAY_NAMES = {"جمعه", "Friday"}


def fetch_day(year: int, month: int, day: int) -> dict:
    """Fetch a single Gregorian day, using a local JSON cache."""
    cache_file = CACHE_DIR / f"{year}-{month:02d}-{day:02d}.json"

    if cache_file.exists():
        return json.loads(cache_file.read_text(encoding="utf-8"))

    url = API_BASE.format(year=year, month=month, day=day)
    req = urllib.request.Request(
        url,
        headers={"User-Agent": "holiday-updater/1.0", "Accept": "application/json"},
    )

    for attempt in range(4):
        try:
            with urllib.request.urlopen(req, timeout=TIMEOUT) as resp:
                raw = resp.read().decode("utf-8")
            data = json.loads(raw)
            cache_file.write_text(raw, encoding="utf-8")
            return data
        except urllib.error.HTTPError as e:
            if e.code == 429 and attempt < 3:
                wait = 2 ** attempt
                print(f"    429 on {year}-{month:02d}-{day:02d}, waiting {wait}s", file=sys.stderr)
                time.sleep(wait)
                continue
            raise

    raise RuntimeError(f"Failed to fetch {year}-{month:02d}-{day:02d}")


def is_true(value) -> bool:
    """Handle bools, string 'true', int 1."""
    if isinstance(value, bool):
        return value
    if isinstance(value, str):
        return value.strip().lower() in ("true", "1", "yes")
    if isinstance(value, (int, float)):
        return value == 1
    return False


def collect_range(start: date, end: date, debug_all: bool = False) -> dict[str, list[str]]:
    """
    Walk every day between start and end inclusive.
    Return { gregorian_date_iso: [holiday_name, ...] }
    ONLY for days with a real holiday reason (not just Friday).
    """
    if debug_all:
        DEBUG_DIR.mkdir(exist_ok=True)

    found: dict[str, list[str]] = {}
    current = start
    total = (end - start).days + 1
    processed = 0
    skipped_non_holiday = 0
    skipped_friday_only = 0

    while current <= end:
        processed += 1
        try:
            data = fetch_day(current.year, current.month, current.day)
        except Exception as e:
            print(f"    SKIP (fetch error) {current}: {e}", file=sys.stderr)
            current += timedelta(days=1)
            continue

        if debug_all:
            (DEBUG_DIR / f"{current.isoformat()}.json").write_text(
                json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8"
            )

        if is_true(data.get("is_holiday")):
            # Collect holiday reasons, EXCLUDING the "Friday" marker
            names = []
            for ev in data.get("events") or []:
                if not is_true(ev.get("is_holiday")):
                    continue
                desc = (ev.get("description") or "").strip()
                if not desc:
                    continue
                if desc in FRIDAY_NAMES:
                    continue          # skip the Friday marker
                names.append(desc)

            if names:
                found[current.isoformat()] = names
                print(
                    f"  HOLIDAY {current}  ->  {' | '.join(names)}",
                    file=sys.stderr,
                )
            else:
                # Only Friday, no real holiday reason
                skipped_friday_only += 1
        else:
            skipped_non_holiday += 1

        if processed % 30 == 0:
            print(
                f"    progress: {processed}/{total} days, "
                f"{len(found)} holidays, "
                f"{skipped_friday_only} Friday-only, "
                f"{skipped_non_holiday} non-holiday",
                file=sys.stderr,
            )

        cache_file = CACHE_DIR / f"{current.year}-{current.month:02d}-{current.day:02d}.json"
        if not cache_file.exists():
            time.sleep(0.3)

        current += timedelta(days=1)

    print(
        f"\n  DONE: scanned {processed} days, "
        f"{len(found)} real holidays, "
        f"{skipped_friday_only} Friday-only days skipped, "
        f"{skipped_non_holiday} non-holiday days skipped",
        file=sys.stderr,
    )
    return found


def esc(value: str) -> str:
    return value.replace("'", "''")


def generate_sql(holidays: dict[str, list[str]]) -> str:
    lines = [
        "SET NOCOUNT ON;",
        "SET XACT_ABORT ON;",
        "",
        "BEGIN TRANSACTION;",
        "",
        f"-- Holiday updates for {TABLE}",
        f"-- Generated: {datetime.now().isoformat()}",
        f"-- Total HOLIDAY dates (is_holiday = true): {len(holidays)}",
        "",
    ]

    for date_str in sorted(holidays.keys()):
        names = holidays[date_str]
        combined = " | ".join(names) if names else ""
        # combined = combined[:200]

        if combined:
            escaped = esc(combined)
            holiday_literal = f"N'{escaped}'"
            compare_literal = f"N'{escaped}'"
        else:
            holiday_literal = "NULL"
            compare_literal = "N''"

        lines.append(
            f"UPDATE {TABLE}\n"
            f"SET is_holiday = 1,\n"
            f"    holiday_name = {holiday_literal}\n"
            f"WHERE gregorian_date = '{date_str}'\n"
            f"  AND (is_holiday IS NULL OR is_holiday <> 1\n"
            f"       OR ISNULL(holiday_name, N'') <> {compare_literal});"
        )
        lines.append("")

    lines.extend(["COMMIT TRANSACTION;", "", "-- Done."])
    return "\n".join(lines)


def parse_date(s: str) -> date:
    return datetime.strptime(s, "%Y-%m-%d").date()


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Generate T-SQL updates ONLY for holiday days."
    )
    parser.add_argument("--out", default=DEFAULT_OUT)
    parser.add_argument("--start", default=DEFAULT_START)
    parser.add_argument("--end", default=DEFAULT_END)
    parser.add_argument("--debug-all", action="store_true",
                        help="Dump every day's API response to cache_gregorian/debug/")
    args = parser.parse_args()

    start = parse_date(args.start)
    end = parse_date(args.end)

    if start > end:
        print("ERROR: --start must be <= --end", file=sys.stderr)
        return 1

    print(f"Range: {start} .. {end} ({(end - start).days + 1} days)", file=sys.stderr)

    holidays = collect_range(start, end, debug_all=args.debug_all)

    if not holidays:
        print("ERROR: no holidays collected.", file=sys.stderr)
        return 1

    sql = generate_sql(holidays)
    out_path = Path(args.out)
    out_path.write_text(sql, encoding="utf-8")

    print(
        f"\nWrote {len(holidays)} holiday UPDATE statements to {out_path.resolve()}",
        file=sys.stderr,
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())