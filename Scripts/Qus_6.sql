-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pt.category, SUM(od.quantity) AS Quantity
FROM
    order_details AS od
        JOIN
    pizzas AS p ON p.pizza_id = od.pizza_id
        JOIN
    pizza_types AS pt ON p.pizza_type = pt.pizza_type_id
GROUP BY pt.category
ORDER BY SUM(od.quantity) DESC
LIMIT 5;		