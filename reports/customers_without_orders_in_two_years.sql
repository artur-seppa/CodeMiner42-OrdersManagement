SELECT id, first_name, last_name, active
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.id
    AND o.ordered_at > CURRENT_DATE - INTERVAL '2 years'
);