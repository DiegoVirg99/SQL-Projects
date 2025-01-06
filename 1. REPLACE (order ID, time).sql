
UPDATE ORDERS_DIRTY
SET time = REPLACE(time, '.', ':')
SET order_id = REPLACE(order_id, 'AA', '')
SET order_id = REPLACE(order_id, '_', '')
;

