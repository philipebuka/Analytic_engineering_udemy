with source  as (
    select * from {{ source('source_data','olist_products_dataset') }}
)

select * from source