SELECT 
	p.size,
	SUM(od.quantity) AS Total_quantity
FROM 
    ORDER_DETAILS as od
	JOIN PIZZAS as p
	ON od.pizza_id=p.pizza_id

GROUP BY size
ORDER BY Total_quantity DESC;



