select name, sum(amount) as turnover
from {{ ref("stg_restaurants__turnover") }}
group by name
order by turnover desc
limit {{ var("nb_restaurants_to_show") }}
