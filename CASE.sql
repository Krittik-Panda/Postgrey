SELECT * FROM Employee;

-----------CASE-------------------
SELECT salary,emp_id,fname,
CASE
	WHEN salary >= 50000 THEN 'HIGH'
	ELSE 'LOW'
END AS salary_calagory
FROM Employee;

----------------------------------
SELECT salary,emp_id,fname,
CASE
	WHEN salary > 50000 THEN 'HIGH'
	WHEN salary BETWEEN 40000 AND 50000 THEN 'MEDIUM'
	ELSE 'LOW'
END AS salary_calagory
FROM Employee;

-------group high,mid and low salary and count employee in each section-----------------------
SELECT
CASE
    WHEN salary > 55000 THEN 'HIGH'
    WHEN salary BETWEEN 48000 AND 55000
        THEN 'MID'
    ELSE 'LOW'
END AS salary_catagory, COUNT(emp_id)
    FROM Employee
    GROUP BY salary_catagory;

-------------------------------------------------





