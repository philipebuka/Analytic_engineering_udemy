with source  as (
    select * from {{ source('source_data','olist_geolocation_dataset') }}
)

select * from source