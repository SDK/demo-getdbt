with citibike_trips_macro_star as (
    select
        {{ dbt_utils.surrogate_key(['bikeid', 'starttime']) }} as my_surrogate_key,
        {{ dbt_utils.star(ref('citibike_trips_2018')) }}
    from {{ ref('citibike_trips_2018') }}
)
select * from citibike_trips_macro_star