SELECT
    C.CityName,
    R.Month,
    AVG(R.Rainfall) AS AvgRain
FROM City C
INNER JOIN Rainfall R ON C.CityID = R.CityID
WHERE R.Year BETWEEN 2010 AND 2020
GROUP BY C.CityName, R.Month
ORDER BY C.CityName ASC, AvgRain DESC
