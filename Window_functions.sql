-- Window functions, also known as analytic functions allow you to perform calculations across a set of rows related to the current row. 


-- Defined by an OVER() clause.

SELECT SUM(salary) as total_departmental_salary FROM Employee
WHERE dept = 'IT' --this will return only a valuu all all records associate to it 

-------------------OVER()----------------------

SELECT fname,salary, SUM(salary) OVER() as total_departmental_salary
 FROM Employee
WHERE dept = 'IT'  -- without over it will give a ERROR:  column "employee.fname" must appear in the GROUP BY clause or be used in an aggregate function



-------------------Calculate running sum using OVER()-----------

SELECT fname,salary, SUM(salary) OVER(ORDER BY salary) as running_sum
 FROM Employee
WHERE dept = 'IT'


---------------------calculate moving avg using OVER()-----------
SELECT fname,salary, ROUND(AVG(salary) OVER(ORDER BY salary)) as moving_avg
 FROM Employee
WHERE dept = 'IT'





---------------------------------------------------------------------

-- Benefits of Window Functions


-- Advanced Analytics: They enable complex calculations like running totals, moving averages, rank calculations, and cumulative distributions.


-- Non-Aggregating: Unlike aggregate functions, window functions do not collapse rows. This means you can calculate aggregates while retaining individual row details.


-- Flexibility: They can be used in various clauses of SQL, such as SELECT, ORDER BY, and HAVING, providing a lot of flexibility in writing queries.