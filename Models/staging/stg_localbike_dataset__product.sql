SELECT 
    product_id, 
    product_name,
    brand_id,
    category_id,
    model_year,
    list_price
FROM {{ source('localbike_dataset', 'product') }}