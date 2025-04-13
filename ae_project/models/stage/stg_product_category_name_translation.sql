with source  as (
    select * from {{ source('source_data','product_category_name_translation') }}
)

select * from source