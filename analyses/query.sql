{% set payment_methods_query %} 
select distinct payment_method from {{ source('restaurants', 'ORDERS') }}
{% endset %}

{% if execute %}
{% set payment_methods = run_query(payment_methods_query).columns[0].values() %}
{% endif %}

select
    name,
    {% for payment_method in payment_methods %}
    sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount 
    {{ "," if not loop.last }}
    {% endfor %}
from {{ ref("stg_restaurants__turnover") }}
group by name

