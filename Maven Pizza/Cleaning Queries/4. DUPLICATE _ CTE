WITH CTE AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY id) AS rn
    FROM ORDERS_DIRTY
)
DELETE FROM ORDERS_DIRTY
WHERE id IN (
    SELECT id
    FROM CTE
    WHERE rn > 1
);
