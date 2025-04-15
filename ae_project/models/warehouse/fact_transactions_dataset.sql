with source as (
    select
    oi.order_id,
    oi.order_item_id,
    oi.product_id,
    oi.seller_id,
    cu.customer_id,
    oi.shipping_limit_date,
    oi.price,
    oi.freight_value,
    op.payment_value,
    o.order_status,
    o.order_purchase_timestamp,
    o.order_approved_at,
    o.order_delivered_carrier_date,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date
    from {{ ref(stg_olist_order_items_dataset) }} as oi
    left join {{ ref(stg_olist_order_payments_dataset) }} as op
    on op.order_id = oi.order_id
    left join {{ ref(stg_olist_orders_dataset) }} as o
    on op.order_id = o.order_id
    left join {{ ref(source.olist_customers_dataset) }} cu
    on o.customer_id = cu.customer_id
    )
    
select *
from source;

