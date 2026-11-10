-- QUERY 7: SECTORAL PERFORMANCE PIVOT

SELECT
    year,

    MAX(CASE
        WHEN indicator = 'Agriculture, Forestry & Fishing'
        THEN value END) AS agriculture,

    MAX(CASE
        WHEN indicator = 'Mining & Quarrying'
        THEN value END) AS mining,

    MAX(CASE
        WHEN indicator = 'Manufacturing'
        THEN value END) AS manufacturing,

    MAX(CASE
        WHEN indicator = 'Water & Electricity'
        THEN value END) AS water_electricity

FROM economic_data
GROUP BY year
ORDER BY year;
