-- QUERY 14: CHANGE IN UNEMPLOYMENT RATES

SELECT
    MAX(CASE
        WHEN survey = '2015/16'
        THEN unemployment_rate END) AS unemployment_2015_16,

    MAX(CASE
        WHEN survey = '2024/25'
        THEN unemployment_rate END) AS unemployment_2024_25,

    ROUND(
        MAX(CASE
            WHEN survey = '2024/25'
            THEN unemployment_rate END)
        -
        MAX(CASE
            WHEN survey = '2015/16'
            THEN unemployment_rate END),
        2
    ) AS unemployment_change_percentage_points,

    ROUND(
        MAX(CASE
            WHEN survey = '2024/25'
            THEN youth_unemployment END)
        -
        MAX(CASE
            WHEN survey = '2015/16'
            THEN youth_unemployment END),
        2
    ) AS youth_unemployment_change_percentage_points

FROM labour_data;
