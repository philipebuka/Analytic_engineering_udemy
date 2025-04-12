with source  as (
    select * from {{ source('source_data','olist_order_reviews_dataset') }}
)

select * from source