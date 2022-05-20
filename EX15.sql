SELECT cases, dateRep, day, month, year,countriesAndTerritories
FROM dataset
WHERE countriesAndTerritories LIKE 'United_Kingdom'
ORDER BY year ASC , month ASC , day ASC