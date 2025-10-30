CREATE DATABASE vtech_oct; -- Creating a database

USE vtech_oct; -- Selecting the database

CREATE TABLE student(id int, name varchar(20), mobile bigint);

SELECT * FROM student;

INSERT student VALUES(1, 'Raju', 9288938973);
SELECT * FROM student;
USE test_db;

CREATE TABLE student(id int, name varchar(20), mobile bigint);

INSERT student VALUES(1, 'Raju', 9288938973);
INSERT student VALUES(0, 'Raju', 9288938973);

SELECT * FROM test_db.student;
SELECT * FROM vtech_oct.student;
INSERT vtech_oct.student(id, mobile) VALUES(2, 837973973);
INSERT test_db.student VALUES(2, 'RAMU', 837973973);
SELECT * FROM test_db.student;
SELECT * FROM vtech_oct.student;

-- Constraints 
-- 1. PRIMARY KEY -> Unique + Not Null  - id int PRIMARY KEY
-- 2. UNIQUE -> no duplicate values will be allowed - name VARCHAR(10) UNIQUE
-- 3. NOT NULL -> no null values i.e there should be a value for that row - mobile BIGINT NOT NULL
-- 4. AUTO_INCREMENT -> increment values from 1, usually we use for ids - id INT PRIMARY KEY AUTO_INCREMENT or id INT UNIQUE NOT NULL AUTO_INCREMENT
		-- Without PRIMARY KEY, AUTO_INCREMENT doesn't work.
-- 5. Default - If no value is assigned, then default value will be assigned to it. - DEFAULT "ACTIVE"
-- 6. CHECK - checks the condition - age  int CHECK (age>=18)

USE vtech_oct;
CREATE TABLE population( 
 id int PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(50) NOT NULL,
 mobile BIGINT UNIQUE,
 gender VARCHAR(10) DEFAULT "NA",
 age int CHECK(age>=18));
 
 DESC population;
 
 
INSERT INTO population(id, name, mobile, age) VALUES(1, "Varun", 92898093983, 18); -- CREATE
INSERT INTO population(name, mobile, age) VALUES("Pradeep", 989389793, 20); 
INSERT INTO population(id, name, mobile, gender, age) VALUES(null, "Pradeep", 9398339839, null, 20);  -- null values will be assigned default variable
INSERT INTO population(id, name, mobile, gender, age) VALUES(4, "Eshwar", 8398308333, "", 20); -- emplty will be assigned to default variable
INSERT INTO population(id, name, mobile, gender, age) VALUES(5, null, 83399398973, "M", 20); -- Column 'name' cannot be null
INSERT INTO population(id, name, mobile, gender, age) VALUES(5, "", 83399398973, "M", 20); -- emplty will be assigned to not null
INSERT INTO population(id, name, mobile, gender, age) VALUES(6, "", null, "M", 20); -- null will be assigned to unique variable
INSERT INTO population(id, name, mobile, gender, age) VALUES(7, "", null, "M", 20);  -- multiple null values can be assigned to uniqiue column
INSERT INTO population(id, name, mobile, gender, age) VALUES(8, "", 0, "M", 20);  -- 0 is also allowing for unique integer variable
INSERT INTO population(id, name, mobile, gender, age) VALUES(8, "", 0, "M", 10);  -- age check violated
SELECT * FROM vtech_oct.population; -- READ


CREATE TABLE class_rooms(id int PRIMARY KEY AUTO_INCREMENT, name varchar(20));
INSERT INTO class_rooms(name) VALUES("Kiran"), ("Vaibhav"); 


DESC class_rooms;

SELECT * FROM class_rooms;

-- Creating the table
-- Syntax:
CREATE TABLE <table_name>(
	column1 datatype,
    column2 datatype,
    ...
)

-- Inserting the table
-- Syntax:
INSERT INTO <table_name>(column1, column2,....)
		VALUES(value1, value2,....);
INSERT INTO population(id, name, mobile, gender, age) VALUES(8, "Rahul", 928379363, "Male", 25);
INSERT INTO population(id, mobile, name, gender) VALUES(9, 3873997333, "Kumar", "Male");


INSERT INTO population VALUES(10, "Jai Shankar", 8739336937, "male", 65);
INSERT INTO population VALUES(11, "Shankar", 827928220, "male"); -- Column count doesn't match value count at row 1
-- Always give all values and in the same order of the table

-- We can insert multiple rows at a time
INSERT INTO population(id, name, mobile, gender, age) VALUES(11, "Manmohan", 8373973973, "Male", 85),(12, "Kiran", 9820373937, "Male", 67);
-- 2 row(s) affected Records: 2  Duplicates: 0  Warnings: 0


SELECT * FROM population;


