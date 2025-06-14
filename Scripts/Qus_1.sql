-- Retrieve the total number of orders placed

SELECT
	COUNT(o.order_id) AS total_orders 
FROM orders as o;

    
		
				