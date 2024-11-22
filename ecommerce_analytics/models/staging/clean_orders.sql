WITH cleaned_orders AS (
    SELECT
        order_id,
        customer_id,
        CAST(order_amount AS DECIMAL(10, 2)) AS order_amount,
        DATE(order_date) AS order_date
    FROM {{ ref('raw_orders') }}
)
SELECT * FROM cleaned_orders
