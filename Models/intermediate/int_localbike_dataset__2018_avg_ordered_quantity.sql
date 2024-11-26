SELECT
    store_id,
    product_id,
    SUM(item.quantity) AS ordered_quantity,
    ROUND(SUM(item.quantity) / 365, 2) AS avg_ordered_quantity_by_day
FROM {{ ref('stg_localbike_dataset__order_item') }} AS item
LEFT JOIN {{ ref('stg_localbike_dataset__order') }} AS orders
  ON item.order_id = orders.order_id 
WHERE order_date BETWEEN "2018-01-01" AND "2018-12-31" 
GROUP BY store_id, product_id