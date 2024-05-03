CREATE DATABASE corona_virus_dataset;
GO

use corona_virus_dataset;
go
CREATE TABLE corona_virus_dataset (
    Province VARCHAR(255),
    CountryRegion VARCHAR(255),
    Latitude FLOAT,
    Longitude FLOAT,
    [Date] VARCHAR(10), -- Use VARCHAR to import dates as text
    Confirmed INT,
    Deaths INT,
    Recovered INT
);
go
