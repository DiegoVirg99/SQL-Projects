SELECT 
    DATEPART(HOUR, time) AS hour,
    COUNT(order_id) AS total_orders
FROM 
    ORDERS
GROUP BY 
    DATEPART(HOUR, time)
ORDER BY 
    total_orders DESC;
