SELECT s.seller_name
FROM seller s
LEFT JOIN orders o
on o.seller_id = s.seller_id
GROUP BY s.seller_id
HAVING SUM(CASE WHEN o.sale_date >= '2020-01-01' AND o.sale_date <= '2020-12-31' THEN 1 ELSE 0 END) = 0
ORDER BY s.seller_name ASC