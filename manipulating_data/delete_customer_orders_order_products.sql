BEGIN;

DELETE FROM order_products
WHERE order_id IN (
    SELECT id FROM orders WHERE customer_id = 10001
);

DELETE FROM orders
WHERE customer_id = 10001;

DELETE FROM customers
WHERE id = 10001;

COMMIT;