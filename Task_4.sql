CREATE DATABASE OrderManagementDB2;
USE OrderManagementDB;

INSERT INTO Orders VALUES
(103,1,'2026-08-18',1200.00),
(104,1,'2026-08-19',1800.00),
(105,1,'2026-08-20',2700.00);

INSERT INTO Order_Details VALUES
(3,103,203,1,1200.00,1200.00),
(4,104,204,2,900.00,1800.00),
(5,104,207,1,300.00,300.00),
(6,105,205,2,1100.00,2200.00),
(7,105,206,1,500.00,500.00);

UPDATE Orders
SET total_amount = 1800.00
WHERE order_id = 101;

UPDATE Order_Details
SET quantity = 3,
    subtotal = 1500.00
WHERE order_detail_id = 1;

SELECT o.order_id,
       o.customer_id,
       o.order_date,
       od.product_id,
       od.quantity,
       od.subtotal
FROM Orders o
JOIN Order_Details od
ON o.order_id = od.order_id
WHERE o.customer_id = 1;
