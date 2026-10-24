# Persian Date Dimension (`dim_date`)

![SQL Server](https://img.shields.io/badge/SQL%20Server-2016%2B-blue?logo=microsoftsqlserver&logoColor=white)
![Language](https://img.shields.io/badge/Language-T--SQL-CC2927)
![Calendar](https://img.shields.io/badge/calendar-Persian%20%28Jalali%29-9cf)
![Range](https://img.shields.io/badge/range-1395--1415-informational)
![Refresh](https://img.shields.io/badge/refresh-daily-success)

A complete Persian (Jalali) calendar date dimension for SQL Server data warehouses. Covers **1395/01/01 → 1415/12/29** (Gregorian 2016-03-20 → 2037-03-19), exposes every Persian calendar attribute you'd need for reporting, and includes **relative lag columns** that are refreshed daily against `GETDATE()` so analysts can write queries like *"this month vs. last month"* without any date math.

## 📆 Changing the Date Range

The dimension is built once for a fixed range. To extend, shrink, or shift that range later, edit **Section 3** of `dim_date_build.sql` and re-run the build.

---

### 📍 Where the range is defined

In `dim_date_build.sql`, Section 3:

```sql
DECLARE @FromDate DATETIME = '2016-03-20'; -- 1395/01/01
DECLARE @ToDate   DATETIME = '2037-03-19'; -- 1415/12/29
```

---

## 📦 What's Included

| Object | Type | Purpose |
|---|---|---|
| `general.dim_date` | Table | The persistent dimension — one row per Gregorian day + a sentinel "unknown" row (`date_key = -1`) |
| `general.sp_dim_date_refresh_daily` | Stored Procedure | Recomputes the `*_lag` columns relative to today |
| `general.vw_dim_date` | View | Enriches the dimension with human-readable Persian labels and sort IDs for the lags |

---

## 🗓️ Calendar Coverage

| | |
|---|---|
| **Persian range** | `1395/01/01` → `1415/12/29` |
| **Gregorian range** | `2016-03-20` → `2037-03-19` |
| **Rows** | ~7,670 (≈21 years) + 1 sentinel row |
| **First day of week** | Saturday (`SET DATEFIRST 6`) |
| **Weekend** | Thursday + Friday (`DATEPART(DW) IN (6, 7)`) |

---

## 🧱 Table Schema — `general.dim_date`

### Key Columns

| Column | Type | Description |
|---|---|---|
| `date_key` | `INT` | Gregorian YYYYMMDD (e.g., `20261022`). Primary key. `-1` for the sentinel row. |
| `persian_date_key` | `INT` | Persian YYYYMMDD (e.g., `14050801`). Unique. |

### Date Columns

| Column | Type | Description |
|---|---|---|
| `gregorian_date` | `DATE` | The Gregorian date |
| `persian_date` | `NCHAR(10)` | Persian date formatted `yyyy/MM/dd` |
| `gregorian_year` | `SMALLINT` | Gregorian year |
| `persian_year` | `SMALLINT` | Persian (Jalali) year |

### Persian Attribute Columns

| Column | Type | Values |
|---|---|---|
| `persian_half_year_id` / `_name` | `SMALLINT` / `NVARCHAR(12)` | `1` نیمه اول سال, `2` نیمه دوم سال |
| `persian_season_id` / `_name` | `SMALLINT` / `NVARCHAR(15)` | `1` بهار, `2` تابستان, `3` پاییز, `4` زمستان |
| `persian_month_id` / `_name` | `SMALLINT` / `NVARCHAR(8)` | `1`–`12` (فروردین … اسفند) |
| `persian_year_month` | `INT` | YYYYMM (e.g., `140508`) |
| `persian_year_month_formatted` | `VARCHAR(7)` | `yyyy/MM` |
| `persian_week_of_year_id` | `SMALLINT` | Week number (1–53) |
| `is_weekend` | `BIT` | `1` for Thursday / Friday |
| `persian_day_of_year_id` | `SMALLINT` | 1–366 (within Persian year) |
| `persian_day_of_month_id` | `SMALLINT` | 1–31 |
| `persian_day_of_week_id` | `SMALLINT` | 1 = Saturday, 7 = Friday |
| `persian_week_day_name` | `NVARCHAR(9)` | شنبه … جمعه |
| `is_holiday` / `holiday_name` | `BIT` / `NVARCHAR(50)` | Placeholder for holiday logic (default `0` / `NULL`) |

### Lag Columns (Refreshed Daily)

These are the **star of the show**. Each lag column stores `(rank of this row) − (rank of today's row)` for the corresponding time grain. The value is **relative to whenever the procedure last ran**, so it must be refreshed daily.

| Column | Meaning | Example |
|---|---|---|
| `persian_year_lag` | `-1` = last year, `0` = current year, `+1` = next year | `-2` → 2 years ago |
| `persian_half_year_lag` | Half-year offset | `-1` → previous half-year |
| `persian_season_lag` | Season offset | `-4` → same season last year |
| `persian_month_lag` | Month offset | `-12` → same month last year |
| `persian_week_lag` | Week offset | `-1` → last week |
| `persian_day_lag` | Day offset | `-1` → yesterday |

The sentinel row (`date_key = -1`) has `NULL` lags — it never matches a real date.

### Standard Columns

| Column | Type | Default |
|---|---|---|
| `created_at` | `DATETIME2(3)` | `SYSDATETIME()` |
| `modified_at` | `DATETIME2(3)` | `SYSDATETIME()` — updated by the daily refresh |

---

## 🚀 Deployment Order

Run the scripts in this order (change `[temporary]` to your target database everywhere):

```sql
-- 1. Build the dimension and populate it
--    (creates schema [general] if missing, creates the table, inserts rows)
dim_date_build.sql

-- 2. Create the daily refresh procedure
sp_dim_date_refresh_daily.sql

-- 3. Create the reporting view
vw_dim_date.sql

-- 4. Run the first refresh so lags are populated relative to today
EXEC [general].[sp_dim_date_refresh_daily];

-- 5. Create a SQL Server Agent job to refresh lags daily
```

> **⚠️ Placeholder database name:** All scripts currently say `USE [temporary]`. Replace with your real DW database (e.g., `dw`) before deploying.