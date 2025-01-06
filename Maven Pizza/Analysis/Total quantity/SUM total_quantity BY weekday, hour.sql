SELECT 
	DATENAME(weekday, date) AS weekday,
	DATEPART(HOUR, time) AS hour,
	SUM(quantity) AS total_quantity
	FROM ORDERS as o
	JOIN ORDER_DETAILS as od
	ON o.order_id = od.order_id
GROUP BY
	DATENAME(weekday, date),
	DATEPART(HOUR, time)
ORDER BY 
    total_quantity DESC
;
