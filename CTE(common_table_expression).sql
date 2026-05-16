---------------------CTE(common table expression)--------------------

-- We want to calculate the average salary per department and then find all employees whose salary is above the average salary of their department

----normal-------------------------------------
SELECT fname, dept, salary
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE dept = e.dept
);


----------------with CTE---------------------------------

WITH avg_sal AS (
    SELECT 
        dept,
        AVG(salary) AS avg_salary
    FROM Employee
    GROUP BY dept
)

SELECT
    e.emp_id,
    e.fname,
    e.dept,
    e.salary,
    a.avg_salary
FROM Employee e
JOIN avg_sal a
ON e.dept = a.dept
WHERE e.salary > a.avg_salary;




-----We want to find the highest-paid employee in each department.------


WITH max_sal_per_dept AS(
SELECT dept, MAX(salary) as max_salary FROM Employee GROUP BY dept
)

SELECT e.fname, e.dept,e.salary,m.max_salary FROM Employee e
JOIN max_sal_per_dept m ON 
e.dept = m.dept 
WHERE salary = max_salary;
