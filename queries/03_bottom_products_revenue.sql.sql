SELECT 
    p.product_name,
    ROUND(SUM(
        od.quantity * od.unit_price * (1 - od.discount)
    ), 2) AS revenue
FROM order_details od
INNER JOIN products p 
    ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY revenue ASC
LIMIT 10;