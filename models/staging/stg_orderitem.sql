-- select * 
-- from raw.order_item
select * from 
{{ source('raw', 'orderitem') }}