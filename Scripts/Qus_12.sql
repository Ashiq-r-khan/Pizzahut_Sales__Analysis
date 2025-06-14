-- Analyze the cumulative revenue generated over time

-- Step 1: Calculate total revenue generated per day

WITH daily_revenue AS (
    SELECT 
        o.order_date,
        SUM(od.quantity * p.price) AS daily_revenue
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    GROUP BY o.order_date
)

-- Step 2: Select daily revenue and compute cumulative revenue over time

SELECT 
    order_date,
    ROUND(daily_revenue, 2) AS daily_revenue,
    ROUND(SUM(daily_revenue) OVER (ORDER BY order_date), 2) AS cumulative_revenue
FROM daily_revenue
ORDER BY order_date;
