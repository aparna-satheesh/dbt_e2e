{{
  config(
    materialized='table',
    schema='default',
    external=True,
    location='dbfs:/tmp/clv/'
  )
}}

SELECT 1 as id, 'Aparna' as name;