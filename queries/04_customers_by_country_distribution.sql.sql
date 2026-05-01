SELECT 
    c.country,
    COUNT(*) AS customer_count
FROM customers c
GROUP BY c.country
HAVING COUNT(*) > 5
ORDER BY customer_count DESC;