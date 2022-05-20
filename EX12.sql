INSERT INTO CoronavirusData (dateRep, cases, deaths, countriesAndTerritories)
SELECT dateRep,cases,deaths,countriesAndTerritories
FROM dataset;

INSERT INTO Country (countriesAndTerritories ,geoId, countryterritoryCode, continentExp)
SELECT DISTINCT countriesAndTerritories, geoId, countryterritoryCode, continentExp
FROM dataset;

INSERT INTO Date (dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year
FROM dataset;

INSERT INTO TheNumberOfPeople (countryterritoryCode,popData2020)
SELECT DISTINCT countryterritoryCode,popData2020
FROM dataset;

DELETE FROM CoronavirusData where  countriesAndTerritories = 'countriesAndTerritories';
DELETE FROM Country where  countriesAndTerritories = 'countriesAndTerritories';
DELETE FROM Date where  dateRep = 'dateRep';
DELETE FROM TheNumberOfPeople where  countryterritoryCode = 'countryterritoryCode';
