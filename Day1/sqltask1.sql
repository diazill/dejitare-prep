SELECT 
    cus.id AS customer_id, 
    cus.name AS customer_name,
    COUNT(p.id) AS total_paid_orders,
    AVG(p.amount) AS avg_paid_amount
FROM customers AS cus
LEFT JOIN orders AS o ON o.customer_id = cus.id
LEFT JOIN payments AS p ON p.order_id = o.id AND p.status = 'paid'
GROUP BY cus.id, cus.name
ORDER BY avg_paid_amount DESC;