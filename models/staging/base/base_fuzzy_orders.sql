select * from {{ source('restaurants', 'FUZZY_ORDERS') }}