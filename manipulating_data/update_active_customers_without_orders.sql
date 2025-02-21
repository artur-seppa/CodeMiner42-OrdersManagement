begin;

UPDATE customers c
SET active = FALSE
WHERE active = TRUE
AND NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.id
      AND o.ordered_at >= '2022-01-01'
);

COMMIT; 