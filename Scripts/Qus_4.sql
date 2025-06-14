-- Identify the most common pizza size ordered

SELECT 
    p.size, COUNT(od.order_details_id)
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY COUNT(od.order_details_id) DESC
LIMIT 1;	
				