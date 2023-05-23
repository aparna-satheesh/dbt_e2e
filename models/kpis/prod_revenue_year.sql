-- select
--     items.product_id,
--     extract(year from orders.order_date) as year,
--     sum(items.total_amount) as product_revenue
-- from {{ ref('stg_order') }} orders
-- inner join {{ ref('stg_orderitem') }} items on orders.order_id = items.order_id
-- group by items.product_id, year
-- having year=2022
-- order by items.product_id, year

select *
from ({{ total_amount_grouped_by_item() }}) 
where year = 2022
