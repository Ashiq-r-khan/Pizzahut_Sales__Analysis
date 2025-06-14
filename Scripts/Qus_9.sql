-- Group the orders by date and 
-- calculate the average number of pizzas ordered per day

-- CTE to aggregate the total quantity of pizzas ordered for each order date

WITH ordered_quantity AS (
    SELECT 
        o.order_date, 
        SUM(od.quantity) AS quantity
    FROM orders AS o
    JOIN order_details AS od ON o.order_id = od.order_id
    GROUP BY o.order_date
)

SELECT ROUND(AVG(quantity), 0)
FROM ordered_quantity;
