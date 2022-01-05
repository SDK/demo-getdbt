with citibike_trips_2018 AS (
    SELECT * from {{source('citybike','citibike_trips')}}
    WHERE starttime >= '2013-01-01' and
        starttime < '2014-01-01'
)

select * from citibike_trips_2018