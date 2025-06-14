-- Identify the highest-priced pizza

SELECT 
    p.pizza_id, pt.pizza_name, p.price
FROM
    pizzas AS p
        JOIN
    pizza_types AS pt ON p.pizza_type = pt.pizza_type_id
WHERE
    p.price = (SELECT 
            MAX(price)
        FROM
            pizzas);			