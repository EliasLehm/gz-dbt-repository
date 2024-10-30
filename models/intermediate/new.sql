SELECT
*
FROM {{ ref('finance_days') }}
JOIN {{ ref('stg_raw__ship') }}
USING (orders_id)