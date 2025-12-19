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
