SELECT
date_date
,SUM(orders_id) as nb_transaction 
,SUM(revenue) as total_revenue
,SUM(quantity)/SUM(orders_id) as average_basket
,Quantity* purchse_price as purchase_cost
FROM {{ ref('ru') }}