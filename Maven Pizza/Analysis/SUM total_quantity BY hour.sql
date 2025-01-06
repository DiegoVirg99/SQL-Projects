SELECT 
	DATEPART(HOUR, time) as hour,
	SUM(quantity) AS total_quantity
	FROM ORDERS as o
	JOIN ORDER_DETAILS as od
	ON o.order_id = od.order_id
GROUP BY
	DATEPART(HOUR, time)
ORDER BY 
    total_quantity DESC
;