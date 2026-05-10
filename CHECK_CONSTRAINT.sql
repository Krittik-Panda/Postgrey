SELECT * FROM person_2;

-- =========================================
-- 1. CREATE TABLE WITH CHECK CONSTRAINT
-- =========================================

CREATE TABLE person_2 (
    id SERIAL PRIMARY KEY,

    fname VARCHAR(50)
    CHECK (length(fname) > 0),

    city VARCHAR(50)
    CHECK (length(city) > 0)
);


-----------ADD CHECK CONSTRAINT on a specific column-----------------
ALTER TABLE person
ADD CONSTRAINT fname_check
CHECK (length(fname) > 0);

-------ADD CHECK CONSTRAINT using BETWEEN--------

ALTER TABLE person_2
ADD CONSTRAINT person_2_id_range
CHECK (
id BETWEEN 1 AND 1000
);

------Check using INN-------------------------------

ALTER TABLE person_2
ADD CONSTRAINT city_allowed
CHECK (
    city IN ('Kolkata', 'Delhi', 'Mumbai')
);

--------------CONSTRAINT during add to the table----
ALTER TABLE person_2
ADD COLUMN 
mob VARCHAR(10) CHECK (LENGTH(mob)=10);

-----------------DROP constraint--------------------

ALTER TABLE person_2
DROP CONSTRAINT city_allowed; --- city_allowed is a name of check constraint that we have create before 



---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------create table with check constraint and a give a name to that contraint so that after getting error we can be aware of that error---
CREATE TABLE contacts(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	mob VARCHAR(10) CONSTRAINT mob_less_than_10 CHECK(LENGTH(mob)=10)
);
------------ ADD VALUES-----------------------------

INSERT INTO contacts(name,mob)
VALUES
('raju','123456789'); -- ERROR:  new row for relation "contacts" violates check constraint "mob_less_than_10"


------------add unique for mob-------------
ALTER TABLE contacts
ADD CONSTRAINT mob_unique
UNIQUE(mob);
















