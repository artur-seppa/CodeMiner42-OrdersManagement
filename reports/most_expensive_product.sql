SELECT name, price_cents
FROM products
WHERE price_cents = (SELECT MAX(price_cents) FROM products);