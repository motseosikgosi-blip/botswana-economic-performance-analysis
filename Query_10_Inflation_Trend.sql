-- QUERY 10: HIGHEST INFLATION OBSERVATIONS

SELECT
    obs_date,
    published_inflation
FROM inflation_data
ORDER BY published_inflation DESC
LIMIT 10;
