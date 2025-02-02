
/*DATA TYPES*/

-- 1. INT  (INTEGER)  (4 BYTES)
-- 2. VARCHAR  (VARIABLE CHARACTER)  (1-255 BYTES)
-- 3. DATE  (YYYY-MM-DD)  (3 BYTES)
-- 4. DECIMAL  (DECIMAL)  (4 BYTES)
-- 5. BOOLEAN  (TRUE/FALSE)  (1 BYTES)
-- 6. CHAR  (FIXED LENGTH)  (1-255 BYTES)
-- 7. BLOB  (BINARY LARGE OBJECT)  (1-255 BYTES)
-- 8. TEXT  (TEXT)  (1-255 BYTES)

/*CONSTRAINTS*/

-- DEFAULT: Default value for a column
-- NOT NULL: Column can not be empty
-- UNIQUE: Column has to be different for each row
-- PRIMARY KEY: Unique identifier for each row
-- FOREIGN KEY: Link between two tables
-- CHECK: Check a condition before inserting a value
-- INDEX: Index for a column
-- AUTO_INCREMENT: Increment a value by 1
-- ON DELETE CASCADE: Delete all rows that have a foreign key
-- ON UPDATE CASCADE: Update all rows that have a foreign key
-- ON DELETE SET NULL: Set all rows that have a foreign key to NULL
-- ON UPDATE SET NULL: Set all rows that have a foreign key to NULL
-- ON DELETE SET DEFAULT: Set all rows that have a foreign key to DEFAULT
-- ON UPDATE SET DEFAULT: Set all rows that have a foreign key to DEFAULT
-- ON DELETE RESTRICT: Restrict delete operation
-- ON UPDATE RESTRICT: Restrict update operation


/*CREATE TABLE*/

CREATE TABLE students (
    student_id INT AUTO_INCREMENT, /*AUTO_INCREMENT: Means that variable will be incremented by 1*/
    name VARCHAR(100) NOT NULL, /*NOT NULL: Means that variable can not be empty*/
    major VARCHAR(100) DEFAULT 'undecided', /*UNIQUE: Means that variable has to be different for each student*/
    PRIMARY KEY (student_id)
);

DESCRIBE students;

DROP TABLE students;

ALTER TABLE students ADD COLUMN gpa DECIMAL(3, 2);

ALTER TABLE students DROP COLUMN gpa;



/*INSERT INTO*/

SELECT * FROM students;

INSERT INTO students (name, major) VALUE('Jack', 'Engineering');
INSERT INTO students (name, major) VALUES ( 'Kate', 'Sociology');
INSERT INTO students (name) VALUES ( 'Claire');
INSERT INTO students (name, major) VALUES ( 'Jack', 'Biology');
INSERT INTO students (name, major) VALUES ( 'Mike', 'Computer Science');



/*UPDATE*/

UPDATE students
SET major = 'Computer Sci'
WHERE major = 'Computer Science';


UPDATE students
SET major = 'Computer Sci'
WHERE student_id = 4;


UPDATE students
SET major = 'Engineering'
WHERE major = 'Biology' OR major = 'Sociology';


UPDATE students
SET name = 'Tom', major = 'undecided'
WHERE student_id = 2;

UPDATE students
SET major = 'undecided';

SELECT * FROM students;



/*DELETE*/

DELETE FROM students
WHERE student_id = 2;


DELETE FROM students
WHERE name = 'Claire'AND major = 'undecided';

SELECT * FROM students;



/*QUERIES*/

-- <, >, <=, >=, =, <>, !=, AND, OR, NOT, IN, BETWEEN, LIKE, IS NULL, IS NOT NULL


SELECT *
FROM students;

SELECT name, major
FROM students;


SELECT students.name, students.major
FROM students;


SELECT name, major
FROM students
ORDER BY name DESC;


SELECT name, major
FROM students
ORDER BY name ASC;


SELECT *
FROM students
ORDER BY student_id DESC;


SELECT *
FROM students
ORDER BY student_id ASC LIMIT 2;


SELECT *
FROM students
ORDER BY major, student_id;


SELECT *
FROM students
ORDER BY major, student_id DESC;


SELECT *
FROM students
LIMIT 2;


SELECT *
FROM students
WHERE major = 'Engineering';


SELECT name, major
FROM students
WHERE major = 'Engineering' OR major = 'Computer Science';


SELECT name, major
FROM students
WHERE major = 'Engineering' OR major = 'Computer Science';


SELECT name, major
FROM students
WHERE student_id < 3;


SELECT name, major
FROM students
WHERE name <> 'Jack'; ;


SELECT name, major
FROM students
WHERE student_id <= 3 AND name <> 'Jack';


SELECt *
FROM students
WHERE name IN ('Jack', 'Kate');

SELECT *
FROM students
WHERE major IN ('Engineering', 'Computer Science','Biology') AND student_id BETWEEN 2 AND 4;








/*EXTRA*/

/*
INSERT INTO students (student_id, name, major) VALUES (1, 'Jack', 'Engineering');
INSERT INTO students (student_id, name, major) VALUES (2, 'Kate', 'Sociology');
INSERT INTO students (student_id, name) VALUES (3, 'Claire');
INSERT INTO students (student_id, name, major) VALUES (4, 'Jack', 'Biology');
INSERT INTO students (student_id, name, major) VALUES (5, 'Mike', 'Computer Science');
*/
/*
INSERT INTO students (student_id, name) VALUES (2, 'Claire');
INSERT INTO students (student_id) VALUES (3);
*/