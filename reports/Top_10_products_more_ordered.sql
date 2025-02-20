SELECT p.id, p."name", SUM(op.quantity) as qtd
FROM products p
inner join order_products op on op.product_id = p.id
group by p.id
order by qtd desc
limit 10