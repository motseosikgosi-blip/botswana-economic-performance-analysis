-- QUERY 9: INFLATION DESCRIPTIVE STATISTICS

SELECT
    COUNT(published_inflation) AS observations,
    ROUND(AVG(published_inflation), 2) AS average_inflation,
    ROUND(MIN(published_inflation), 2) AS lowest_inflation,
    ROUND(MAX(published_inflation), 2) AS highest_inflation
FROM inflation_data;
