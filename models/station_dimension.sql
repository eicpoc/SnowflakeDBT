{{config(materialized = 'table')}}

with bike as (
    select distinct
        start_station_id as start_station_id,
        start_station_name as start_station_name,
        start_lat as start_station_lat,
        start_lng as start_station_lno
    from {{ source ('demo', 'bike') }}
)

select
    *
from
    bike