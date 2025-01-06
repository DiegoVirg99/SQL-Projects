SELECT 
    p.pizza_type_id as Pizza_ID,
	pt.name as Pizza_Name,
	SUM(quantity) AS Total_quantity
	FROM ORDER_DETAILS as od
	JOIN PIZZAS as p
	ON od.pizza_id = p.pizza_id
	JOIN PIZZA_TYPES as pt
	ON p.pizza_type_id = pt.pizza_id

GROUP BY
	p.pizza_type_id,
	pt.name
ORDER BY 
    total_quantity DESC
;