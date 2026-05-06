SELECT * FROM Employee;
-- show all details of emp_id 4
SELECT * FROM Employee
	WHERE emp_id = 4;

	
-- show name details of emp_id 4	
SELECT fname,lname FROM Employee
	WHERE emp_id = 4;
---------------------------------------------------

SELECT  * FROM Employee
WHERE dept = 'HR' AND salary >= 40000

-------------------------------------------------------
SELECT * FROM Employee
WHERE salary BETWEEN 45000 AND 50000;

-------DISTINCT ------> remove duplicates------------------------------------

SELECT DISTINCT dept FROM Employee;

------------ORDER BY--> Sort-------------------------------------------

SELECT * FROM Employee
	ORDER BY salary;

------------LIKE-----------	

SELECT * FROM Employee
	WHERE fname LIKE '_u_a%';

	

	