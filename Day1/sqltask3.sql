select o.customer_id, p.name, sum(oi.quantity)

from orders as o
left join order_items as oi on oi.order_id = o.id
left join products p on p.id = oi.product_id

where DATEDIFF(DAY,o.created_at, GETDATE())  <= 30

group by p.name, o.customer_id, oi.quantity, o.id