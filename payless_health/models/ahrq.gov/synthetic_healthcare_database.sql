-- From https://www.ahrq.gov/data/innovations/syh-dr.html
-- See summary statistics and codebook here: https://www.ahrq.gov/data/innovations/syh-dr.html#datarequest
{{ config(materialized='external', location='/tmp/synthetic_healthcare_database.parquet') }}
SELECT *
FROM read_csv('syhdr_commercial_inpatient_2016.CSV',
    header=True,
    delim=',',
    quote='"',
    columns={'Unique Key': 'BIGINT',
    'Created Date': 'VARCHAR',
    'Closed Date': 'VARCHAR',
}) 
LIMIT 10;
