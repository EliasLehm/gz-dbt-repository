SELECT
date_date
,orders_id
,COUNT(orders_id) as nb_transaction
,SUM(revenue) as revenue 
,AVG(revenue) as average_basket
,SUM(quantity*purchse_price) as purchase_cost
,SUM (quantity) as Total_products
FROM {{ ref('int_sales_margin') }}
GROUP BY date_date, orders_id