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
