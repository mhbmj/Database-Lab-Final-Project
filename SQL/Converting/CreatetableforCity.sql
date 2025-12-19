CREATE TABLE City (
    CityID INT IDENTITY(1,1) PRIMARY KEY,
    CityName NVARCHAR(100),
    Latitude FLOAT,
    Longitude FLOAT,
    ClimateID INT FOREIGN KEY REFERENCES Climate(ClimateID)
);
