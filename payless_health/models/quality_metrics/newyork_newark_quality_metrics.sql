{{ config(materialized='external', location='/tmp/newyork_newark_core-based-statistical-area-hospital-quality-measures.parquet') }}
SELECT * 
FROM read_csv('https://data.payless.health/data.cms.gov%2Fnewyork_newark_core-based-statistical-area-hospital-quality-measures.csv', 
  header=True, 
  delim=',',
  skip=1,
  nullstr='Not Available',
  quote='"',
  columns={
    'PRVDR_NUM': 'VARCHAR',
    'FAC_NAME': 'VARCHAR',
    'CMS Overall Rating (Stars)': 'DOUBLE',
    '30-Day Unplanned Readmissions, Hospital Wide': 'DOUBLE',
    'HCAHPS Overall hospital rating (H_HSP_RATING_LINEAR_SCORE)': 'DOUBLE',
    'CLABSI Standardized Infection Ratio': 'DOUBLE',
    'CAUTI Standardized Infection Ratio': 'DOUBLE',
    'Patient Safety and Adverse Events Composite (PSI-90)': 'DOUBLE',
    'Early Delivery (PC-01)': 'VARCHAR',
    'Exclusive Breast Milk Feeding (PC-05)': 'VARCHAR',
    'Appropriate care for severe sepsis and septic shock (SEP-1)': 'VARCHAR',
    'Average (median) time patients spent in the emergency department before leaving from the visit (OP-18B)': 'DOUBLE',
    'Safe Use of Opioids - Concurrent Prescribing (SAFE_USE_OPIOIDS)': 'VARCHAR',
    'MRI Lumbar Spine for Low Back Pain (OP-8)': 'VARCHAR',
    'Abdomen CT Use of Contrast Material (OP-10)': 'VARCHAR',
    'Outpatients who got cardiac imaging stress tests before low-risk outpatient surgery (OP-13)': 'VARCHAR',
    'Percent of patients receiving follow-up care within 30 days after hospitalization for mental illness (FUH-30)': 'VARCHAR',
    'Alcohol and other drug use disorder treatment provided or offered at discharge (SUB-3)': 'VARCHAR'
  })
-- LIMIT 10;