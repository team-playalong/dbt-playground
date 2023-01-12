SELECT * 
from {{
  metrics.calculate(
    metric('rolling_new_listings'),
    grain='week',
    dimensions=['host_id']
  )
}}
where rolling_new_listings > 0