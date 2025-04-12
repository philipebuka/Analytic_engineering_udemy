with source  as (
    select * from {{ source('source_data','olist_orders_dataset') }}
)

select * from source