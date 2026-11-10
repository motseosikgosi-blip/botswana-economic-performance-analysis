-- QUERY 6: SECTOR PERFORMANCE BY YEAR

SELECT
    year,
    indicator,
    value,
    unit
FROM economic_data
ORDER BY year, indicator;
