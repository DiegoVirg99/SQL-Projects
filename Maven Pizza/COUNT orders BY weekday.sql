SELECT 
	DATENAME(weekday, date) AS week_day,
	COUNT(order_id) AS total_orders
	FROM ORDERS
GROUP BY
	DATENAME(weekday, date)
ORDER BY 
    total_orders DESC
;
