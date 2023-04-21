select
    customer_id,
    concat(first_name, " ", last_name) as fullname,
    md5(email) as hashed_email,
    phone,
    city,
    state,
    zip,
    source_name
from {{ ref('add_source_to_customer') }}
