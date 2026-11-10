-- QUERY 16: ANNUAL CPI INDEX CHANGE

SELECT
    calendar_year,

    ROUND(december_cpi, 2) AS december_cpi,

    ROUND(january_cpi, 2) AS january_cpi,

    ROUND(
        (december_cpi - january_cpi) / january_cpi * 100,
        2
    ) AS january_to_december_change_percent

FROM (
    SELECT
        strftime('%Y', obs_date) AS calendar_year,

        MAX(
            CASE
                WHEN strftime('%m', obs_date) = '12'
                THEN cpi_index
            END
        ) AS december_cpi,

        MAX(
            CASE
                WHEN strftime('%m', obs_date) = '01'
                THEN cpi_index
            END
        ) AS january_cpi

    FROM cpi_data

    GROUP BY strftime('%Y', obs_date)
)

WHERE january_cpi IS NOT NULL
AND december_cpi IS NOT NULL
AND january_cpi <> 0

ORDER BY calendar_year;
