{{
    config(
        materialized = 'table',
    )
}}

with hours as (

    {{
        dbt.date_spine(
            'hour',
            "to_date('01/01/1990','mm/dd/yyyy')",
            "to_date('01/01/2027','mm/dd/yyyy')"
        )
    }}

),

final as (
    select cast(date_hour as timestamp) as date_hour
    from hours
)

select * from final