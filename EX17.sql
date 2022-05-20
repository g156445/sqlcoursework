select countriesAndTerritories as country,
        CAST(sum(cases)AS double) *100 / CAST(sum(popData2020)AS double)*100  as thePercentCases,
        CAST(sum(deaths)AS double) *100 / CAST(sum(popData2020)AS double)*100 as thePercentDeaths
FROM dataset
GROUP BY countriesAndTerritories;