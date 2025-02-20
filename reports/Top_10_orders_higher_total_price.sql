SELECT o.id,c.first_name, c.last_name, SUM(op.quantity * p.price_cents) AS total_price
FROM orders o
inner JOIN order_products op ON o.id = op.order_id
inner JOIN products p ON op.product_id = p.id
inner JOIN customers c on c.id = o.customer_id
GROUP BY o.id, c.first_name, c.last_name
ORDER BY total_price DESC
LIMIT 10;