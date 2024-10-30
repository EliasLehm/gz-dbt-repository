SELECT
date_date
,SUM(nb_transaction) as nb_transaction
,SUM (revenue) as revenue
,AVG(average_basket) average_basket
,SUM(revenue-purchase_cost) as operational_margin
,SUM(logcost) as logcost
,SUM (shipping_fee) as shipping_fee
,SUM(Total_products) as Total_products
FROM {{ ref('new') }}
GROUP BY date_date