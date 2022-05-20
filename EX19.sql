select sum(day) AS Date,
       sum(deaths) AS TotalDeaths,
       sum(cases) AS TotalCases
FROM dataset
WHERE countriesAndTerritories LIKE 'United_Kingdom'
