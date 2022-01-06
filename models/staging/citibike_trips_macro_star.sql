with citibike_trips_macro_star as (
    select
        {{ dbt_utils.star(ref('citibike_trips_2018')) }}
    from {{ ref('citibike_trips_2018') }}
)
select * from citibike_trips_macro_star