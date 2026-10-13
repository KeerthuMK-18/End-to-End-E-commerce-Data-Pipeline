select
    order_date,
    count(*) as total_orders,
    count(distinct customer_id) as unique_customers,
    sum(order_total) as gross_revenue
from {{ ref('stg_orders') }}
where order_status = 'Delivered'
group by order_date
