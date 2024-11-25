SELECT
    staff_id, 
    first_name,
    last_name,
    email,
    phone,
    active,
    store_id,
    CASE WHEN manager_id = 'NULL' THEN null ELSE manager_id END AS manager_id
FROM {{ source('localbike_dataset', 'staff') }}