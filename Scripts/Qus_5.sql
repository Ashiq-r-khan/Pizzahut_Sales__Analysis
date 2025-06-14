-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pt.pizza_name, p.pizza_type, SUM(od.quantity) AS Quantity
FROM
    order_details AS od
        JOIN
    pizzas AS p ON p.pizza_id = od.pizza_id
        JOIN
    pizza_types AS pt ON p.pizza_type = pt.pizza_type_id
GROUP BY p.pizza_type
ORDER BY SUM(od.quantity) DESC
LIMIT 5;		