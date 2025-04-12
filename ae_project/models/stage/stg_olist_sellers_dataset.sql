with source  as (
    select * from {{ source('source_data','olist_sellers_dataset') }}
)

select * from source