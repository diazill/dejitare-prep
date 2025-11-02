select c.id, c.name, COUNT(DISTINCT o.id)
from orders as o
left join customers as c on o.customer_id = c.id
Inner Join payments as p on p.order_id = o.id AND p.status = 'paid'

where o.created_at >= DATEADD(DAY, -90,GETDATE())

GROUP BY c.name, c.id

order by c.name asc

