SELECT
*
FROM {{ ref('stg_raw__product') }}
JOIN {{ ref('stg_raw__sales') }}
ON stg_raw__product.products_id = stg_raw__sales.pdt_id

SELECT
*
FROM {{ ref('int_sales_margin') }}