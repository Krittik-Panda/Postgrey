------------------PRACTICE------------------------
------------------OUTPUT--> 1:Raj:Sharma:IT-------
SELECT CONCAT_WS(':',emp_id,fname,lname,dept) FROM Employee;


--------------------OUTPUT--> 1:Raju Sharma:IT:50000

SELECT CONCAT_WS(':',emp_id,CONCAT_WS(' ',fname,lname),dept,salary) FROM Employee;

----------------------OUTPUT--> 4:Suman:FINANCE----------

SELECT CONCAT_WS(':',emp_id,fname,UPPER(dept)) FROM Employee;

-----------------------OUTPUT--> 