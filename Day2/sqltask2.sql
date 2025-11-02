select 
    CAST(o.created_at AS DATE) as tanggal,
    SUM(p.amount) as total_revenue
from orders as o
inner join payments as p 
    on p.order_id = o.id 
    and p.status = 'paid'
where o.created_at >= DATEADD(DAY, -30, GETDATE())
group by CAST(o.created_at AS DATE)
order by tanggal desc;