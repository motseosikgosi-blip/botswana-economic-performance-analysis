-- QUERY 8: MINING PERFORMANCE

SELECT
    year,
    value AS mining_growth
FROM economic_data
WHERE indicator = 'Mining & Quarrying'
ORDER BY value ASC;
