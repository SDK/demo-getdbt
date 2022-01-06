
{% set usertypes = dbt_utils.get_column_values(table=ref('citibike_trips_2018'), column='usertype') %}
--{# set usertypes = ['asd','foo','bla','bar'] #}

with
{% for usertype in usertypes %}
  table_{{usertype}} as (
    select count(1) as count_{{usertype}} from {{ref('citibike_trips_2018')}} where usertype = '{{usertype}}'
  ){% if not loop.last%} ,{% endif %}
{% endfor %}

select * from {% for usertype in usertypes %}  
    table_{{usertype}}{% if not loop.last%} ,{% endif %}
{% endfor %}