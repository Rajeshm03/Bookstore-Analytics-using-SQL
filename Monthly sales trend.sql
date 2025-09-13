SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity * b.price) AS total_revenue
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
