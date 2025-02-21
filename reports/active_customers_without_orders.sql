SELECT id, first_name, last_name, active
FROM customers c
WHERE active = true
AND NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.id
);