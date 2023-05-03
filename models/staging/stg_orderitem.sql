select * 
from {{ source('raw', 'order_item') }}