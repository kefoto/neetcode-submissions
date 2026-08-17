-- Write your query below
SELECT c.customer_id, c.customer_name 
FROM customers c
JOIN orders o
on c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING SUM(CASE when product_name = 'A' then 1 else 0 end) > 0 
    AND SUM(CASE when product_name = 'B' then 1 else 0 end) > 0
    AND SUM(CASE when product_name = 'C' then 1 else 0 end) = 0
ORDER BY c.customer_name
