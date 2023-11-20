select distinct identifier, * from {{ source('restaurants', 'ORDERS') }}
