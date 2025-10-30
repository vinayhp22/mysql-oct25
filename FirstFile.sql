CREATE DATABASE test_db;
USE test_db;
CREATE TABLE test_table(id INT, name VARCHAR(20));
SELECT * FROM test_table;
INSERT INTO test_table VALUES(7, "Rakshit");
INSERT INTO test_table VALUES(8, "Manoj");


-- Datatypes: 
-- 1. Numerical Data types
--     1. INT -  for Integer values - ex: id INT -> 10
--     2. FLOAT - Small Decimal values - ex: marks FLOAT -> 35.5 , less accuracy - upto 5-6 decimal places
--     3. DOUBLE - Large Decimal values - ex: distance DOUBLE -> 100.29392929 , more accuracy - upto 14-15 decimal places
--     4. DECIMAL - for fixed decimal point - DECIMAL(p,s) - ex. value DECIMAL(6,4) -> 99.9999
--     5. TINYINT/BIGINT - small integers/large integers - ex: id BIGINT

-- 2. String(Character) Data Types -
-- 	   1. Char(n) - Fixed-length string - ex: gender char(1) -> 'M' or "F", char(2) -> 'MN' or 'op'
--     2. VARCHAR(m) - Variable-length string - ex: name VARCHAR(10) -> 'T' or "Thiru" or 'Maheshwari'  
--     3. TEXT - Large test Block - ex: description TEXT -> 'This is small description'
--     4. ENUM - For Constant i.e One value from a defined list - ex: gender ENUM('Male', 'Female', 'Others');

--     
-- 3. Date & Time Data types
-- 	   1. DATE - 'YYYY-MM-DD' -ex: registered_date DATE -> '2025-10-24'
--     2. TIME - 'HH:MM:SS' - ex: registered_time TIME -> '10:51:00'
--     3. DATETIME - 'YYYY-MM-DD HH:MM:SS' - ex: registered_time DATETIME - >'2025-10-24 10:51:00'
--     4. TIMESTAMP - Auto-updated datetime record creation time - created_time TIMESTAMP  


-- Database - known as schema
-- Syntax: CREATE DATABASE <database_name>;
CREATE DATABASE chair_db;

-- We need select database to use it for table creation and table data modification & processing
-- Syntax: USE <database_name>;
USE chair_db;

-- CREATE TABLE
-- Sytanx:
-- CREATE TABLE <table_name>(
-- 	column_name1 datatype,
-- 	column_name2 datatype,
-- 	column_name3 datatype
-- );

CREATE TABLE chairs(
	id INT,
    name VARCHAR(20),
    price DOUBLE
    );
    
-- INSERT QUERY
-- Syntax
-- INSERT INTO <table_name>(
-- column_name1, column_name2, column_name3
-- ) VALUES(
-- column_name1_value,
-- column_name2_value,
-- column_name3_value);
INSERT INTO chairs(id, name, price) VALUES(1, 'plastic chair', 149.99);
INSERT INTO chairs(name, id, price) VALUES('wooden chair', 2, 999.99);
INSERT INTO chairs(id, name, price) VALUES(3, 'plastic chair', 249.99),(4, 'iron chair', 549.99);

-- SELECT QUERY - TO READ THE TABLE
-- Syntax: SELECT (column_names) FROM <table_name>
-- * -> is used to read all the columns of the table
SElECT id, name, price FROM chairs;
SELECT * FROM chairs;

CREATE TABLE datatype_demo(
	-- Numeric Datatypes 
    student_id INT,
    marks FLOAT,
    distance DOUBLE,
    price DECIMAL(6,2),
    tiny_value TINYINT,
    big_value BIGINT,
    
   -- String Datatypes
    gender CHAR(1),
    full_name VARCHAR(50),
    address TEXT,
    gender_type ENUM('Male','Female', 'Others'),
    
    -- DATE & TIME datatypes
    birth_date DATE,
    login_time TIME,
    event_datetime DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM datatype_demo;

DESC datatype_demo;

INSERT INTO datatype_demo
(student_id, marks, distance, price, tiny_value, big_value, gender, full_name, address, gender_type,
 birth_date, login_time, event_datetime) 
VALUES
(101, 88.78, 12500.839, 2000.30, 5, 8028200383, "M", "Virat Kohli", "BTM Layout, Bengaluru",
'Male', "1985-10-30", '25:00:00', '2025-10-24 12:00:00');






    
    
    
	