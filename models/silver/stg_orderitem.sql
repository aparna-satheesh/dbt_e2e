select * 
from {{ source('dgb', 'order_item') }}