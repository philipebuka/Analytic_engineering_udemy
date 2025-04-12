with source  as (
    select * from {{ source('source_data','olist_order_payments_dataset') }}
)

select * from source