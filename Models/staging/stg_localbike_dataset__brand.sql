SELECT
    brand_id,
    brand_name
from {{ source('localbike_dataset', 'brand') }}