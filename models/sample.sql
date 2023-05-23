with calculated_total_amount as (
  {{ calculate_total_amount(total_amount) }}
)

select * from calculate_total_amount