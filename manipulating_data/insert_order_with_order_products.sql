BEGIN;

SELECT setval('seq_orders', (SELECT MAX(id) FROM orders));

INSERT INTO orders (id, customer_id, ordered_at)
VALUES (nextval('seq_orders'), 10001, current_timestamp);

INSERT INTO order_products (order_id, product_id, quantity)
VALUES (currval('seq_orders'), 12, 10);

COMMIT; 