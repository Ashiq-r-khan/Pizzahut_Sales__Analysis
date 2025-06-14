-- Join relevant tables to find the category-wise distribution of pizzas

SELECT 
    pt.category, SUM(od.quantity)
FROM
    order_details AS od
        JOIN
    pizzas AS p ON p.pizza_id = od.pizza_id
        JOIN
    pizza_types AS pt ON pt.pizza_type_id = p.pizza_type
GROUP BY (pt.category)