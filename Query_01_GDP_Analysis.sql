-- QUERY 1: GDP DESCRIPTIVE STATISTICS

SELECT
    COUNT(gpd_growth) AS number_of_years,
    ROUND(AVG(gpd_growth), 2) AS average_growth,
    ROUND(MIN(gpd_growth), 2) AS lowest_growth,
    ROUND(MAX(gpd_growth), 2) AS highest_growth
FROM gdp_annual;
