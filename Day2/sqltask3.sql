select 
    c.id,
    c.name,
    COUNT(DISTINCT o.id) as jumlah_order,
    SUM(p.amount) as total_spent
from orders as o
inner join customers as c on o.customer_id = c.id
inner join payments as p on p.order_id = o.id and p.status = 'paid'
where o.created_at >= DATEADD(day, -90, GETDATE())
group by c.id, c.name
having COUNT(DISTINCT o.id) > 1
order by total_spent desc;
