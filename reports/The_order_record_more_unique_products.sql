SELECT order_id, COUNT(DISTINCT product_id)
FROM order_products
GROUP BY order_id
ORDER BY COUNT(DISTINCT product_id) desc;