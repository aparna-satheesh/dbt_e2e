with
    customer_order_counts as (
        select o.customer_id, count(o.order_id) as order_count
        from {{ ref('stg_order') }} as o
        where o.order_date > dateadd(month, -6, getdate())
        group by o.customer_id
        having count(o.order_id) >= 2
    )
select c.customer_id, c.fullname, oc.order_count
from {{ ref('concat_name_md5_email') }} as c
inner join customer_order_counts as oc on c.customer_id = oc.customer_id
order by oc.order_count desc
