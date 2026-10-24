USE [temporary];   -- ← change to your target database
GO

CREATE OR ALTER PROCEDURE [general].[sp_dim_date_refresh_daily]
AS
BEGIN
    -- ============================================================
    -- Refresh lags on dim_date
    -- ============================================================
    -- Copies the staging dimension into the target table, then
    -- recomputes the lag columns (persian_*_lag) relative to today,
    -- and writes everything back to the target.
    -- ============================================================

    -- ============================================================
    -- STEP 1 — Stage the source table
    -- ============================================================
    -- Load the staging dimension into a local temp table so all
    -- subsequent operations work on a snapshot that won't change
    -- mid-run.
    DROP TABLE IF EXISTS #dim_date
    SELECT *
    INTO #dim_date
    FROM [temporary].[general].[dim_date] -- ← change to your database 

    -- ============================================================
    -- STEP 2 — Compute rank columns (rn_*)
    -- ============================================================
    -- DENSE_RANK() assigns sequential numbers per year, half-year,
    -- season, month, week, day. The lags are computed as
    -- (row's rank − today's rank) in the next step.
    --
    -- The sentinel row (date_key = -1) is excluded — it has no
    -- date attributes and shouldn't participate in the ranking.
    --
    -- is_end_of_week marks Friday (persian_day_of_week_id = 7),
    -- which is used to count weeks in rn_week.
    DROP TABLE IF EXISTS #dim_date_rn;

    WITH week_marker_cte AS (
        SELECT
            *,
            CASE 
                WHEN persian_day_of_week_id = 7 THEN 1   -- Friday
                ELSE 0 
            END AS is_end_of_week
        FROM #dim_date
        WHERE date_key <> -1
    )
    SELECT
        gregorian_date,

        persian_year_lag,
        persian_half_year_lag,
        persian_season_lag,
        persian_month_lag,
        persian_week_lag,
        persian_day_lag,

        DENSE_RANK() OVER (ORDER BY persian_year) AS rn_year,     
        DENSE_RANK() OVER (ORDER BY persian_year, persian_half_year_id) AS rn_half_year,
        DENSE_RANK() OVER (ORDER BY persian_year, persian_season_id) AS rn_season,   
        DENSE_RANK() OVER (ORDER BY persian_year_month) AS rn_month,    

        1 + ISNULL(
                SUM(is_end_of_week) OVER (
                    ORDER BY gregorian_date
                    ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
                ),
                0
            ) AS rn_week,

        DENSE_RANK() OVER (ORDER BY persian_date_key) AS rn_day
    INTO #dim_date_rn
    FROM week_marker_cte;


    -- ============================================================
    -- STEP 3 — Snapshot today's rank values
    -- ============================================================
    -- #current holds exactly one row: today's rn_* values.
    -- These are the reference points for the lag calculation.
    DROP TABLE IF EXISTS #current
    SELECT
        gregorian_date,
        rn_year,
        rn_half_year,
        rn_season,
        rn_month,
        rn_week,
        rn_day
    INTO #current
    FROM #dim_date_rn
    WHERE gregorian_date = CAST(GETDATE() AS DATE);

    -- ============================================================
    -- STEP 4 — Compute lags as (row rank − today's rank)
    -- ============================================================
    -- Examples for persian_month_lag:
    --   −3 → 3 months before the current month
    --    0 → current month
    --   +3 → 3 months after the current month
    --
    -- TOP 1 ensures a single scalar per subquery — #current has
    -- one row, but this avoids a "subquery returned more than
    -- one row" error if that ever changes.
    UPDATE #dim_date_rn
    SET
        persian_year_lag      = rn_year      - (SELECT TOP 1 rn_year      FROM #current),
        persian_half_year_lag = rn_half_year - (SELECT TOP 1 rn_half_year FROM #current),
        persian_season_lag    = rn_season    - (SELECT TOP 1 rn_season    FROM #current),
        persian_month_lag     = rn_month     - (SELECT TOP 1 rn_month     FROM #current),
        persian_week_lag      = rn_week      - (SELECT TOP 1 rn_week      FROM #current),
        persian_day_lag       = rn_day       - (SELECT TOP 1 rn_day       FROM #current);

    -- ============================================================
    -- STEP 5 — Copy lag values back to #dim_date
    -- ============================================================
    -- Joins on gregorian_date. The sentinel row (date_key = -1)
    -- has no match and is skipped by the INNER JOIN — its lags
    -- stay NULL, which is correct for the unknown member.
    UPDATE dst
    SET
        persian_year_lag      = src.persian_year_lag,
        persian_half_year_lag = src.persian_half_year_lag,
        persian_season_lag    = src.persian_season_lag,
        persian_month_lag     = src.persian_month_lag,
        persian_week_lag      = src.persian_week_lag,
        persian_day_lag       = src.persian_day_lag
    FROM #dim_date AS dst
    INNER JOIN #dim_date_rn AS src
        ON src.gregorian_date = dst.gregorian_date;

    -- ============================================================
    -- STEP 6 — Write #dim_date back to [general].[dim_date]
    -- ============================================================
    -- Updates every column except date_key (the join key).
    -- modified_at is set to the current time to record the refresh.
    UPDATE dst
    SET
        persian_date_key             = src.persian_date_key,
        gregorian_date               = src.gregorian_date,
        persian_date                 = src.persian_date,
        gregorian_year               = src.gregorian_year,
        persian_year                 = src.persian_year,
        persian_year_lag             = src.persian_year_lag,
        persian_half_year_id         = src.persian_half_year_id,
        persian_half_year_name       = src.persian_half_year_name,
        persian_half_year_lag        = src.persian_half_year_lag,
        persian_season_id            = src.persian_season_id,
        persian_season_name          = src.persian_season_name,
        persian_season_lag           = src.persian_season_lag,
        persian_month_id             = src.persian_month_id,
        persian_month_name           = src.persian_month_name,
        persian_year_month           = src.persian_year_month,
        persian_year_month_formatted = src.persian_year_month_formatted,
        persian_month_lag            = src.persian_month_lag,
        persian_week_of_year_id      = src.persian_week_of_year_id,
        is_weekend                   = src.is_weekend,
        persian_week_lag             = src.persian_week_lag,
        persian_day_of_year_id       = src.persian_day_of_year_id,
        persian_day_of_month_id      = src.persian_day_of_month_id,
        persian_day_of_week_id       = src.persian_day_of_week_id,
        persian_week_day_name        = src.persian_week_day_name,
        persian_day_lag              = src.persian_day_lag,
        is_holiday                   = src.is_holiday,
        holiday_name                 = src.holiday_name,
        modified_at                  = SYSDATETIME()
    FROM [temporary].[general].[dim_date] AS dst  -- ← change to your database
    INNER JOIN #dim_date AS src ON src.date_key = dst.date_key
    WHERE src.date_key <> -1;

END