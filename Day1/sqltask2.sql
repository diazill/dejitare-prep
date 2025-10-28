SELECT 
    cus.id AS customer_id,
    cus.name AS customer_name,
    COUNT(o.id) AS total_orders,
    SUM(CASE WHEN p.status = 'paid' THEN 1 ELSE 0 END) AS paid_orders,
    CAST(
        100.0 * SUM(CASE WHEN p.status = 'paid' THEN 1 ELSE 0 END) / NULLIF(COUNT(o.id), 0)
        AS DECIMAL(10,2)
    ) AS conversion_rate
FROM customers AS cus
LEFT JOIN orders AS o ON o.customer_id = cus.id
LEFT JOIN payments AS p ON p.order_id = o.id
GROUP BY cus.id, cus.name
ORDER BY conversion_rate DESC;
