# dbt_hospital_price_transparency
Using dbt to manage the workflows to build the parquet file in a standardized schema for CI of Dolthub data bounty.


# Goal

Take data on `s3://payless.health/hospital_price_transparency` (a bucket of 200GB of data representing the URLs for every CMS Certification Number-identified hospital in the United States: https://www.dolthub.com/repositories/onefact/paylesshealth/data/main) and build a parquet file in a standardized schema for CI of Dolthub data bounty.

# Setup

1. Use `environment.yml` file
2. Create a file in `models/` called `ccn_{your_ccn}.sql` and add the following code:

```sql
TODO
```
3. Run `dbt run` to build the parquet file
4. Test the parquet file by running `dbt test`. If the test fails, you can run `dbt debug` to see the error message.
5. Test commands in a colaboratory notebook following: https://colab.research.google.com/drive/1fhul2GPuguiQs57W7v7o7bdsLdsaiaUb?usp=sharing (from https://2023.open-data.nyc/event/data-thinking-in-the-era-of-chatgpt/).