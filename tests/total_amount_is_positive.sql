-- The total amount should always be >= 0

select orders.order_id, sum(items.total_amount) as total_amount
from {{ ref("stg_order") }} orders
inner join {{ ref("stg_orderitem") }} items on orders.order_id = items.order_id
group by 1
having (total_amount <0)