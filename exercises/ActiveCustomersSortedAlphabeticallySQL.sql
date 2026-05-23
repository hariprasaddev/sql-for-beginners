-- Write a SQL query below --
SELECT
first_name,
last_name
FROM customers
WHERE is_active = true
ORDER BY first_name ASC;