select * from {{ ref('stg_customer') }} 
inner join {{ ref('stg_source') }} using (source_id)