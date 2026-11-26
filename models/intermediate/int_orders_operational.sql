select
    om.orders_id,
    om.date_date,
    ROUND(om.margin + s.shipping_fee - (s.logcost + s.ship_cost), 2) AS operational_margin,
    om.quantity,
    om.revenue,
    om.purchase_cost,
    om.margin,
    s.shipping_fee,
    s.logcost,
    s.ship_cost
FROM {{ref("int_orders_margin")}} AS om
LEFT JOIN {{ref("stg_raw__ship")}} AS s
USING (orders_id)