
SELECT
    c.cust_name AS customer,
    COUNT(p.p_name) AS product_count,
    SUM(oi.quantity) AS total_quantity,
    SUM(p.price * oi.quantity) AS total_price
FROM ord_items AS oi
JOIN orders AS o
ON oi.ord_id = o.ord_id
JOIN products AS p
ON oi.p_id = p.p_id
JOIN customers AS c
ON c.cust_id = o.cust_id
GROUP BY c.cust_name
HAVING COUNT(p.p_name) > 1
AND SUM(p.price * oi.quantity) > 500;


------------------------------------------------------
