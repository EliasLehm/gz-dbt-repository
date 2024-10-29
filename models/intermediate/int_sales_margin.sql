SELECT
*
FROM {{ ref('stg_raw__product') }}
JOIN {{ ref('stg_raw__sales') }}
ON stg_raw__sales.pdt_id = stg_raw__product.products_id




