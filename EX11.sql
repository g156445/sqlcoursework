CREATE TABLE Country(
countriesAndTerritories TEXT PRIMARY KEY NOT NULL,
geoId TEXT NOT NULL,
countryterritoryCode TEXT NOT NULL,
continentExp TEXT NOT NULL,
FOREIGN KEY (countryterritoryCode) REFERENCES TheNumberOfPeople(countryterritoryCode) ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE TheNumberOfPeople(
countryterritoryCode TEXT PRIMARY KEY NOT NULL,
popData2020 INTEGER NOT NULL
);

CREATE TABLE Date(
dateRep TEXT PRIMARY KEY NOT NULL,
day INTEGER NOT NULL,
month INTEGER NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE CoronavirusData(
dateRep TEXT NOT NULL,
cases INTEGER NOT NULL,
deaths INTEGER NOT NULL,
countriesAndTerritories TEXT NOT NULL,
FOREIGN KEY (dateRep) REFERENCES Date(dateRep) ON UPDATE CASCADE ON DELETE SET NULL,
FOREIGN KEY (countriesAndTerritories) REFERENCES Country(countriesAndTerritories) ON UPDATE CASCADE ON DELETE SET NULL,
PRIMARY KEY (dateRep, countriesAndTerritories)
);