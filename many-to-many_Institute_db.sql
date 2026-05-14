---student table creation--------
CREATE TABLE students (
    s_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-----cources table creation--------

CREATE TABLE courses(
    c_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    fee NUMERIC NOT NULL
);
----------enrollment table------

CREATE TABLE enrollment(
    enrollment_id SERIAL PRIMARY KEY,
    s_id INT NOT NULL,
    c_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (s_id) REFERENCES students(s_id),
    FOREIGN KEY (c_id) REFERENCES courses(c_id)
);

--------insert into students-------


INSERT INTO students(name)
VALUES ('Raju'),('Sham'),('Alex')



-----------insert into cources------


INSERT INTO courses(name,fee)
VALUES ('Math',3000),('Physics',2700),('Chemistry',2000)


-------------insert into enrollment---


INSERT INTO enrollment (s_id, c_id, enrollment_date)
VALUES
    (1, 1, '2024-01-01'), -- Raju enrolled in Mathematics
    (1, 2, '2024-01-15'), -- Raju enrolled in Physics
    (2, 1, '2024-02-01'), -- Sham enrolled in Mathematics
    (2, 3, '2024-02-15'), -- Sham enrolled in Chemistry
    (3, 3, '2024-03-25'); -- Alex enrolled in Chemistry



---------------JOIN Operations------------------------

SELECT s.name as student, c.name as course , e.enrollment_date, c.fee FROM enrollment as e
JOIN students as  s ON e.s_id = s.s_id
JOIN courses as c ON e.c_id = c.c_id



