SELECT 
    YEAR(date) AS year,
    MONTH(date) AS month,
    COUNT(order_id) AS total_orders
FROM 
    ORDERS
GROUP BY 
    YEAR(date), MONTH(date)
ORDER BY 
    total_orders DESC;
