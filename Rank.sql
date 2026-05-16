---------RANK------------------------------

SELECT fname,salary,dept,
RANK() OVER(ORDER BY salary)
FROM Employee;

----------RANK  --> it is not dence it is identical to row no. so use DENSE_RANK------


SELECT fname,salary,dept,
DENSE_RANK() OVER(ORDER BY salary)
FROM Employee;

