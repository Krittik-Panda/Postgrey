



------------------Stored Precedure---------------------

CREATE OR REPLACE PROCEDURE update_emp_salary(

    p_employee_id INT,

    p_new_salary NUMERIC

)

LANGUAGE plpgsql

AS $$

BEGIN

    UPDATE Employee

    SET salary = p_new_salary

    WHERE emp_id = p_employee_id;

END;

$$;

---call of stored procedure-----------------


CALL update_emp_salary(4,80000);


----------user define function--------------


CREATE OR REPLACE FUNCTION dept_max_sal_emp1(dept_name VARCHAR)

RETURNS TABLE(emp_id INT, fname VARCHAR, salary NUMERIC) 

AS $$

BEGIN

    RETURN QUERY

    SELECT 

        e.emp_id,  e.fname, e.salary

    FROM 

        Employee e

    WHERE 

        e.dept = dept_name

        AND e.salary = (

            SELECT MAX(emp.salary)

            FROM Employee emp

            WHERE emp.dept = dept_name

        );

END;

$$ LANGUAGE plpgsql;


---call user define function-------------

SELECT * FROM dept_max_sal_emp1('IT')


