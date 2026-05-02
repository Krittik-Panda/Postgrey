-- Create Employee table
CREATE TABLE Employee(	
	emp_id SERIAL PRIMARY KEY,
	fname VARCHAR(50) NOT NULL,
	lname VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	dept VARCHAR(20),
	salary DECIMAL(10,2) NOT NULL DEFAULT 30000.00,
	hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- read the table
SELECT * FROM Employee;

--Insert the values in the table

INSERT INTO Employee (fname, lname, email, dept, salary, hire_date)
VALUES
('Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000.00, '2020-01-15'),
('Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, DEFAULT),
('Arjun', 'Verma', 'arjun.verma@example.com', 'IT', DEFAULT, '2021-06-01'),
('Suman', 'Patel', 'suman.patel@example.com', 'Finance', DEFAULT, DEFAULT),
('Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),
('Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, DEFAULT),
('Neha', 'Desai', 'neha.desai@example.com', 'IT', DEFAULT, '2019-05-18'),
('Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', DEFAULT, DEFAULT),
('Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00, '2018-12-03'),
('Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', DEFAULT, '2020-04-19');

-- Delete all records from employee table

DELETE FROM Employee;


-- Insert all values in different ways, If you don’t write DEFAULT, you must omit the column entirely from the insert.

INSERT INTO Employee (fname, lname, email, dept)
VALUES
('Suman', 'Patel', 'suman.patel@example.com', 'Finance'),
('Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT');

SELECT * FROM Employee;

-- ( delete the whole table and recreate and insert the previous 10 values)


