INSERT INTO City (CityName, Latitude, Longitude, ClimateID)
SELECT R.City, R.Latitude, R.Longitude, c.ClimateID
FROM rainfall_data R
JOIN Climate c ON R.Climate_Type = c.Climate_Type
GROUP BY R.City, R.Latitude, R.Longitude, c.ClimateID;
