CREATE TABLE Rainfall (
    RainfallID INT IDENTITY(1,1) PRIMARY KEY,
    CityID INT FOREIGN KEY REFERENCES City(CityID),
    Year INT,
    month INT,
    Rainfall FLOAT,
    elevation FLOAT
);
