select
    items.product_id,
    extract(year from orders.order_date) as year,
    sum(items.total_amount) as product_revenue
from {{ ref('stg_order') }} orders
inner join {{ ref('stg_orderitem') }} items on orders.order_id = items.order_id
group by items.product_id, year
order by items.product_id, year
