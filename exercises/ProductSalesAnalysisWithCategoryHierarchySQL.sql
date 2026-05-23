-- Write a SQL query below --
SELECT
P.name AS product_name,
c.name AS category_name,
COALESCE(SUM(oi.quantity),0) AS total_sold
FROM products P
LEFT JOIN categories c
ON p.category_Id = c.Id
LEFT JOIN order_items oi
ON p.id = oi.product_id
GROUP BY p.name, c.name
ORDER BY total_sold DESC,
product_name ASC;