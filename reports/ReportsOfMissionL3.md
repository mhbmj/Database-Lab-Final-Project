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
