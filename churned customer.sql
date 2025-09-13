SELECT 
    c.customer_id,
    c.name,
    MAX(o.order_date) AS last_purchase,
    ROUND(DATEDIFF('2025-07-01', MAX(o.order_date))) AS days_since_last_purchase
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING DATEDIFF('2025-07-01', MAX(o.order_date)) > 365;
