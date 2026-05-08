select *
from {{ ref('seed_stg_jaffle_shop__orders') }}
