SELECT 
	p.size,
	pt.name,
	SUM(od.quantity) AS Total_quantity
FROM 
    ORDER_DETAILS as od
	JOIN PIZZAS as p
	ON od.pizza_id=p.pizza_id
	JOIN PIZZA_TYPES as pt
	ON p.pizza_type_id=pt.pizza_id

GROUP BY size, name
ORDER BY Total_quantity DESC;

