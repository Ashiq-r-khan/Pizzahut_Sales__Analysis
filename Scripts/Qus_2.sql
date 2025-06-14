-- Calculate the total revenue generated from pizza sales 

SELECT 
    round(SUM(od.quantity * p.price),2) AS total_revenue
FROM 
    order_details AS od
LEFT JOIN 
    pizzas p ON od.pizza_id = p.pizza_id;