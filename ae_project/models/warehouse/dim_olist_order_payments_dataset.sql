select
order_id,
payment_sequential,
payment_type,
payment_installments
from {{ ref(stg_olist_order_payments_dataset) }}
