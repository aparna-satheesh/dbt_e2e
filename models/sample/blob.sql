{{
  config(
    materialized='external',
    external_location='dbfs:/tmp/',
    location_type='dbfs',
    file_format='csv',
    partition_by=["id", "name"],
    type='databricks'
  )
}}

SELECT 1 as id, 'Aparna' as name