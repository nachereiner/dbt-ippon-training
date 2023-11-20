select *
from {{ ref("base_restaurants") }} as resto
join {{ ref("base_orders") }} orders on resto.identifier = orders.restaurant_identifier
