-- QUERY 5: AVERAGE GROWTH BY SECTOR

SELECT
    indicator,
    ROUND(AVG(value), 2) AS average_growth
FROM economic_data
GROUP BY indicator
ORDER BY average_growth DESC;
