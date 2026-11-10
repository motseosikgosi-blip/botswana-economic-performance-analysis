-- QUERY 12: MONTHLY CPI PERCENTAGE CHANGE

SELECT
    current.obs_date,
    current.cpi_index,
    previous.cpi_index AS previous_month_cpi,

    ROUND(
        ((current.cpi_index - previous.cpi_index)
        / previous.cpi_index) * 100,
        2
    ) AS monthly_cpi_change_percent

FROM cpi_data AS current

LEFT JOIN cpi_data AS previous
    ON previous.obs_date = DATE(current.obs_date, '-1 month')

ORDER BY current.obs_date;
