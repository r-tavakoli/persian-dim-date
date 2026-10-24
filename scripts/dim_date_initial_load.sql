-- ============================================================
-- DimDate builder — Persian calendar
-- Creates a date dimension covering 1395/01/01 through 1415/12/29
-- with Persian calendar attributes, lag columns, and a sentinel row.
-- ============================================================
-- ⚠️ WARNING: `TEMPORARY` is a placeholder database name.
-- Replace with a real database (e.g., `dw`).
USE [temporary] -- ← change to your database
GO

-- ============================================================
-- SECTION 1 — Create the temp table
-- ============================================================
-- Holds one row per date plus a sentinel row (date_key = -1).
DROP TABLE IF EXISTS #dim_date;
CREATE TABLE #dim_date
(
    -- Key
    date_key                     INT           NOT NULL,
    persian_date_key             INT           NOT NULL,

    -- Date
    gregorian_date               DATE          NULL,
    persian_date                 NCHAR(10)     NULL,

    -- Year
    gregorian_year               SMALLINT      NULL,
    persian_year                 SMALLINT      NULL,
    persian_year_lag             INT           NULL,   -- update

    -- Half-year
    persian_half_year_id         SMALLINT       NULL,
    persian_half_year_name       NVARCHAR(12)  NULL,
    persian_half_year_lag        INT           NULL,   -- update

    -- Season
    persian_season_id            SMALLINT       NULL,
    persian_season_name          NVARCHAR(15)  NULL,
    persian_season_lag           INT           NULL,   -- update

    -- Month
    persian_month_id             SMALLINT       NULL,
    persian_month_name           NVARCHAR(8)   NULL,
    persian_year_month           INT           NULL,
    persian_year_month_formatted VARCHAR(7)    NULL,
    persian_month_lag            INT           NULL,   -- update

    -- Week
    persian_week_of_year_id      SMALLINT       NULL,
    is_weekend                   BIT           NULL,
    persian_week_lag             INT           NULL,   -- update

    -- Day
    persian_day_of_year_id       SMALLINT      NULL,
    persian_day_of_month_id      SMALLINT       NULL,
    persian_day_of_week_id       SMALLINT       NULL,
    persian_week_day_name        NVARCHAR(9)   NULL,
    persian_day_lag              INT           NULL,   -- update
    is_holiday                   BIT           NULL,
    holiday_name                 NVARCHAR(50)  NULL
);
GO

-- ============================================================
-- SECTION 2 — Insert the sentinel row
-- ============================================================
-- The "unknown member" of the dimension. Facts that have no
-- matching date point here instead of NULL.
INSERT INTO #dim_date
(
    -- Key
    date_key,
    persian_date_key,

    -- Date
    gregorian_date,
    persian_date,

    -- Year
    gregorian_year,
    persian_year,
    persian_year_lag,

    -- Half-year
    persian_half_year_id,
    persian_half_year_name,
    persian_half_year_lag,

    -- Season
    persian_season_id,
    persian_season_name,
    persian_season_lag,

    -- Month
    persian_month_id,
    persian_month_name,
    persian_year_month,
    persian_year_month_formatted,
    persian_month_lag,

    -- Week
    persian_week_of_year_id,
    is_weekend,
    persian_week_lag,

    -- Day
    persian_day_of_year_id,
    persian_day_of_month_id,
    persian_day_of_week_id,
    persian_week_day_name,
    persian_day_lag,
    is_holiday,
    holiday_name
)
VALUES
(
    -- Key
    -1,     -- date_key
    -1,     -- persian_date_key

    -- Date
    NULL,   -- gregorian_date
    NULL,   -- persian_date

    -- Year
    NULL,   -- gregorian_year
    NULL,   -- persian_year
    NULL,   -- persian_year_lag

    -- Half-year
    NULL,   -- persian_half_year_id
    NULL,   -- persian_half_year_name
    NULL,   -- persian_half_year_lag

    -- Season
    NULL,   -- persian_season_id
    NULL,   -- persian_season_name
    NULL,   -- persian_season_lag

    -- Month
    NULL,   -- persian_month_id
    NULL,   -- persian_month_name
    NULL,   -- persian_year_month
    NULL,   -- persian_year_month_formatted
    NULL,   -- persian_month_lag

    -- Week
    NULL,   -- persian_week_of_year_id
    0,      -- is_weekend
    NULL,   -- persian_week_lag

    -- Day
    NULL,   -- persian_day_of_year_id
    NULL,   -- persian_day_of_month_id
    NULL,   -- persian_day_of_week_id
    NULL,   -- persian_week_day_name
    NULL,   -- persian_day_lag
    0,      -- is_holiday
    NULL    -- holiday_name
);
GO

-- Sanity check: should return exactly 1 row.
-- SELECT * FROM #dim_date

-- ============================================================
-- SECTION 3 — Build the date range
-- ============================================================
-- Generates one row per calendar day between the two bounds.
DROP TABLE IF EXISTS #dates;
CREATE TABLE #dates (FullDate DATE);

DECLARE @FromDate DATETIME = '2016-03-20'; -- 1395/01/01
DECLARE @ToDate   DATETIME = '2037-03-19'; -- 1415/12/29

WHILE @FromDate <= @ToDate
BEGIN
    INSERT INTO #dates (FullDate)
    SELECT @FromDate;

    SET @FromDate = DATEADD(DD, 1, @FromDate);
END;

-- SELECT * FROM #dates;


-- ============================================================
-- SECTION 4 — Populate #dim_date from #dates
-- ============================================================
-- Derives all Persian calendar attributes for each date.
-- Keeps the sentinel row (date_key = -1) untouched.
DELETE 
FROM #dim_date
WHERE date_key<>-1

SET DATEFIRST 6;   -- Saturday = 1 (mandatory for weekday numbering below)
SELECT @@DATEFIRST AS 'First Day', DATEPART(DW, SYSDATETIME()) AS 'Today';

INSERT INTO #dim_date
(
    -- key
    date_key,
    persian_date_key,
    -- date
    gregorian_date,
    persian_date,
    -- year
    gregorian_year,
    persian_year,
    persian_year_lag, -- update
    -- semester
    persian_half_year_id,
    persian_half_year_name,
    persian_half_year_lag, -- update
    -- season
    persian_season_id,
    persian_season_name,
    persian_season_lag, -- update
    -- month
    persian_month_id,
    persian_month_name,
    persian_year_month,
    persian_year_month_formatted,
    persian_month_lag, -- update
    -- week
    persian_week_of_year_id,
    is_weekend,
    persian_week_lag, -- update
    -- day
    persian_day_of_year_id,
    persian_day_of_month_id,
    persian_day_of_week_id,
    persian_week_day_name,
    persian_day_lag, -- update
    is_holiday,
    holiday_name
)
SELECT
    -- key
    CONVERT(INT, CONVERT(VARCHAR, d.FullDate, 112)) AS date_key, -- YYYYMMDD
    FORMAT(d.FullDate, 'yyyyMMdd', 'FA-IR') * 1 AS persian_date_key,
    -- date
    d.FullDate AS [gregorian_date],
    FORMAT(d.FullDate, 'yyyy/MM/dd', 'FA-IR') AS persian_date,
    -- year
    YEAR(d.FullDate) AS [gregorian_year],
    FORMAT(d.FullDate, 'yyyy', 'FA-IR') * 1 AS persian_year,
    NULL AS persian_year_lag, -- update
    -- semester
    CASE
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 6  THEN 1
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 12 THEN 2
    END AS persian_half_year_id,
    CASE
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 6  THEN N'نیمه اول سال'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 12 THEN N'نیمه دوم سال'
    END AS persian_half_year_name,
    NULL AS persian_half_year_lag, -- update
    -- season
    CASE
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 3  THEN 1
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 6  THEN 2
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 9  THEN 3
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 12 THEN 4
    END AS persian_season_id,
    CASE
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 3  THEN N'بهار'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 6  THEN N'تابستان'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 9  THEN N'پاییز'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 <= 12 THEN N'زمستان'
    END AS persian_season_name,
    NULL AS persian_season_lag, -- update
    -- month
    FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 AS [persian_month_id],
    CASE
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 1  THEN N'فروردین'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 2  THEN N'اردیبهشت'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 3  THEN N'خرداد'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 4  THEN N'تیر'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 5  THEN N'مرداد'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 6  THEN N'شهریور'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 7  THEN N'مهر'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 8  THEN N'آبان'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 9  THEN N'آذر'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 10 THEN N'دی'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 11 THEN N'بهمن'
        WHEN FORMAT(d.FullDate, 'MM', 'FA-IR') * 1 = 12 THEN N'اسفند'
    END AS persian_month_name,
    FORMAT(d.FullDate, 'yyyyMM', 'FA-IR') * 1 AS persian_year_month,
    FORMAT(d.FullDate, 'yyyy/MM', 'FA-IR') AS persian_year_month_formatted,
    NULL AS persian_month_lag, -- update
    -- week
    -- week of year (week 1 starts on the first day of the Persian year,
    -- ends on the first Friday; subsequent weeks run Saturday–Friday)
    (
        ROW_NUMBER() OVER (
            PARTITION BY FORMAT(d.FullDate, 'yyyy', 'FA-IR')
            ORDER BY d.FullDate
        )
        - 2
        + DATEPART(
            WEEKDAY,
            DATEADD(
                DAY,
                -(ROW_NUMBER() OVER (
                    PARTITION BY FORMAT(d.FullDate, 'yyyy', 'FA-IR')
                    ORDER BY d.FullDate
                ) - 1),
                d.FullDate
            )
        )
    ) / 7 + 1 AS persian_week_of_year_id,
    CASE
        WHEN DATEPART(DW, d.FullDate) IN (6, 7) THEN 1
        ELSE 0
    END AS is_weekend,
    NULL AS persian_week_lag, -- update
    -- day
    ROW_NUMBER() OVER(PARTITION BY FORMAT(d.FullDate, 'yyyy', 'FA-IR') ORDER BY d.FullDate) AS persian_day_of_year_id,  
	FORMAT(d.FullDate, 'dd', 'FA-IR') * 1 AS persian_day_of_month_id,
	DATEPART(dw, d.FullDate) AS persian_day_of_week_id,    
    CASE
        WHEN DATEPART(DW, d.FullDate) = 2 THEN N'یک شنبه'
        WHEN DATEPART(DW, d.FullDate) = 3 THEN N'دو شنبه'
        WHEN DATEPART(DW, d.FullDate) = 4 THEN N'سه شنبه'
        WHEN DATEPART(DW, d.FullDate) = 5 THEN N'چهار شنبه'
        WHEN DATEPART(DW, d.FullDate) = 6 THEN N'پنج شنبه'
        WHEN DATEPART(DW, d.FullDate) = 7 THEN N'جمعه'
        WHEN DATEPART(DW, d.FullDate) = 1 THEN N'شنبه'
    END AS persian_week_day_name,
    NULL AS persian_day_lag, -- update
    0 AS is_holiday, -- update
    NULL AS holiday_name -- update
FROM #dates AS d;
GO

-- ============================================================
-- SECTION 5 — Compute rank columns (rn_*)
-- ============================================================
-- DENSE_RANK() assigns sequential numbers per year, half-year,
-- season, month, week, day. The lags are computed as
-- (row's rank − today's rank) later.
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
-- SECTION 6 — Snapshot today's rank values
-- ============================================================
-- #current holds exactly one row: today's rn_* values.
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
-- SECTION 7 — Compute lags as (row rank − today's rank)
-- ============================================================
-- E.g., persian_month_lag = −3 means 3 months before current month.
-- E.g., persian_month_lag = 3 means current month.
-- E.g., persian_month_lag = +3 means 3 months after current month.
UPDATE #dim_date_rn
SET
    persian_year_lag      = rn_year      - (SELECT TOP 1 rn_year      FROM #current),
    persian_half_year_lag = rn_half_year - (SELECT TOP 1 rn_half_year FROM #current),
    persian_season_lag    = rn_season    - (SELECT TOP 1 rn_season    FROM #current),
    persian_month_lag     = rn_month     - (SELECT TOP 1 rn_month     FROM #current),
    persian_week_lag      = rn_week      - (SELECT TOP 1 rn_week      FROM #current),
    persian_day_lag       = rn_day       - (SELECT TOP 1 rn_day       FROM #current);

-- ============================================================
-- SECTION 8 — Copy lags back to #dim_date
-- ============================================================
-- Joins on gregorian_date. The sentinel row (date_key = -1) has
-- no match and is skipped by the INNER JOIN — its lags stay NULL.
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
-- Create specific schema if needed
-- ============================================================
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'general')
BEGIN
    EXEC(N'CREATE SCHEMA general');
END


-- ============================================================
-- Create the dim_date table on a specific filegroup
-- ============================================================
DROP TABLE IF EXISTS [temporary].[general].[dim_date] -- ← change to your database
CREATE TABLE [temporary].[general].[dim_date] -- ← change to your database
(
    -- Key
    date_key                     INT           NOT NULL,
    persian_date_key             INT           NOT NULL,

    -- Date
    gregorian_date               DATE          NULL,
    persian_date                 NCHAR(10)     NULL,

    -- Year
    gregorian_year               SMALLINT      NULL,
    persian_year                 SMALLINT      NULL,
    persian_year_lag             INT           NULL,

    -- Half-year
    persian_half_year_id         SMALLINT       NULL,
    persian_half_year_name       NVARCHAR(12)  NULL,
    persian_half_year_lag        INT           NULL,

    -- Season
    persian_season_id            SMALLINT       NULL,
    persian_season_name          NVARCHAR(15)  NULL,
    persian_season_lag           INT           NULL,

    -- Month
    persian_month_id             SMALLINT       NULL,
    persian_month_name           NVARCHAR(8)   NULL,
    persian_year_month           INT           NULL,
    persian_year_month_formatted VARCHAR(7)    NULL,
    persian_month_lag            INT           NULL,

    -- Week
    persian_week_of_year_id      SMALLINT       NULL,
    is_weekend                   BIT           NULL,
    persian_week_lag             INT           NULL,

    -- Day
    persian_day_of_year_id       SMALLINT      NULL,
    persian_day_of_month_id      SMALLINT       NULL,
    persian_day_of_week_id       SMALLINT       NULL,
    persian_week_day_name        NVARCHAR(9)   NULL,
    persian_day_lag              INT           NULL,

    -- Holiday
    is_holiday                   BIT           NULL,
    holiday_name                 NVARCHAR(50)  NULL,

    --Standard Columns
    created_at  DATETIME2(3)  NULL
        CONSTRAINT df_dim_date_created_at DEFAULT (SYSDATETIME()),
    modified_at DATETIME2(3)  NULL
        CONSTRAINT df_dim_date_modified_at DEFAULT (SYSDATETIME()),        

    --PK
    CONSTRAINT pk_dim_date_date_key PRIMARY KEY CLUSTERED (date_key) ON [dimensions]  -- ← PK clustered index filegroup, change to yours
)
ON [dimensions]; -- ← table data filegroup, change to yours
GO


-- ============================================================
-- Insert all rows from #dim_date into the persistent dim_date table.
-- ============================================================
INSERT INTO [general].[dim_date]
(
    date_key,
    persian_date_key,
    gregorian_date,
    persian_date,
    gregorian_year,
    persian_year,
    persian_year_lag,
    persian_half_year_id,
    persian_half_year_name,
    persian_half_year_lag,
    persian_season_id,
    persian_season_name,
    persian_season_lag,
    persian_month_id,
    persian_month_name,
    persian_year_month,
    persian_year_month_formatted,
    persian_month_lag,
    persian_week_of_year_id,
    is_weekend,
    persian_week_lag,
    persian_day_of_year_id,
    persian_day_of_month_id,
    persian_day_of_week_id,
    persian_week_day_name,
    persian_day_lag,
    is_holiday,
    holiday_name
)
SELECT
    date_key,
    persian_date_key,
    gregorian_date,
    persian_date,
    gregorian_year,
    persian_year,
    persian_year_lag,
    persian_half_year_id,
    persian_half_year_name,
    persian_half_year_lag,
    persian_season_id,
    persian_season_name,
    persian_season_lag,
    persian_month_id,
    persian_month_name,
    persian_year_month,
    persian_year_month_formatted,
    persian_month_lag,
    persian_week_of_year_id,
    is_weekend,
    persian_week_lag,
    persian_day_of_year_id,
    persian_day_of_month_id,
    persian_day_of_week_id,
    persian_week_day_name,
    persian_day_lag,
    is_holiday,
    holiday_name
FROM #dim_date
ORDER BY gregorian_date;

-- Unique keys
ALTER TABLE [general].[dim_date]
ADD CONSTRAINT uq_dim_date_persian_date_key UNIQUE (persian_date_key);

ALTER TABLE [general].[dim_date]
ADD CONSTRAINT uq_dim_date_gregorian_date UNIQUE (gregorian_date);