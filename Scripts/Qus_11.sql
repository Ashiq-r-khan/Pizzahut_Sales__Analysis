-- Calculate the percentage contribution of each pizza type to total revenue

-- Step 1: Aggregate total revenue by pizza category

WITH revenue_data AS (
    SELECT 
        pt.category,
        SUM(od.quantity * p.price) AS category_revenue
    FROM pizza_types pt
    JOIN pizzas p ON pt.pizza_type_id = p.pizza_type
    JOIN order_details od ON od.pizza_id = p.pizza_id
    GROUP BY pt.category
),

-- Step 2: Calculate overall total revenue across all pizza categories

total_revenue AS (
    SELECT SUM(category_revenue) AS total FROM revenue_data
)

SELECT 
    rd.category,
    CONCAT(ROUND((rd.category_revenue / tr.total) * 100, 2), '%') AS revenue_percentage
FROM revenue_data rd
JOIN total_revenue tr
ORDER BY CAST(ROUND((rd.category_revenue / tr.total) * 100, 2) AS DECIMAL) DESC;

