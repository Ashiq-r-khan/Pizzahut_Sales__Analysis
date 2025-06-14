-- Determine the top 3 most ordered pizza types based on revenue

SELECT 
    pt.pizza_name, ROUND(SUM(p.price), 2) AS revenue
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p ON p.pizza_type = pt.pizza_type_id
        JOIN
    order_details AS od ON od.pizza_id = p.pizza_id
GROUP BY (pt.pizza_name)
ORDER BY revenue DESC
LIMIT 3;