# E-commerce Data Pipeline: Azure, Snowflake and dbt

Automated ELT pipeline that loads e-commerce data from Azure Blob Storage
into Snowflake using Azure Data Factory, then transforms it into
analytics-ready marts with dbt.

## Architecture
![Architecture](docs/architecture.png)

Blob Storage → Azure Data Factory → Snowflake RAW → dbt STAGING → dbt MARTS

## Tech stack
Azure Blob Storage, Azure Data Factory, Snowflake, dbt, GitHub

## Data
customers, products, orders, order_items, payments (sample in /data)

## Models
- Staging (5 views): ...
- Marts (3 tables): daily_sales, revenue_by_category, customer_summary

## Lineage
![Lineage](docs/dbt_lineage.png)

## How to run
1. Run the SQL in snowflake_setup/ in order
2. Import the ADF JSON from adf/ and add your own credentials
3. Run dbt build

## Scheduling
ADF trigger daily 02:00 IST, dbt job daily 03:00 IST

## Author
<your name> | <LinkedIn>
