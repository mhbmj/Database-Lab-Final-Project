# 1) Creating new tables

Create table for City

    CREATE TABLE City (
        CityID INT IDENTITY(1,1) PRIMARY KEY,
        CityName NVARCHAR(100),
        Latitude FLOAT,
        Longitude FLOAT,
        ClimateID INT FOREIGN KEY REFERENCES Climate(ClimateID)
    );

Create table for Rainfall 

    CREATE TABLE Rainfall (
        RainfallID INT IDENTITY(1,1) PRIMARY KEY,
        CityID INT FOREIGN KEY REFERENCES City(CityID),
        Year INT,
        month INT,
        Rainfall FLOAT,
        elevation FLOAT
    );

Create table for Climate 

    CREATE TABLE Climate (
        ClimateID INT IDENTITY(1,1) PRIMARY KEY,
        Climate_Type NVARCHAR(50) UNIQUE
    );

--------------------------------------------------------------------------------------------

# 2) Inserting data from table rainfall_data

Insert into table fo City

    INSERT INTO City (CityName, Latitude, Longitude, ClimateID)
    SELECT R.City, R.Latitude, R.Longitude, c.ClimateID
    FROM rainfall_data R
    JOIN Climate c ON R.Climate_Type = c.Climate_Type
    GROUP BY R.City, R.Latitude, R.Longitude, c.ClimateID;


Insert into table fo City Rainfall

    INSERT INTO Rainfall
    SELECT c.CityID, R.Year, R.Month, R.Rainfall, R.elevation
    FROM rainfall_data R
    JOIN City c ON R.City = c.CityName;


Insert into table fo City Climate

    INSERT INTO Climate (Climate_Type)
    SELECT DISTINCT Climate_Type
    FROM rainfall_data;

--------------------------------------------------------------------------------------------

# 3) Print tables

    SELECT * FROM City
    SELECT * FROM Rainfall
    SELECT * FROM Climate















