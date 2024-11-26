SELECT
    ag.store_id,
    ag.product_id,
    COALESCE(ag.avg_ordered_quantity_by_day, 0) AS avg_ordered_quantity_by_day,
    COALESCE(stock.quantity, 0) AS stock_quantity,
    store.store_name,
    pdt.product_name,
    pdt.model_year,
    pdt.list_price AS product_price,
    cat.category_name
FROM {{ ref('int_localbike_dataset__2018_avg_ordered_quantity' )}} AS ag
LEFT JOIN {{ ref('stg_localbike_dataset__stock')}} AS stock
 ON ag.store_id = stock.store_id AND ag.product_id = stock.store_id
LEFT JOIN {{ ref('stg_localbike_dataset__store')}} AS store
 ON ag.store_id = store.store_id
LEFT JOIN {{ ref('stg_localbike_dataset__product')}} AS pdt
 ON ag.product_id = pdt.product_id
LEFT JOIN {{ ref('stg_localbike_dataset__category')}} AS cat
 ON pdt.category_id = cat.category_id