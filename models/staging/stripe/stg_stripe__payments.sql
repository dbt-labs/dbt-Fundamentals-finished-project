select *
from {{ ref('seed_stg_stripe__payments') }}
