SELECT 
	AVG(quantity*price) AS Avg_Order_Price,
	AVG(quantity) AS Avg_Order_Quantity

FROM 
    ORDER_DETAILS as od
	JOIN PIZZAS as p
	ON od.pizza_id=p.pizza_id;



