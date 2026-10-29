SET NOCOUNT ON;
SET XACT_ABORT ON;

BEGIN TRANSACTION;

-- Holiday updates for [temporary].[general].[dim_date]
-- Generated: 2026-10-29T18:55:12.091952
-- Total HOLIDAY dates (is_holiday = true): 297

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2016-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2016-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2016-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2016-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2016-03-31'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2016-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2016-04-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2016-05-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2016-05-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2016-06-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2016-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2016-06-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2016-07-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2016-07-07'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2016-07-30'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2016-09-12'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2016-09-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2016-10-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2016-10-12'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2016-11-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2016-11-28'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2016-11-29'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2016-12-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2016-12-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2017-02-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2017-03-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2017-03-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'آخرین روز سال'
WHERE gregorian_date = '2017-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'آخرین روز سال');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2017-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2017-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2017-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2017-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2017-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2017-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2017-04-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2017-04-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2017-05-12'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2017-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2017-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2017-06-16'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2017-06-26'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2017-06-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2017-07-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2017-09-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2017-09-09'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2017-09-30'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2017-10-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2017-11-09'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2017-11-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2017-11-18'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2017-11-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2017-12-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2018-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2018-02-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2018-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2018-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2018-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2018-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2018-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2018-03-31'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2018-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2018-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2018-04-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2018-05-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2018-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2018-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2018-06-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2018-06-15'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2018-06-16'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2018-07-09'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2018-08-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2018-08-30'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2018-09-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2018-09-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2018-10-30'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2018-11-07'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2018-11-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2018-11-16'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2018-11-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2019-02-09'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2019-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران | ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2019-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران | ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2019-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2019-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2019-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2019-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2019-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2019-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2019-04-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2019-04-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2019-05-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2019-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد | عید سعید فطر'
WHERE gregorian_date = '2019-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد | عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2019-06-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2019-06-29'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2019-08-12'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2019-08-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2019-09-09'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2019-09-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2019-10-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2019-10-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2019-10-28'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2019-11-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2019-11-15'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2020-01-29'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2020-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2020-03-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2020-03-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2020-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2020-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز | مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2020-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز | مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2020-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2020-03-31'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2020-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2020-04-09'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2020-05-15'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2020-05-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2020-05-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2020-06-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2020-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2020-06-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2020-07-31'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2020-08-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2020-08-29'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2020-08-30'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2020-10-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2020-10-16'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2020-10-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2020-10-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2020-11-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2021-01-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2021-02-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2021-02-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2021-03-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2021-03-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'آخرین روز سال'
WHERE gregorian_date = '2021-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'آخرین روز سال');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2021-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2021-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2021-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2021-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2021-03-29'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2021-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2021-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2021-05-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2021-05-13'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2021-05-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2021-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2021-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2021-06-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2021-07-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2021-07-29'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2021-08-18'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2021-08-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2021-09-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2021-10-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2021-10-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2021-10-15'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2021-10-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2022-01-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2022-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2022-02-15'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2022-03-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2022-03-18'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2022-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2022-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2022-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2022-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2022-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2022-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2022-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2022-04-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2022-05-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2022-05-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2022-05-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2022-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2022-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2022-07-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2022-07-18'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2022-08-07'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2022-08-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2022-09-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2022-09-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2022-09-26'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2022-10-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2022-10-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2022-12-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2023-02-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2023-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2023-02-18'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2023-03-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2023-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2023-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2023-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2023-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2023-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2023-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2023-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2023-04-12'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2023-04-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2023-04-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2023-05-16'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2023-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2023-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2023-06-29'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2023-07-07'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2023-07-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2023-07-28'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2023-09-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2023-09-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2023-09-15'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2023-09-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2023-10-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2023-12-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2024-01-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2024-02-08'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2024-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2024-02-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2024-03-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2024-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2024-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2024-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2024-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2024-03-31'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در | شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2024-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در | شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2024-04-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2024-04-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2024-05-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2024-06-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2024-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2024-06-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2024-06-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2024-07-15'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2024-07-16'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2024-08-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2024-09-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2024-09-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2024-09-12'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2024-09-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2024-12-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2025-01-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2025-01-28'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2025-02-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2025-02-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2025-03-19'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'آخرین روز سال'
WHERE gregorian_date = '2025-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'آخرین روز سال');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو'
WHERE gregorian_date = '2025-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز | شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2025-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز | شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2025-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2025-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2025-03-31'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی | تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2025-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی | تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2025-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2025-04-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی'
WHERE gregorian_date = '2025-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2025-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2025-06-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید غدیر خم'
WHERE gregorian_date = '2025-06-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2025-07-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2025-07-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2025-08-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2025-08-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2025-08-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2025-09-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2025-09-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2025-11-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2026-01-03'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2026-01-17'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2026-02-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2026-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2026-03-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2026-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن نوروز/جشن سال نو | عید سعید فطر'
WHERE gregorian_date = '2026-03-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن نوروز/جشن سال نو | عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز | تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2026-03-22'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز | تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2026-03-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عیدنوروز'
WHERE gregorian_date = '2026-03-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عیدنوروز');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز جمهوری اسلامی'
WHERE gregorian_date = '2026-04-01'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز جمهوری اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'جشن سیزده به در'
WHERE gregorian_date = '2026-04-02'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'جشن سیزده به در');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام جعفر صادق  (ع)'
WHERE gregorian_date = '2026-04-14'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام جعفر صادق  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید قربان'
WHERE gregorian_date = '2026-05-27'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید قربان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت حضرت امام خمینی | عید سعید غدیر خم'
WHERE gregorian_date = '2026-06-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت حضرت امام خمینی | عید سعید غدیر خم');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'قیام 15 خرداد'
WHERE gregorian_date = '2026-06-05'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'قیام 15 خرداد');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تاسوعای حسینی'
WHERE gregorian_date = '2026-06-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تاسوعای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عاشورای حسینی'
WHERE gregorian_date = '2026-06-25'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عاشورای حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'اربعین حسینی'
WHERE gregorian_date = '2026-08-04'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'اربعین حسینی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)'
WHERE gregorian_date = '2026-08-12'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'رحلت  رسول اکرم؛شهادت امام حسن مجتبی (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام رضا (ع)'
WHERE gregorian_date = '2026-08-13'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام رضا (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت امام حسن عسکری (ع)'
WHERE gregorian_date = '2026-08-21'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت امام حسن عسکری (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'میلاد رسول اکرم و امام جعفر صادق (ع)'
WHERE gregorian_date = '2026-08-30'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'میلاد رسول اکرم و امام جعفر صادق (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت فاطمه زهرا (س)'
WHERE gregorian_date = '2026-11-13'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت فاطمه زهرا (س)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت امام علی (ع) و روز پدر'
WHERE gregorian_date = '2026-12-23'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت امام علی (ع) و روز پدر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'مبعث رسول اکرم (ص)'
WHERE gregorian_date = '2027-01-06'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'مبعث رسول اکرم (ص)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان'
WHERE gregorian_date = '2027-01-24'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'ولادت حضرت قائم عجل الله تعالی فرجه و جشن نیمه شعبان');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'پیروزی انقلاب اسلامی'
WHERE gregorian_date = '2027-02-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'پیروزی انقلاب اسلامی');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'شهادت حضرت علی  (ع)'
WHERE gregorian_date = '2027-02-28'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'شهادت حضرت علی  (ع)');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'عید سعید فطر'
WHERE gregorian_date = '2027-03-10'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'تعطیل به مناسبت عید سعید فطر'
WHERE gregorian_date = '2027-03-11'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'تعطیل به مناسبت عید سعید فطر');

UPDATE [temporary].[general].[dim_date]
SET is_holiday = 1,
    holiday_description = N'روز ملی شدن صنعت نفت ایران'
WHERE gregorian_date = '2027-03-20'
  AND (is_holiday IS NULL OR is_holiday <> 1
       OR ISNULL(holiday_description, N'') <> N'روز ملی شدن صنعت نفت ایران');

COMMIT TRANSACTION;

-- Done.