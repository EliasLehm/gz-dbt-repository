SELECT
date_date
,orders_id
,pdt_id
,products_id
,revenue
,CAST(purchse_price as INT64) as purchse_price
,quantity
FROM {{ ref('int_sales_margin') }}