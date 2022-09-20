with payments as (

    select
        ORDERID AS ORDER_ID,
        PAYMENTMETHOD, 
        STATUS,
        amount / 100 as amount,
        CREATED,
        _BATCHED_AT
      from DBT_RAW.STRIPE.PAYMENT

)

select * from payments


