SELECT 
    date,
    COUNT(order_id) AS total_orders
FROM 
    ORDERS
GROUP BY 
    date
ORDER BY 
    total_orders DESC;
