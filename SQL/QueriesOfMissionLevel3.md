    Query 1:
    SELECT 
        c.CityName,
        AVG(R.Rainfall) AS AvgRainfall
    FROM Rainfall R
    INNER JOIN City c ON R.CityID = c.CityID
    GROUP BY c.CityName
    ORDER BY AvgRainfall DESC;

---------------------------------------------------------------------------------------------------------

    Query 2:
    SELECT
        C.CityName,
        R.Month,
        AVG(R.Rainfall) AS AvgRain
    FROM City C
    INNER JOIN Rainfall R ON C.CityID = R.CityID
    WHERE R.Year BETWEEN 2010 AND 2020
    GROUP BY C.CityName, R.Month
    ORDER BY C.CityName ASC, AvgRain DESC

---------------------------------------------------------------------------------------------------------

    Query 3:
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
