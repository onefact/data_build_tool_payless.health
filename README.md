# Data build tool for Payless Health
This repository is used to standardize data from the government, hospitals, payors, claims, and electronic health records to the Payless Health Common Data Model, using the data build tool (`dbt`).

You can see examples here:

https://github.com/onefact/data_build_tool_payless.health/tree/main/notebooks

And the data models here:

https://github.com/onefact/data_build_tool_payless.health/tree/main/payless_health/models/

And the data here: 

https://data.payless.health/

For example, this folder in the Amazon simple storage service (S3) bucket, https://data.payless.health/#cms.gov/, corresponds to the following SQL query used to map the data to a standard schema (set of column names and data types using the `duckdb` engine):

https://github.com/onefact/data_build_tool_payless.health/blob/main/payless_health/models/cms.gov/national_plan_and_provider_identifiers.sql

The data build tool `dbt` takes this SQL query and compresses the data into a `materialized` view corresponding to a `parquet` file using the Apache Parquet compressed representation. 

This compressed file can then be queried using the help of ChatGPT, Claude, and other tools to visualize and create analytics, insights, and build machine learning models on top of this national scale health data.

Here is a full example from the datathinking.org course:

https://nbviewer.org/github/onefact/datathinking.org-codespace/blob/main/notebooks/princeton-university/week-1-visualizing-33-million-phone-calls-in-new-york-city.ipynb

## Building a data model 

1. Install `dbt` using `pip3 install dbt-duckdb` (https://github.com/jwills/dbt-duckdb)
2. Clone this repo: `git clone https://github.com/onefact/data_build_tool_payless.health.git`
3. Navigate to the `payless_health` directory: `cd payless_health`
4. Run a command to build a dataset, such as `dbt run --select cms.gov` to run the data models in this folder: https://github.com/onefact/data_build_tool_payless.health/blob/main/payless_health/models/cms.gov (you might need to download additional files that are needed as input by the `duckdb` SQL queries)
5. Open the materialized parquet file using `duckdb`: open `duckdb` on the command line (or use a Jupyter notebook to query the parquet file).

For easier development, we recommend testing your SQL queries first and using Claude and ChatGPT to help construct inital queries based on examples like this: 

https://github.com/onefact/data_build_tool_payless.health/blob/main/notebooks/cms.gov-national-plan-and-provider-identifier-database.ipynb

^ see specifically the prompt example for Claude to see how to accelerate this work and make scalable visualizations.

1. Use `environment.yml` file
2. Run `dbt run` to build the parquet file
3. Test the parquet file by running `dbt test`. If the test fails, you can run `dbt debug` to see the error message.
