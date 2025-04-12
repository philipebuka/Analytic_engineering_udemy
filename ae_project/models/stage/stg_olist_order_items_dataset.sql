with source  as (
    select * from {{ source('source_data','olist_order_items_dataset') }}
)

select * from source