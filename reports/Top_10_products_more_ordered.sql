SELECT p.id, p."name", SUM(op.quantity) as QTD
FROM products p
inner join order_products op on op.product_id = p.id
group by p.id
order by QTD desc
limit 10