--Table creation inside persondb database

CREATE TABLE person(
	id INT,
	name VARCHAR(100),
	city VARCHAR(100)
);
--Look into the person table

SELECT * FROM person;

--insert into table person
INSERT INTO person(id,name,city)
VALUES
(101,'raju','Mumbai'),(102,'biju','Delhi'),(103,'akit','Hydrabad'),(104,'ritu','raychak');

-- look specific column
SELECT name FROM person;

-- Update rajus city to bangalore
UPDATE person
	SET city  = 'Banglore'
WHERE id = 101;


-- Delete data from the table

DELETE FROM person
	WHERE id = 101;

--Delete the whole table

DROP TABLE person;




	

	


 