{{ config(
    materialized='table',
    table_type='iceberg',
    format='parquet',
    table_properties={
     'optimize_rewrite_delete_file_threshold': '2'
     }
) }}

with supplies as (
    select * from {{ ref('stg_supplies') }}
)

select * from supplies
