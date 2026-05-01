SELECT p.product_name AS product_name,
    s.company_name AS supplier_name
FROM products p
INNER JOIN suppliers s 
    ON p.supplier_id=s.supplier_id
ORDER BY p.product_name ASC;