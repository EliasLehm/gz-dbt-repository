
select
*
FROM {{ ref('stg_raw__product') }}
JOIN {{ ref('stg_raw__sales') }}
ON stg_raw__product.products_id = stg_raw__sales.pdt_id;

SELECT
date_date
,products_id
,CAST (purchse_price as INT64) as purchse_price
,orders_id
,pdt_id
,revenue
,CAST (Quantity as INT64) as Quantity
FROM {{ ref('int_sales_margin') }}



