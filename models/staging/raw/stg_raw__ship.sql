with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        CAST (ship_cost as INT64) ship_cost 

    from source

)

select * from renamed

