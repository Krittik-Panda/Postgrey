------------create table customers---------------

CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);


------------create table products----------------

CREATE TABLE products(
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL
);



------------create table orders------------------


CREATE TABLE orders(
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    cust_id INT NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);



------------create table order_items --------------



CREATE TABLE ord_items(
    items_id SERIAL PRIMARY KEY,
    ord_id INT NOT NULL,
    p_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY (p_id) REFERENCES products(p_id)
);




-------------------Insert-------------------------

INSERT INTO customers (cust_name)
VALUES
    ('Raju'),
    ('Sham'),
    ('Paul'),
    ('Alex');


INSERT INTO orders (ord_date, cust_id)
VALUES
    ('2024-01-01', 1), -- Raju first order
    ('2024-02-01', 2), -- Sham first order
    ('2024-03-01', 3), -- Paul first order
    ('2024-04-04', 2); -- Sham second order


INSERT INTO products (p_name, price)
VALUES
    ('Laptop', 55000.00),
    ('Mouse', 500.00),
    ('Keyboard', 800.00),
    ('Cable', 250.00);


INSERT INTO ord_items (ord_id, p_id, quantity)
VALUES
    (1, 1, 1), -- Raju ordered 1 Laptop
    (1, 4, 2), -- Raju ordered 2 Cables
    (2, 1, 1), -- Sham ordered 1 Laptop
    (3, 2, 1), -- Paul ordered 1 Mouse
    (3, 4, 5), -- Paul ordered 5 Cables
    (4, 3, 1); -- Sham ordered 1 Keyboard


-------------------JOINS -------------------------

SELECT * FROM ord_items;
-----------------------------------------------------------
SELECT
c.cust_name as customer,
o.ord_date as order_date,
p.p_name as product,
p.price as price,
oi.quantity as quantity,
(oi.quantity * p.price) as total_price
FROM ord_items as oi
JOIN orders as o ON 
oi.ord_id = o.ord_id
JOIN products as p ON
oi.p_id = p.p_id
JOIN customers as c ON
c.cust_id = o.cust_id ;

--------use group by--------------------------------------

SELECT
c.cust_name as customer,
COUNT(p.p_name) as product_count,
COUNT(oi.quantity) as total_quantity,
SUM(p.price) as total_price
FROM ord_items as oi
JOIN orders as o ON 
oi.ord_id = o.ord_id
JOIN products as p ON
oi.p_id = p.p_id
JOIN customers as c ON
c.cust_id = o.cust_id 
GROUP BY c.cust_name;




























	

	








