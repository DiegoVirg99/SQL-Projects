SELECT 
	DATENAME(weekday, date) AS week_day,
	DATEPART(HOUR, time) AS hour,
	COUNT(order_id) AS total_orders
	FROM ORDERS
GROUP BY
	DATENAME(weekday, date), DATEPART(HOUR, time)
ORDER BY 
    total_orders DESC
;
