SELECT
    stock_id,
    stock_quantity
from {{ ref('mart_operations__stock_coverage') }}
WHERE stock_quantity < 0