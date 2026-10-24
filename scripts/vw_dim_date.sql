USE [temporary] -- ← change to your database
GO


CREATE OR ALTER VIEW [general].[vw_dim_date]
AS
-- ============================================================
-- View:  [general].[vw_dim_date_with_lag_labels]
-- Purpose:
--   Enrich dim_date with human-readable Persian labels for every
--   lag column (year, half-year, season, month, week, day).
--
--   Each label column comes with a matching *_id column so that
--   consumers can sort chronologically without depending on the
--   label text (which would sort alphabetically, not by time).
--
-- Sorting convention:
--   The *_id columns are ordered the same way as the lag value:
--     -2  →  2  (older / past)
--     -1  →  3
--      0  →  4
--     +1  →  5
--     +2  →  6
--   A plain ORDER BY <label_id> therefore produces a chronological
--   sort from the most distant past to the most distant future.
--
--   The "UNKNOWN" bucket (NULL lag / -1 sentinel) is assigned
--   id = 0 so it always appears first when sorted ascending —
--   this matches the usual convention of putting the "unknown"
--   member at the top of a dimension list.
-- ============================================================
SELECT
    -- Key
    date_key,
    persian_date_key,

    -- Date
    gregorian_date,
    ISNULL(persian_date, N'نامشخص') AS persian_date,

    -- Year
    gregorian_year,
    persian_year,
    persian_year_lag,
    CASE
        WHEN persian_year_lag IS NULL THEN -1
        WHEN persian_year_lag =  0    THEN 1
        WHEN persian_year_lag = -1    THEN 2
        WHEN persian_year_lag =  1    THEN 3
        ELSE -1
    END AS persian_year_label_sort_id, 
    CASE
        WHEN persian_year_lag =  0 THEN N'سال جاری'
        WHEN persian_year_lag = -1 THEN N'سال گذشته'
        WHEN persian_year_lag =  1 THEN N'سال آینده'
        ELSE N'نامشخص'
    END AS persian_year_label,

    -- Half-year
    ISNULL(persian_half_year_id, -1) AS persian_half_year_id,
    ISNULL(persian_half_year_name, N'نامشخص') AS persian_half_year_name,
    persian_half_year_lag,
    CASE
        WHEN persian_half_year_lag IS NULL THEN -1
        WHEN persian_half_year_lag = -2    THEN 1
        WHEN persian_half_year_lag = -1    THEN 2
        WHEN persian_half_year_lag =  0    THEN 3
        WHEN persian_half_year_lag =  1    THEN 4
        ELSE -1
    END AS persian_half_year_label_sort_id,
    CASE
        WHEN persian_half_year_lag = -2 THEN N'همین نیمه سال در سال گذشته'
        WHEN persian_half_year_lag = -1 THEN N'نیمه سال گذشته'
        WHEN persian_half_year_lag =  0 THEN N'نیمه سال جاری'
        WHEN persian_half_year_lag =  1 THEN N'نیمه سال آینده'
        ELSE N'نامشخص'
    END AS persian_half_year_label,
    -- Season
    ISNULL(persian_season_id, -1) AS persian_season_id,
    ISNULL(persian_season_name, N'نامشخص') AS persian_season_name,
    persian_season_lag,
    CASE
        WHEN persian_season_lag IS NULL THEN -1
        WHEN persian_season_lag = -4    THEN 1
        WHEN persian_season_lag = -1    THEN 2
        WHEN persian_season_lag =  0    THEN 3
        WHEN persian_season_lag =  1    THEN 4
        ELSE -1
    END AS persian_season_label_sort_id,
    CASE
        WHEN persian_season_lag = -4 THEN N'همین فصل سال گذشته'
        WHEN persian_season_lag = -1 THEN N'فصل گذشته'
        WHEN persian_season_lag =  0 THEN N'فصل جاری'
        WHEN persian_season_lag =  1 THEN N'فصل آینده'
        ELSE N'نامشخص'
    END AS persian_season_label,

    -- Month
    ISNULL(persian_month_id, -1) AS persian_month_id,
    ISNULL(persian_month_name, N'نامشخص') AS persian_month_name,
    ISNULL(persian_year_month, -1) AS persian_year_month,
    ISNULL(persian_year_month_formatted, N'نامشخص') AS persian_year_month_formatted,
    persian_month_lag,
    CASE
        WHEN persian_month_lag IS NULL THEN -1
        WHEN persian_month_lag = -12   THEN 1
        WHEN persian_month_lag =  -1   THEN 2
        WHEN persian_month_lag =   0   THEN 3
        WHEN persian_month_lag =   1   THEN 4
        ELSE -1
    END AS persian_month_label_sort_id,
    CASE
        WHEN persian_month_lag = -12 THEN N'همین ماه سال گذشته'
        WHEN persian_month_lag = -1 THEN N'ماه گذشته'
        WHEN persian_month_lag =  0 THEN N'ماه جاری'
        WHEN persian_month_lag =  1 THEN N'ماه آینده'
        ELSE N'نامشخص'
    END AS persian_month_label,

    -- Week
    ISNULL(persian_week_of_year_id, -1) AS persian_week_of_year_id,
    is_weekend AS persian_is_weekend,
    persian_week_lag,
    CASE
        WHEN persian_week_lag IS NULL THEN -1
        WHEN persian_week_lag =  -2   THEN 1
        WHEN persian_week_lag =  -1   THEN 2
        WHEN persian_week_lag =   0   THEN 3
        WHEN persian_week_lag =   1   THEN 4
        WHEN persian_week_lag =   2   THEN 5
        ELSE -1
    END AS persian_week_label_id,
    CASE
        WHEN persian_week_lag =  -2 THEN N'دو هفته گذشته'
        WHEN persian_week_lag =  -1 THEN N'هفته گذشته'
        WHEN persian_week_lag =   0 THEN N'هفته جاری'
        WHEN persian_week_lag =   1 THEN N'هفته آینده'
        WHEN persian_week_lag =   2 THEN N'دو هفته آینده'
        ELSE N'نامشخص'
    END AS persian_week_label,

    -- Day
    ISNULL(persian_day_of_year_id, -1) AS persian_day_of_year_id,
    ISNULL(persian_day_of_month_id, -1) AS persian_day_of_month_id,
    ISNULL(persian_day_of_week_id, -1) AS persian_day_of_week_id,
    ISNULL(persian_week_day_name, N'نامشخص') AS persian_week_day_name,
    persian_day_lag,
    CASE
        WHEN persian_day_lag IS NULL THEN -1
        WHEN persian_day_lag =  -7   THEN 1
        WHEN persian_day_lag =  -6   THEN 2
        WHEN persian_day_lag =  -5   THEN 3
        WHEN persian_day_lag =  -4   THEN 4
        WHEN persian_day_lag =  -3   THEN 5
        WHEN persian_day_lag =  -2   THEN 6
        WHEN persian_day_lag =  -1   THEN 7
        WHEN persian_day_lag =   0   THEN 8
        WHEN persian_day_lag =   1   THEN 9
        WHEN persian_day_lag =   2   THEN 10
        ELSE -1
    END AS day_lag_id,
    CASE
        WHEN persian_day_lag =  -7 THEN N'هفت روز پیش'
        WHEN persian_day_lag =  -6 THEN N'شش روز پیش'
        WHEN persian_day_lag =  -5 THEN N'پنج روز پیش'
        WHEN persian_day_lag =  -4 THEN N'چهار روز پیش'
        WHEN persian_day_lag =  -3 THEN N'سه روز پیش'
        WHEN persian_day_lag =  -2 THEN N'پریروز'
        WHEN persian_day_lag =  -1 THEN N'دیروز'
        WHEN persian_day_lag =   0 THEN N'امروز'
        WHEN persian_day_lag =   1 THEN N'فردا'
        WHEN persian_day_lag =   2 THEN N'دو روز آینده'
        ELSE N'نامشخص'
    END AS day_lag_label,
    CASE
        WHEN is_weekend IS NULL AND is_holiday IS NULL  THEN -1
        WHEN is_holiday = 1                             THEN 3
        WHEN is_weekend = 1                             THEN 2
        WHEN is_weekend = 0                             THEN 1
        ELSE -1
    END AS day_type_id,
    CASE
        WHEN is_weekend = 1 OR is_holiday = 1 THEN N'تعطیل'
        WHEN is_weekend = 1 THEN N'آخر هفته'
        WHEN is_weekend = 0 THEN N'روز کاری'
        ELSE N'نامشخص'
    END AS day_type_label,

    -- Range bucket label
    CASE
        WHEN persian_day_lag IS NULL                   THEN -1
        WHEN persian_day_lag =   0                     THEN 1
        WHEN persian_day_lag BETWEEN -7   AND 0        THEN 2
        WHEN persian_day_lag BETWEEN -14  AND 0        THEN 3
        WHEN persian_day_lag BETWEEN -30  AND 0        THEN 4
        WHEN persian_day_lag BETWEEN -60  AND 0        THEN 5
        WHEN persian_day_lag BETWEEN -90  AND 0        THEN 6
        WHEN persian_day_lag BETWEEN -180 AND 0        THEN 7
        WHEN persian_day_lag BETWEEN -365 AND 0        THEN 8
        WHEN persian_day_lag <  -365                   THEN 9
        ELSE -1
    END AS day_range_id,
    CASE
        WHEN persian_day_lag =   0                     THEN N'امروز'
        WHEN persian_day_lag BETWEEN -7   AND 0        THEN N'هفت (7) روز گذشته'
        WHEN persian_day_lag BETWEEN -14  AND 0        THEN N'چهارده (14) روز گذشته'
        WHEN persian_day_lag BETWEEN -30  AND 0        THEN N'سی (30) روز گذشته'
        WHEN persian_day_lag BETWEEN -60  AND 0        THEN N'شصت (60) روز گذشته'
        WHEN persian_day_lag BETWEEN -90  AND 0        THEN N'نود (90) روز گذشته'
        WHEN persian_day_lag BETWEEN -180 AND 0        THEN N'صد و هشتاد (180) روز گذشته'
        WHEN persian_day_lag BETWEEN -365 AND 0        THEN N'یک سال (365 روز) گذشته'
        WHEN persian_day_lag <  -365                   THEN N'بیش از یک سال گذشته'
        ELSE N'نامشخص'
    END AS day_range_label

    -- Holiday
    -- is_holiday,
    -- holiday_name
FROM [temporary].[general].[dim_date]; -- ← change to your database
GO