-- 1
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price FLOAT,
    quantity INTEGER    
);
-- 2
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES(100, 'Steak', 18.99, 1),
(100, 'Potatoes', 2.99, 2),
(100, 'Asparagus', .49, 8),
(101, 'Burger', 3.99, 2),
(101, 'Fries', 0.10, 20);
-- 3
SELECT * FROM orders;
-- 4
SELECT COUNT (*) FROM orders;
-- 5
SELECT SUM(product_price*quantity) FROM orders
-- 6
SELECT SUM(product_price*quantity)
FROM orders
WHERE person_id = 100;
