select c.name,SUM(p.amount) as total
from orders as o
left join customers as c on o.customer_id = c.id
Inner Join payments as p on p.order_id = o.id AND p.status = 'paid'

where o.created_at >= DATEADD(MONTH, -3,GETDATE())

GROUP BY c.name

HAVING SUM(p.amount) >= 500

order by SUM(p.amount) desc
