select
    p.category,
    sum(oi.quantity) as units_sold,
    sum(oi.line_total) as revenue,
    sum(oi.line_total - oi.quantity * p.cost_price) as gross_profit
from {{ ref('stg_order_items') }} oi
join {{ ref('stg_products') }} p on p.product_id = oi.product_id
join {{ ref('stg_orders') }} o on o.order_id = oi.order_id
where o.order_status = 'Delivered'
group by p.category
