SELECT o.id, SUM(op.quantity * p.price_cents) AS total_price
FROM "order" o
JOIN order_products op ON o.id = op.order_id
JOIN products p ON op.product_id = p.id
GROUP BY o.id
ORDER BY total_price DESC
LIMIT 10;