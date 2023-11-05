SELECT p.name AS product_name, oi.quantity, (oi.quantity * oi.unit_price) AS total_amount
FROM Products p
LEFT JOIN Order_Items oi
ON p.product_id = oi.product_id
ORDER BY oi.order_id ASC;