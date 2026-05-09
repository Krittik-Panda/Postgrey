----------------COUNT emp_id------------------
SELECT COUNT(emp_id) FROM Employee;

------------ SUM of salary-------------------

SELECT SUM(salary) FROM Employee;

-------------MIN-----------------------------
SELECT AVG(salary) FROM Employee;
--------------MAX----------------------------
SELECT MIN(salary) FROM Employee;
--------------AVG----------------------------
SELECT MAX(salary) FROM Employee;


-----------------GROUP BY --------------
SELECT dept FROM employee GROUP BY dept;

SELECT dept, COUNT(emp_id), SUM(salary) FROM employee GROUP BY dept;

---------------------SUBSTR------------------------------

SELECT SUBSTR(fname,2,5) FROM Employee;

----------------------REPLACE--------------------
SELECT REPLACE(dept,'IT','TECH') as new_dept FROM Employee;

----------------------REVERCE-----------------------
SELECT REVERSE(fname) AS reverse_name FROM Employee;

---------------------LENGTH-------------------------

SELECT LENGTH(fname) FROM Employee;

-----------Show names with teanth greater than 5---------
SELECT fname FROM Employee
WHERE LENGTH(fname)>5;

-------------POSITION------------------------------------

SELECT POSITION('n' in fname) FROM Employee;

 




