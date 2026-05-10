------------------PRACTICE------------------------
------------------OUTPUT--> 1:Raj:Sharma:IT-------
SELECT CONCAT_WS(':',emp_id,fname,lname,dept) FROM Employee;


--------------------OUTPUT--> 1:Raju Sharma:IT:50000

SELECT CONCAT_WS(':',emp_id,CONCAT_WS(' ',fname,lname),dept,salary) FROM Employee;

----------------------OUTPUT--> 4:Suman:FINANCE----------

SELECT CONCAT_WS(':',emp_id,fname,UPPER(dept)) FROM Employee;

-----------------------OUTPUT--> I1 Raju---------------------
SELECT CONCAT_WS(' ',CONCAT(LEFT(dept,1),emp_id),fname) FROM Employee;

-----------display records with hign to low salary---------
SELECT * FROM Employee ORDER BY salary DESC;

------------------find no of employee in each department---

SELECT dept,COUNT(emp_id) FROM Employee GROUP BY dept;


------------find highest salary paying-----------------

SELECT * FROM Employee WHERE salary = (select max(salary) from Employee) ;




