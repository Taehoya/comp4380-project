# COMP4380 Project

## Dataset Source

- [Taxi Trips | City of Chicago](https://data.cityofchicago.org/Transportation/Taxi-Trips/wrvz-psew/data)

## Export CSV file

- Click `Filter` and `Add a New Filter Condition`

  - Add filter condition as `Trip Start TimeStamp`, `is after`
    - `01/01/2018/ 12:00:00 AM`
  - Add filter condition as `Trip Start TimeStamp`, `is after`
    - `02/12/2023/ 12:00:00 AM`

- Click `Export`

# Database

- Install [Microsoft SQL Server](https://www.microsoft.com/en-ca/sql-server/sql-server-2019)
- Create Table

```
CREATE TABLE master.dbo.taxiTrip (
    [Trip ID] varchar(50) NULL,
    [Taxi ID] varchar(128) NULL,
    [Trip Start Timestamp] datetime NULL,
    [Trip End Timestamp] datetime NULL,
    [Trip Seconds] int NULL,
    [Trip Miles] float NULL,
    [Pickup Census Tract] varchar(50) NULL,
    [Dropoff Census Tract] varchar(50) NULL,
    [Pickup Community Area] int NULL,
    [Dropoff Community Area] int NULL,
    Fare float NULL,
    Tips float NULL,
    Tolls float NULL,
    Extras float NULL,
    [Trip Total] float NULL,
    [Payment Type] varchar(50) NULL,
    Company varchar(50) NULL,
    [Pickup Centroid Latitude] varchar(50) NULL,
    [Pickup Centroid Longitude] varchar(50) NULL,
    [Pickup Centroid Location] varchar(50) NULL,
    [Dropoff Centroid Latitude] varchar(50) NULL,
    [Dropoff Centroid Longitude] varchar(50) NULL,
    [Dropoff Centroid Location] varchar(50) NULL
);
```

- Run bulk insert

```
BULK INSERT dbo.taxiTrip FROM 'file_path'
WITH (

        firstrow=2
        , lastrow=15000001
        , fieldterminator = ','
        , rowterminator = '0x0a'
        );
```
