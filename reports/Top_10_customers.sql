select c.id, c.first_name, c.last_name, SUM(o.id) as qtd
from customers c
inner join "order" o on o.customer_id = c.id
group by c.id
order by qtd desc
limit 10