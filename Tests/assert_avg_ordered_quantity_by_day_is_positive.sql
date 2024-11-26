SELECT
    stock_id,
    avg_ordered_quantity_by_day
from {{ ref('mart_operations__stock_coverage') }}
WHERE avg_ordered_quantity_by_day < 0