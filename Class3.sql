CREATE DATABASE test_db;
USE test_db;

CREATE TABLE mobile (
id INT NOT NULL UNIQUE AUTO_INCREMENT, 
brand_name VARCHAR(20), 
price DOUBLE CHECK (price>=1000), 
manufatured_date DATE DEFAULT "2000-01-01");

DESC mobile;

SELECT * FROM mobile;

-- CREATE
INSERT INTO mobile(brand_name, price) VALUES("Oneplus", 29999.99);
INSERT INTO mobile VALUES(10, "Samsung", 19999.99, null);
INSERT INTO mobile(brand_name, price) VALUES("Oneplus", 29999.99);
INSERT INTO mobile VALUES(100, "Samsung", 19999.99, null);
INSERT INTO mobile(brand_name, price) VALUES("Oneplus", 29999.99);
INSERT INTO mobile VALUES(10, "Nokia", 1999.99, null); -- ERROR

CREATE TABLE mobile1 (
id INT PRIMARY KEY AUTO_INCREMENT, 
brand_name VARCHAR(20), 
price DOUBLE CHECK (price>=1000), 
manufatured_date DATE DEFAULT "2000-01-01");

SELECT * FROM mobile1;

INSERT INTO mobile1(brand_name, price) VALUES("Oneplus", 29999.99);
INSERT INTO mobile1 VALUES(10, "Samsung", 19999.99, null);
INSERT INTO mobile1 VALUES(10, "Nokia", 1999.99, null); -- ERROR


-- READ
-- 1. Reading all columns
-- SELECT * FROM <table_name>; 
SELECT * FROM mobile;

-- 2. Read custum columns
SELECT brand_name, price FROM mobile;

-- 3. AS keyword - to give alias name
SELECT brand_name AS 'BRAND NAME', price AS "Mobile Price" FROM mobile;
SELECT brand_name 'BRAND NAME', price "Mobile Price" FROM mobile; -- AS is optional

-- 4. Adding expressions
SELECT brand_name AS 'BRAND NAME', price-500 AS 'Discounted Price' FROM mobile;


CREATE TABLE mobile2 (
id INT PRIMARY KEY AUTO_INCREMENT, 
brand_name VARCHAR(20), 
price DOUBLE CHECK (price>=1000), 
discount DOUBLE,
manufatured_date DATE DEFAULT "2000-01-01");

INSERT INTO mobile2(brand_name, price, discount) VALUES("Oneplus", 29999.99, 10000);
INSERT INTO mobile2 VALUES(10, "Samsung", 19999.99, 5000, null);

SELECT * FROM mobile2;
-- combined example of both alias and expression
SELECT id, brand_name, price-discount 'TOTAL PRICE', manufatured_date FROM mobile2;


TASK:
1. Create one database, 5 tables, 20 columns each, 30rows
2. Create another database, 3 tables, 10 columns each, 100 rows.



