SELECT Country . continentExp AS Continent,
       cases, deaths,Date.dateRep, year, month, day
FROM Country, CoronavirusData, Date
