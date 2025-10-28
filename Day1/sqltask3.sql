SELECT TOP 10
  pr.id,
  pr.name,
  SUM(oi.quantity) AS qty_sold
FROM dbo.orders        AS o
JOIN dbo.payments      AS pay ON pay.order_id = o.id AND pay.status = N'paid'
JOIN dbo.order_items   AS oi  ON oi.order_id  = o.id
JOIN dbo.products      AS pr  ON pr.id        = oi.product_id
WHERE o.created_at >= DATEADD(day, -30, CAST(GETDATE() AS date))
GROUP BY pr.id, pr.name
ORDER BY qty_sold DESC;
