-- QUERY 15: GDP AND SECTORAL GROWTH COMPARISON

SELECT
    g.calender_year,
    g.gpd_growth AS gdp_growth,
    e.indicator,
    e.value AS sector_growth

FROM gdp_annual AS g

INNER JOIN economic_data AS e
    ON g.calender_year = e.year

ORDER BY g.calender_year, e.indicator;
