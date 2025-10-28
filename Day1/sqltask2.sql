select cus.id, cus.name, COUNT(*) as jumlah, SUM(CASE WHEN p.status = 'paid' THEN 1 ELSE 0 END ) paidorder, 100.0 * SUM(CASE WHEN p.status = 'paid' THEN 1 ELSE 0 END ) / COUNT(*)  as C

from customers as cus
left join orders as o on o.customer_id = cus.id
left join payments as p on p.order_id = o.id

where p.status = 'paid'

group by cus.name, cus.id