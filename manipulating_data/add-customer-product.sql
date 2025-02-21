BEGIN;

SELECT setval('seq_customers', (SELECT MAX(id) FROM customers));
SELECT setval('seq_products', (SELECT MAX(id) FROM products));

INSERT INTO customers (id, first_name, last_name, active)
VALUES (nextval('seq_customers'), 'Artur', 'Seppa Reiman', TRUE);

INSERT INTO products (id, name, description, price_cents)
VALUES (nextval('seq_products'), 'PS4', 'video game', 3900);

COMMIT;