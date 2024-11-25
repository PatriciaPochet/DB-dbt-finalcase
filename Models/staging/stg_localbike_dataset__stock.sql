SELECT
    store_id,
    product_id,
    CONCAT(store_id, "_", product_id) AS stock_id,
    quantity
FROM {{ source('localbike_dataset', 'stock') }}