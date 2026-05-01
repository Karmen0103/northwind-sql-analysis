SELECT 
    c.company_name,
    COUNT(o.order_id) AS order_count,
    STRING_AGG(CAST(o.order_id AS VARCHAR(10)), ', ') AS order_ids
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE c.country = 'USA'
GROUP BY c.company_name
HAVING COUNT(o.order_id) < 5
ORDER BY order_count ASC, c.company_name ASC;