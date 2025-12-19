INSERT INTO Rainfall
SELECT c.CityID, R.Year, R.Month, R.Rainfall, R.elevation
FROM rainfall_data R
JOIN City c ON R.City = c.CityName;
