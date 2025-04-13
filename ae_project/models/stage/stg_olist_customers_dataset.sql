with source  as (
    select * from {{ source('source_data','olist_customers_dataset') }}
)

select * from source