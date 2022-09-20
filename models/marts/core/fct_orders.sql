select O.order_id, O.customer_id, P.AMOUNT
from 
{{ ref('stg_orders') }} O
INNER JOIN {{ ref('stg_payments') }} P ON P.order_id=O.order_id
