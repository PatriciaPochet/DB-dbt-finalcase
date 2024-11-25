SELECT
    order_id, 
    item_id, 
    CONCAT(order_id,"_", item_id) AS order_item_id,
    product_id,
    quantity AS quantity,
    list_price AS price,
    discount
from {{ source('localbike_dataset', 'order_item') }}