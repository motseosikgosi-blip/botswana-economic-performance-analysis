-- QUERY 13: LABOUR MARKET COMPARISON

SELECT
    survey,
    labour_force,
    employed,
    unemployed,
    unemployment_rate,
    youth_unemployment
FROM labour_data
ORDER BY survey;
