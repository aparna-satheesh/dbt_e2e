select * 
from {{ source('raw', 'orderitem') }}