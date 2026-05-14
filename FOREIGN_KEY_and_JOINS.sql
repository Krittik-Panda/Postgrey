CREATE TABLE customer_table(
	cust_id SERIAL PRIMARY KEY,
	cust_name VARCHAR(100) NOT NULL,
	cust_mob VARCHAR(10) CHECK (LENGTH(cust_mob)=10)

);

CREATE TABLE order_table(
	order_id SERIAL PRIMARY KEY,
	order_name VARCHAR(100) NOT NULL DEFAULT 'Unknown',
	order_date DATE NOT NULL DEFAULT CURRENT_DATE,
	price NUMERIC NOT NULL,
	cust_id INTEGER NOT NULL,
	FOREIGN KEY (cust_id) REFERENCES customer_table (cust_id)

);

---------------------- INSERT INTO customer_table ----------------------

INSERT INTO customer_table (cust_name, cust_mob)
VALUES
('Amit Sharma','9876543210'),
('Priya Das','9123456780'),
('Rahul Roy','9988776655'),
('Sneha Paul','9090909090'),
('Arjun Singh','9345678901'),
('Neha Gupta','9012345678'),
('Rakesh Kumar','8887776665'),
('Pooja Sen','7894561230'),
('Vikram Patel','9988112233'),
('Ananya Bose','8877665544'),
('Sourav Dey','7766554433'),
('Meera Nair','6655443322'),
('Kunal Verma','9543216780'),
('Ritu Jain','9234567810'),
('Aditya Rao','8123456789'),
('Tina Ghosh','7012345678'),
('Manish Yadav','9988991122'),
('Ishita Pal','8899776655'),
('Deepak Mishra','7788996655'),
('Rohan Chakraborty','6677889900');



---------------------- INSERT INTO order_table ----------------------

INSERT INTO order_table (order_name, order_date, price, cust_id)
VALUES
('Laptop','2026-05-01',55000,1),
('Mobile Phone','2026-05-02',22000,2),
('Keyboard','2026-05-03',1500,1),
('Laptop','2026-05-04',54000,3),
('Mouse','2026-05-05',800,2),
('Keyboard','2026-05-06',1600,4),
('Monitor','2026-05-07',12000,5),
('Mobile Phone','2026-05-08',23000,1),
('Headphones','2026-05-09',2500,3),
('Mouse','2026-05-10',900,2),
('Laptop','2026-05-11',56000,6),
('Monitor','2026-05-12',12500,5),
('Headphones','2026-05-13',2700,1);

------------------------------------------------------
DELETE FROM order_table
WHERE order_id BETWEEN 14 AND 20

------------------------------------------------------



SELECT * FROM customer_table;
SELECT * FROM order_table;

------------------------------------------------------------


--------------------JOINS-----------------------------------

SELECT * FROM customer_table CROSS JOIN order_table; --show all possible combinations
-------------------------------------------------------------------
SELECT order_name FROM customer_table CROSS JOIN order_table
GROUP BY order_name; --show all order name 

-------------------------------------------------------------------
SELECT DISTINCT order_name FROM customer_table CROSS JOIN order_table;--show all order name

---------------------------INNER JOIN----------------------------------------

SELECT * FROM customer_table AS c
INNER JOIN order_table AS o
ON c.cust_id = o.cust_id;

-------------------------INNER JOIN + GROUP BY**------------------------------------------


SELECT c.cust_name, COUNT(o.order_id), SUM(o.price) as total_purches FROM customer_table AS c
INNER JOIN order_table AS o
ON c.cust_id = o.cust_id
GROUP BY cust_name;


-----------------------------------LEFT JION---------------------------------------------


SELECT * FROM customer_table AS c
LEFT JOIN order_table AS o
ON c.cust_id = o.cust_id
ORDER BY c.cust_id; -- for better reading

----------------------------------RIGHT JOIN-------------------------------------------

SELECT * FROM customer_table AS c
RIGHT JOIN order_table AS o
ON c.cust_id = o.cust_id
;

-----------------------------------------------------------------------------------------




