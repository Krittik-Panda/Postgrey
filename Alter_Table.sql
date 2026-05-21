SELECT * FROM person;

--------------------Alter Table to add or remove columns---------

ALTER TABLE person
ADD COLUMN age INT;


ALTER TABLE person
DROP COLUMN age;
------------------------------------------------------------------

----------------RENAME column----------------------

ALTER TABLE person
RENAME COLUMN name TO first_name;

----------RE_RENAME column to its original---------

ALTER TABLE person RENAME COLUMN first_name TO fname;


---------------------RENAME  table name--------------
ALTER TABLE
person RENAME TO person_table;

------------------RE RENAME TO ITS ORIGINAL-------------------------------
ALTER TABLE
person_table RENAME TO person;


--------------MODIFY a column : changing the datatypes or default values--

ALTER TABLE person 
ALTER COLUMN fname
SET DATA TYPE VARCHAR(200);
            ---its not allowed to set all at once like : SET DATA TYPE VARCHAR(200) NOT NULL DEFAULT 'default'
            --- rather than do one by one 
            --- SET DATA TYPE VARCHAR(200) 
            --- SET NOT NULL 
            --- SET DEFAULT 'default'
ALTER TABLE person 
ALTER COLUMN fname
SET DEFAULT 'Unknown'; -- as same add NOT NULL

-------------DROP DEFAULT VALUE--------------


ALTER TABLE person 
ALTER COLUMN fname
DROP DEFAULT;


-------






















