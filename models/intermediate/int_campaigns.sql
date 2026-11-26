select
    *
From {{ref("stg_raw__adwords")}}

UNION ALL

select
    *
From {{ref("stg_raw__bing")}}

UNION ALL

select
    *
From {{ref("stg_raw__criteo")}}

UNION ALL

select
    *
From {{ref("stg_raw__facebook")}}

