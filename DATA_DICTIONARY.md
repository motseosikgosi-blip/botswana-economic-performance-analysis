# Data Dictionary --- Botswana Economic Performance Analysis

This document describes every field in the five SQLite tables used in
the project. Field names are shown exactly as recorded in the analytical
schema. Units and interpretations follow the supplied dataset labels and
project documentation; where the original statistical definition or
publication has not been verified, that uncertainty is stated.

## Source and provenance convention

The project files were supplied for analysis and attributed in the
project materials to **Statistics Botswana**. The exact original
publication, table number, release date, URL, methodology and revision
vintage have not yet been independently verified. Therefore, the source
for each field below is recorded as the relevant supplied project
dataset/CSV (Statistics Botswana attribution, pending primary-source
verification). Do not treat this note as confirmation of a particular
publication.

## Dataset overview

  ----------------------------------------------------------------------------
  SQL table          Observation                 Coverage                 Rows
                     unit                                 
  ------------------ --------------- -------------------- --------------------
  `gdp_annual`       One annual                2014--2025                   12
                     national                             
                     GDP-growth                           
                     observation                          

  `economic_data`    One sector in       2014--2025; four                   48
                     one year                     sectors 

  `cpi_data`         One monthly CPI   Jan 2024--Aug 2026                   32
                     observation                          

  `inflation_data`   One supplied      32 supplied pairs;                   32
                     date/value pair         date meaning 
                                               unverified 

  `labour_data`      One              2015/16 and 2024/25                    2
                     labour-force                         
                     survey period                        
  ----------------------------------------------------------------------------

Total: **126 rows** across five tables.

## 1. `gdp_annual` --- annual GDP growth

  -----------------------------------------------------------------------
  Column            Meaning           Unit / format     Source
  ----------------- ----------------- ----------------- -----------------
  `calender_year`   Calendar year to  Year (integer,    Supplied annual
                    which the annual  e.g. 2014)        GDP dataset;
                    GDP-growth                          attributed to
                    observation                         Statistics
                    relates. The                        Botswana, primary
                    spelling                            publication not
                    `calender_year`                     verified.
                    is retained from                    
                    the supplied                        
                    source/schema.                      

  `gpd_growth`      Annual GDP growth Percent (%)       Supplied annual
                    rate for                            GDP dataset;
                    Botswana. The                       attributed to
                    spelling                            Statistics
                    `gpd_growth` is                     Botswana, primary
                    retained from the                   publication not
                    supplied                            verified.
                    source/schema.                      
  -----------------------------------------------------------------------

**Interpretation:** A negative value indicates contraction in the
reported annual GDP-growth measure. This table contains 12 annual
observations for 2014--2025.

## 2. `economic_data` --- sectoral growth (long format)

  ------------------------------------------------------------------------------------------
  Column            Meaning                              Unit / format     Source
  ----------------- ------------------------------------ ----------------- -----------------
  `year`            Calendar year for the sectoral       Year (integer)    Supplied
                    growth observation.                                    sectoral-growth
                                                                           dataset;
                                                                           attributed to
                                                                           Statistics
                                                                           Botswana, primary
                                                                           publication not
                                                                           verified.

  `indicator`       Name of the economic sector          Sector name       Supplied
                    represented by the row. Values       (text/category)   sectoral-growth
                    supplied:                                              dataset; sector
                    `Agriculture, Forestry & Fishing`,                     labels retained
                    `Mining & Quarrying`,                                  from supplied
                    `Manufacturing`, and                                   data.
                    `Water & Electricity`.                                 

  `value`           Annual growth rate recorded for the  Percent (%)       Supplied
                    sector named in `indicator`.                           sectoral-growth
                                                                           dataset;
                                                                           attributed to
                                                                           Statistics
                                                                           Botswana, primary
                                                                           publication not
                                                                           verified.

  `unit`            Unit label associated with `value`.  Text label        Supplied
                    In this dataset the intended unit is (expected `%` /   sectoral-growth
                    the percentage growth rate.          percent)          dataset.
  ------------------------------------------------------------------------------------------

**Interpretation:** Each row represents one sector in one year. There
are four sector rows per year across 12 years, giving 48 observations.
These values are growth rates, **not sector shares of GDP**. Their
simple averages are not weighted by sector size.

## 3. `cpi_data` --- Consumer Price Index

  -----------------------------------------------------------------------
  Column            Meaning           Unit / format     Source
  ----------------- ----------------- ----------------- -----------------
  `obs_date`        Observation date  Date              Supplied CPI
                    for the CPI       (`YYYY-MM-DD`)    dataset;
                    value. Supplied                     attributed to
                    dates are monthly                   Statistics
                    and use the first                   Botswana, primary
                    day of the month.                   publication and
                                                        CPI base-year
                                                        metadata not
                                                        verified.

  `cpi_index`       Consumer Price    Index points      Supplied CPI
                    Index level for   (dimensionless    dataset;
                    the observation   index)            attributed to
                    date. It                            Statistics
                    represents an                       Botswana, primary
                    index number, not                   publication and
                    a percentage                        CPI base-year
                    inflation rate.                     metadata not
                                                        verified.
  -----------------------------------------------------------------------

**Interpretation:** The CPI tracks the measured price level relative to
its reference/base period. A percentage change between two index values
can be calculated, but that calculation should not automatically be
labelled an official annual inflation rate. The CPI base year, weights
and any rebasing details must be confirmed from the original source.

## 4. `inflation_data` --- supplied published inflation values

  -----------------------------------------------------------------------------
  Column                  Meaning           Unit / format     Source
  ----------------------- ----------------- ----------------- -----------------
  `obs_date`              Date-like label   Date-like         Supplied
                          supplied          text/date         inflation
                          alongside each    (`YYYY-MM-DD` as  dataset;
                          inflation value.  supplied);        attributed to
                          Examples include  temporal meaning  Statistics
                          `2026-01-24`,     unresolved        Botswana, exact
                          `2026-01-25` and                    source table and
                          `2026-01-26`. The                   date convention
                          meaning of the                      not verified.
                          suffix/day                          
                          component and its                   
                          relationship to a                   
                          reporting period                    
                          have not been                       
                          verified.                           

  `published_inflation`   Inflation         Percent (%)       Supplied
                          percentage value                    inflation
                          supplied with the                   dataset;
                          corresponding                       attributed to
                          date-like label.                    Statistics
                          The precise                         Botswana, exact
                          inflation                           measure
                          definition (for                     definition and
                          example,                            primary
                          year-on-year or                     publication not
                          month-on-month)                     verified.
                          should be                           
                          confirmed against                   
                          the original                        
                          publication.                        
  -----------------------------------------------------------------------------

**Interpretation and caution:** The 32 values can be summarised as a
set, but the date field must not be used as a verified chronological
monthly/annual sequence until its meaning is established. The project's
arithmetic mean of 12.26% is only the mean of these 32 supplied values;
it is not claimed to be an official annual or period-average inflation
rate.

## 5. `labour_data` --- labour-force survey indicators

  -----------------------------------------------------------------------------------
  Column                 Meaning           Unit / format     Source
  ---------------------- ----------------- ----------------- ------------------------
  `survey`               Name/reference    Survey period     Supplied labour-force
                         period of the     (text/category)   survey dataset;
                         labour-force                        attributed to Statistics
                         survey. Supplied                    Botswana, exact survey
                         values are                          report/table not
                         `2015/16` and                       verified.
                         `2024/25`.                          

  `labour_force`         Total number of   Persons (count)   Supplied labour-force
                         people in the                       survey dataset;
                         labour force for                    attributed to Statistics
                         the survey                          Botswana, exact
                         period, as                          definition/reference
                         supplied.                           population not verified.

  `employed`             Number of         Persons (count)   Supplied labour-force
                         employed people                     survey dataset;
                         for the survey                      attributed to Statistics
                         period, as                          Botswana, exact
                         supplied.                           employment definition
                                                             not verified.

  `unemployed`           Number of         Persons (count)   Supplied labour-force
                         unemployed people                   survey dataset;
                         for the survey                      attributed to Statistics
                         period, as                          Botswana, exact
                         supplied.                           unemployment definition
                                                             not verified.

  `unemployment_rate`    Overall           Percent (%)       Supplied labour-force
                         unemployment rate                   survey dataset;
                         for the survey                      attributed to Statistics
                         period.                             Botswana, exact rate
                                                             denominator/definition
                                                             not independently
                                                             verified.

  `youth_unemployment`   Youth             Percent (%)       Supplied labour-force
                         unemployment rate                   survey dataset;
                         for the survey                      attributed to Statistics
                         period.                             Botswana, youth age-band
                                                             and rate definition not
                                                             independently verified.
  -----------------------------------------------------------------------------------

**Interpretation and caution:** The table contains only two survey
periods, so it supports a comparison between those periods, not a
continuous annual trend. The source's youth age range and unemployment
definitions should be documented from the original survey report before
external publication.

## Data-quality notes

1.  The supplied GDP headers `calender_year` and `gpd_growth` contain
    apparent spelling errors. They have been retained to match the
    imported schema and avoid breaking existing SQL queries. If renamed,
    update all SQL scripts, exports and Tableau connections
    consistently.
2.  The 2024/25 labour-force total is 1,018,099, while employed plus
    unemployed equals 804,663 + 213,437 = 1,018,100. The one-person
    discrepancy is flagged and has not been silently changed.
3.  CPI is an index level; inflation is a rate of price change. These
    fields are not interchangeable and remain in separate tables.
4.  The supplied CPI series jumps from 141.4 in March 2026 to 150.9 in
    April 2026 (approximately 6.72%). Verify the original release, base
    year, weights, coverage and any rebasing before interpreting this as
    a price movement.
5.  The `inflation_data.obs_date` labels have not been reconciled with
    the CPI dates or an official publication calendar.
6.  Annual, monthly and survey-period observations have different
    frequencies and should not be joined as if their dates were
    equivalent.
7.  Sector `value` fields are growth rates, not GDP shares or weighted
    contributions.

## Recommended source-register fields to complete

For a publication-ready repository, add a source register with one row
per dataset and record: issuing agency; exact publication/table title;
publication or release date; direct URL; download/access date;
page/table number; unit; definition; CPI base year and weights (where
applicable); survey population and youth age band (for labour
indicators); and revision/version notes. Complete these fields from the
original source documents rather than guessing.
