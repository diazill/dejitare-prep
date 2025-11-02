select CAST(o.created_at AS DATE),SUM(p.amount) as total
from orders as o
Inner Join payments as p on p.order_id = o.id AND p.status = 'paid'

where o.created_at >= DATEADD(DAY, -30,GETDATE())

GROUP BY CAST(o.created_at AS DATE)
order by CAST(o.created_at AS DATE) desc