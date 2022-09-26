with payments as (

    select
        ORDERID AS ORDER_ID,
        PAYMENTMETHOD, 
        STATUS,
        -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars('amount', 4) }} as amount,
        CREATED,
        _BATCHED_AT
      from DBT_RAW.STRIPE.PAYMENT

)

select * from payments


