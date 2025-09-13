SELECT 
    o1.book_id AS book_1,
    o2.book_id AS book_2,
    COUNT(*) AS times_bought_together
FROM Orders o1
JOIN Orders o2 
  ON o1.customer_id = o2.customer_id AND o1.order_id != o2.order_id
WHERE o1.book_id < o2.book_id
GROUP BY book_1, book_2
ORDER BY times_bought_together DESC
LIMIT 10;