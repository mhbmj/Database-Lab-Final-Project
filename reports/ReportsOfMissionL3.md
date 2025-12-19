# تمام گزارشات کوئری های اجرا شده


# کوئری شماره 1:

    Query 1:
      SELECT 
      c.CityName,
      AVG(R.Rainfall) AS AvgRainfall
    FROM Rainfall R
    INNER JOIN City c ON R.CityID = c.CityID
    GROUP BY c.CityName
    ORDER BY AvgRainfall DESC;

  هدف: 

  به دست آوردن شهر هایی که بیشترین بارش متوسط سالیانه را دارند.

  نتیجه اجرا در SQL Server:

  <img width="745" height="645" alt="L3-1" src="https://github.com/user-attachments/assets/a0ebec94-1d80-4006-8417-7cc65160e994" />

**نتایج به دست آمده:**

شهر **رشت** بیشترین بارش متوسط سالیانه را عدد تقریبی 82.589 را دارد.

-----------------------------------------------------------------

 کوئری شماره 2:

    SELECT
        C.CityName,
        R.Month,
        AVG(R.Rainfall) AS AvgRain
    FROM City C
    INNER JOIN Rainfall R ON C.CityID = R.CityID
    WHERE R.Year BETWEEN 2010 AND 2020
    GROUP BY C.CityName, R.Month
    ORDER BY C.CityName ASC, AvgRain DESC

  هدف: 

  به دست آوردن میانگین بارش سالیانه بین سال های 2010 تا 2020 و مشخص کردن بهترین و بدترین ماه ها.

  نتیجه اجرا در SQL Server:

<img width="315" height="774" alt="L3-2" src="https://github.com/user-attachments/assets/d07f875c-1f0e-4dc3-b66c-14594f11d5ce" />

**نتایج به دست آمده:**

برای هر شهر میانگین بارش سالیانه بر اساس هر ماه به دست آمد و بر اساس بیشترین و کمترین میزان بارندگی مرتب سازی شد تا بر این اساس بهترین و بدترین ماه برای هر شهر به دست آید.


-----------------------------------------------------------------

کوئری شماره 3:

        SELECT
            C.CityName,
            R.AvgRain AS AvgRainfall,
            R.AvgElevation AS AvgElevation
        FROM City C
        INNER JOIN (
            SELECT 
                CityID,
                AVG(Rainfall) AS AvgRain,
                AVG(Elevation) AS AvgElevation
            FROM Rainfall
            GROUP BY CityID
            HAVING AVG(Rainfall) > (SELECT AVG(Rainfall) FROM Rainfall)
        ) R ON C.CityID = R.CityID
        ORDER BY R.AvgRain DESC, R.AvgElevation DESC;

  هدف: 

پیدا کردن شهر هایی که میزان بارش آن ها بالاتر از میانگین کل بارش های کشور است و بررسی ارتفاع آن شهر ها با میانگسن ارتقاع کل کشور و مرتب سازی آن ها بر اساس بیشترین بارش و بیشترین ارتفاع

  نتیجه اجرا در SQL Server:

<img width="437" height="225" alt="L3-3" src="https://github.com/user-attachments/assets/2a0e0fd2-6566-41ca-9cbb-2fc249441174" />

**نتایج به دست آمده:**

نتیجه اجرای این کوئری نشان می‌دهد که شهرهایی با میانگین بارش بالاتر از میانگین کل کشور معمولاً دارای میانگین ارتفاع بیشتری نیز هستند و این خروجی امکان بررسی و مقایسه‌ی ارتباط بین ارتفاع و میزان بارش شهرها را فراهم می‌کند، به‌طوری‌که شهرهای مرتفع‌تر و پربارش‌تر در صدر جدول قرار می‌گیرند.

-----------------------------------------------------------------

کوئری شماره 4:

    SELECT C.CityName,
        CL.Climate_Type,
        MAX(YR.YearlyAVG) - MIN(YR.YearlyAVG) AS EKHTELAF
    FROM (
        SELECT
	        R.CityID,
	        R.Year,
	        AVG(Rainfall) AS YearlyAVG
        FROM Rainfall R
        GROUP BY R.CityID, R.Year
    ) YR
    INNER JOIN City C
    ON C.CityID = YR.CityID
    INNER JOIN Climate CL
    ON C.ClimateID = CL.ClimateID
    GROUP BY C.CityName , CL.Climate_Type
    ORDER BY EKHTELAF DESC

هدف: 

محاسبه میانگین بارش سالیانه برای هر نوع اقلیم آب و هوایی و مشخص کردن میزان اختلاف بارش هر شهر نسبت به میانگین کل بارش ها و مرتب سازی از بیشترین به کمترین اختلاف


  نتیجه اجرا در SQL Server:

<img width="437" height="225" alt="L3-3" src="https://github.com/user-attachments/assets/2a0e0fd2-6566-41ca-9cbb-2fc249441174" />

**نتایج به دست آمده:**

نتیجه اجرای این کوئری نشان می‌دهد که هر شهر در طول سال‌های مختلف چه میزان نوسان در میانگین بارش سالانه داشته است و با در نظر گرفتن نوع اقلیم، شهرهایی که بیشترین تغییرات بارش را تجربه کرده‌اند در صدر جدول قرار می‌گیرند، که این موضوع بیانگر پایداری یا ناپایداری الگوی بارش در اقلیم‌های مختلف است.

    
