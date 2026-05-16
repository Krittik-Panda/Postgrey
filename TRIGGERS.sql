-----------------------TRIGGER--------------------------------

---Triggers are special procedures in a database that automatically execute predefined actions in response to certain events on a specified table or view.
--  USECASE :::  Create a Trigger so that If we insert/update negative salary in a table, it will be triggered and set it to 0.

CREATE OR REPLACE FUNCTION check_salary()
RETURNS TRIGGER AS $$
BEGIN

    IF NEW.salary < 0 THEN
        NEW.salary := 0;
    END IF;

    RETURN NEW;

END;
$$ LANGUAGE plpgsql;


---create trigger------------------
CREATE TRIGGER before_update_salary
BEFORE UPDATE ON Employee
FOR EACH ROW
EXECUTE FUNCTION check_salary();


-----------update salary-------------

CALL update_emp_salary(3,-1000); -- procedure call (previously madeupdate_emp_salary procedure)


SELECT * FROM Employee ORDER BY emp_id;



CALL update_emp_salary(3,91000); --reupdate