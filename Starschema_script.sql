use DWH;
create TABLE MyDimDate (
dateid integer primary key not null,
month  integer,
month_name varchar(10),
day_name varchar(10),
day integer,
year integer,
quarter integer,
quarter_name varchar(10)
);

CREATE TABLE MyDimZone (
wasteid integer primary key not null,
wasetype varchar(30)
);


CREATE TABLE MyDimWaste (
zoneid integer primary key not null,
zonename varchar(30),
zonecity varchar(30)
);

CREATE TABLE MyFactTrips (
tripid integer primary key not null,
dateid integer,
wasteid integer,
zoneid integer,
amount float,
FOREIGN KEY (dateid) REFERENCES MyDimDate(dateid),
FOREIGN KEY (wasteid) REFERENCES MyDimZone(wasteid),
FOREIGN KEY (zoneid) REFERENCES MyDimWaste(zoneid)

);




