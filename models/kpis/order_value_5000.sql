select orders.order_id, orders.customer_id, sum(items.total_amount) as total_amount
from {{ ref("stg_order") }} orders
inner join {{ ref("stg_orderitem") }} items on orders.order_id = items.order_id
group by orders.order_id, orders.customer_id
having sum(items.total_amount) > 5000
order by orders.order_id
