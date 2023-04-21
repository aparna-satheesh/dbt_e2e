select * 
from {{ source('dgb', 'orderitem') }} 