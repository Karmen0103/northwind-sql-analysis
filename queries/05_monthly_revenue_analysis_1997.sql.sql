SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    COUNT(o.order_id) AS order_count,
    ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount)), 2) AS revenue
FROM orders o
INNER JOIN order_details od 
    ON od.order_id = o.order_id
WHERE EXTRACT(YEAR FROM o.order_date) = 1997
GROUP BY year, month
ORDER BY month ASC;