with source as (
select
customer_id,
customer_unique_id,
customer_zip_code_prefix,
customer_city,
customer_state
from {{ ref('stg_olist_customers_dataset') }}
)
select * from source