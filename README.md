Botswana Economic Performance Analysis
A descriptive data-analysis project examining Botswana's economic performance through GDP growth, sectoral growth, consumer prices and labour-market indicators. The project combines spreadsheet preparation, SQL analysis and Tableau Public visualisation.

Project objectives
Examine Botswana's annual GDP growth from 2014 to 2025.
Compare growth patterns across Agriculture, Forestry & Fishing; Mining & Quarrying; Manufacturing; and Water & Electricity.
Describe movements in the Consumer Price Index (CPI) from January 2024 to August 2026.
Summarise the supplied inflation observations while flagging unresolved date labels.
Compare labour-market outcomes in the 2015/16 and 2024/25 labour-force surveys.
Communicate the results through interactive Tableau dashboards and reproducible SQL queries.
Tools
Tool Use

Microsoft Excel Organising, reviewing and preparing the supplied tabular datasets.

SQLite (online SQL environment) Creating and querying the analytical tables, checking records and calculating descriptive statistics.

SQL Filtering, grouping, aggregating, comparing and validating the data.

Tableau Public Building visual worksheets and dashboards for GDP, sectoral performance, prices/inflation and labour-market indicators.

Datasets
The analysis uses five supplied datasets/tables and 126 observations in total.

Dataset / SQL Coverage Observations Main measure table

gdp_annual 2014--2025 12 Annual GDP growth (%)

economic_data 2014--2025; four 48 Sectoral annual sectors growth (%)

cpi_data Jan 2024--Aug 2026 32 CPI index

inflation_data 32 supplied 32 Published date/value pairs; inflation (%) date meaning not
verified

labour_data 2015/16 and 2024/25 2 Labour force, surveys employment and unemployment indicators

The original GDP field names are retained as supplied in the database: calender_year and gpd_growth. The sector table is stored in long format using year, indicator, value and unit. See DATA_DICTIONARY.md for every field, its interpretation, unit and source/provenance.

Data provenance
The files were supplied for this project and attributed in the project materials to Statistics Botswana. The figures have not been independently reconciled against the original Statistics Botswana publications. The exact publication title, release date, URL, definitions and revision vintage should be added to the source register before treating the results as fully verified official statistics. Do not infer a precise source publication from the dataset labels alone.

Key findings
All results below are descriptive summaries of the supplied values.

GDP growth
Average annual GDP growth across 2014--2025 was approximately 2.31%.
Growth ranged from -8.7% in 2020 to 11.9% in 2021.
Negative growth was recorded in 2015 (-4.9%), 2020 (-8.7%), 2024 (-2.8%) and 2025 (-0.7%).
The population standard deviation was approximately 5.43 percentage points, indicating a volatile series.
Sectoral growth
Sector Average growth Minimum Maximum

Agriculture, Forestry & Fishing 1.08% -8.8% 15.4% Mining & Quarrying -1.84% -26.5% 29.8% Manufacturing 0.13% -15.5% 8.3% Water & Electricity 5.49% -22.3% 48.9%

Water & Electricity had the highest simple average but also a very wide range. Mining & Quarrying had the lowest average, including contractions in 2020 and 2024--2025. These sector averages are not weighted by sector size and are not contributions to GDP growth.

Consumer prices and inflation
The CPI increased from 131.8 in January 2024 to 149.5 in August 2026, a change of approximately 13.43% between the endpoints.
The supplied CPI series rises from 141.4 in March 2026 to 150.9 in April 2026, a one-month increase of approximately 6.72%. This unusually large movement requires source/methodology verification before interpretation.
The 32 supplied inflation values have a mean of approximately 12.26%, a minimum of 3.6% and a maximum of 32.8%. Their date labels (examples include 2026-01-24, 2026-01-25 and 2026-01-26) have not been verified as a monthly or annual time sequence. The mean is not presented as Botswana's official average inflation rate for 2024--2026.
Labour market
Comparing the two supplied survey observations:

Overall unemployment increased from 17.6% (2015/16) to 21.0% (2024/25): +3.4 percentage points.
Youth unemployment increased from 25.1% to 28.9%: +3.8 percentage points.
Employment increased by 115,135 people, while the labour force increased by 181,365 people.
These are two survey-period comparisons, not an annual trend. The 2024/25 labour-force total (1,018,099) is one person lower than employed plus unemployed (804,663 + 213,437 = 1,018,100); the discrepancy is retained and flagged rather than silently corrected.

Methodology
Data preparation: The supplied CSV/tabular files were reviewed and organised in Excel. Original values and field labels were retained where practical.
Database setup: Five SQLite tables were created and populated: gdp_annual, economic_data, cpi_data, inflation_data and labour_data.
Validation: SQL checks were used to inspect table contents and record counts. The expected total is 126 observations: 12 GDP, 48 sectoral, 32 CPI, 32 inflation and 2 labour-survey records.
Descriptive analysis: SQL queries calculated counts, averages, minima, maxima, dispersion, negative-growth observations, sector summaries, selected period changes and labour-market comparisons.
Visualisation: Tableau Public worksheets and four dashboard themes were prepared: GDP performance, sectoral performance, consumer prices/inflation, and labour-market comparisons.
Interpretation: Findings were described as patterns in the supplied observations. No causal claims were made.
Calculation notes
Sector averages are arithmetic means of the 12 supplied annual growth rates for each sector; they are not weighted.
CPI endpoint change is calculated as (149.5 / 131.8 - 1) �� 100.
The March--April 2026 CPI change is calculated as (150.9 / 141.4 - 1) �� 100.
Changes in unemployment rates are expressed in percentage points, not percent changes.
The inflation summary statistics describe the 32 supplied values only; the date field is not treated as a verified chronological series.
Limitations and data-quality considerations
Source verification: The supplied figures are attributed to Statistics Botswana in the project materials, but the original publications and exact metadata have not been independently checked. Confirm source URLs, publication titles, release dates, units, definitions, base years and revisions.
Inflation dates: The date values in inflation_data have an unresolved format/meaning. Do not use them to infer a time trend until their meaning is confirmed.
CPI discontinuity: The 6.72% March--April 2026 increase is unusually large and may reflect a genuine movement, rebasing, changed coverage/weights or a data issue. The available data do not determine which explanation is correct.
Different frequencies: GDP and sectoral data are annual, CPI is monthly, inflation dates are unresolved, and labour data contain only two survey periods. They are not directly aligned observations.
Sector weighting: Simple averages do not account for sector size and cannot be summed to reproduce GDP growth or sector contributions.
Labour arithmetic: The 2024/25 labour-force total differs by one person from employed plus unemployed. This should be checked against the original survey release.
Limited labour observations: Two surveys do not establish a continuous trend, and the data do not explain unemployment causes, job quality, participation, informality or underemployment.
Descriptive design: The project identifies patterns and comparisons; it does not estimate causal effects or test econometric relationships.
Coverage: Only the supplied indicators and periods are included. The analysis does not cover all components of national accounts, trade, fiscal policy, investment, household welfare or employment by industry.
Suggested repository structure
text Botswana-Economic-Performance/ README.md DATA_DICTIONARY.md 01_Source_Data/02_Cleaned_Data/ 03_SQL/ analysis_queries.sql query_outputs/ 04_Tableau/workbook_or_public_link.txt dashboard_screenshots/ 05_Report/

Reproducibility
To reproduce the analysis, retain the original CSV files, import them into SQLite using the documented table/column names, run the SQL scripts in 03_SQL/, and connect the resulting tables or exported query outputs to Tableau Public. Keep source files unchanged and document any cleaning or corrections separately.

Interpretation note
This is a portfolio-level descriptive analysis of supplied data. It should not be represented as an independently audited official statistical release. Resolve the source, inflation-date, CPI movement and labour-force discrepancy issues before using the results for formal policy or investment decisions
