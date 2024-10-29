
SELECT
date_date
,orders_id
,products_id
,revenue
,quantity
,CAST(purchse_price as INT64) as purchse_price
FROM {{ ref('int_sales_margin') }}