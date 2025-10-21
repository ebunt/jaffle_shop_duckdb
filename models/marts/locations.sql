{{ config(
    materialized='table',
    table_type='iceberg',
    format='parquet',
    table_properties={
     'optimize_rewrite_delete_file_threshold': '2'
     }
) }}

with locations as (
    select * from {{ ref('stg_locations') }}
)

select * from locations
