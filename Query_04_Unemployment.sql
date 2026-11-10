-- QUERY 4: GDP GROWTH VOLATILITY

SELECT
    ROUND(AVG(gpd_growth), 2) AS average_growth,
    ROUND(
        AVG(gpd_growth * gpd_growth)
        - AVG(gpd_growth) * AVG(gpd_growth),
        2
    ) AS population_variance
FROM gdp_annual;
