SELECT 
	DATENAME(month, date) AS month,
	SUM(quantity) AS total_quantity
	FROM ORDERS as o
	JOIN ORDER_DETAILS as od
	ON o.order_id = od.order_id
GROUP BY
	DATENAME(month, date)
ORDER BY 
    total_quantity DESC
;