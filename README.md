# dbt_hospital_price_transparency
Using dbt to manage the workflows to build the parquet file in a standardized schema for CI of Dolthub data bounty.


# Goal

# Setup

1. Use `environment.yml` file
2. Run `dbt run` to build the parquet file
3. Test the parquet file by running `dbt test`. If the test fails, you can run `dbt debug` to see the error message.