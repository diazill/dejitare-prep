select cus.id, cus.name, COUNT(*) as jumlah, AVG(p.amount) as avg

from customers as cus
left join orders as o on o.customer_id = cus.id
left join payments as p on p.order_id = o.id

where p.status = 'paid'

group by cus.name, cus.id

order by AVG(p.amount) desc



