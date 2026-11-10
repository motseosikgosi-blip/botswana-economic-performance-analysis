-- QUERY 2: YEARS OF ECONOMIC CONTRACTION

SELECT
    calender_year,
    gpd_growth
FROM gdp_annual
WHERE gpd_growth < 0
ORDER BY calender_year;
