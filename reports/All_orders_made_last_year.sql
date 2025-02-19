SELECT o.id, c.first_name, c.last_name, o.ordered_at
FROM orders o
inner join customers c on c.id = o.id
WHERE ordered_at >= DATE_TRUNC('year', CURRENT_DATE - INTERVAL '1 year') 
AND ordered_at < DATE_TRUNC('year', CURRENT_DATE)