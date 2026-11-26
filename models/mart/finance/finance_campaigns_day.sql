{{ config(materialized='view') }}

select
date_date AS date,
ROUND(f.operational_margin - c.ads_cost, 2) as ads_margin,
f.average_basket,
f.operational_margin,
c.ads_cost,
c.ads_impression,
c.ads_clicks,
f.quantity,
f.revenue,
f.purchase_cost,
f.margin,
f.shipping_fee,
f.logcost,
f.ship_cost

FROM {{ ref('finance_days') }} as f
LEFT JOIN {{ ref('int_campaigns_day') }} as c
USING (date_date)
