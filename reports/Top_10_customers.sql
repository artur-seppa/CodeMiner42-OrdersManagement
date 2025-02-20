select c.id, c.first_name, c.last_name, COUNT(o.id) as qtd
from customers c
inner join orders o on o.customer_id = c.id
group by c.id
order by qtd desc
limit 10