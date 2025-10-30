-- Distinct - distinct keyword is used remove the duplicates in the result.

CREATE TABLE animals(
	id int PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50), 
    type enum("Carnivorous", "Omnivores", "Herbivores"));
    
SELECT * FROM animals;

INSERT INTO animals(name, type) VALUES("Lion", "carnivorous");
INSERT INTO animals(name, type) VALUES("Lion", "carnivorous");
INSERT INTO animals(name, type) VALUES("Rabbit", "Herbivores");
INSERT INTO animals(name, type) VALUES("Human", "Omnivores");

-- For Single column
SELECT DISTINCT name FROM animals;

-- For multiple columns
SELECT DISTINCT name, type FROM animals;

INSERT INTO animals(name, type) VALUES("Human", "Herbivores");

SELECT DISTINCT name, type FROM animals;


CREATE TABLE students(
	id int PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(50), 
    email VARCHAR(50),
    age TINYINT,
    course ENUM("Java Full Stack", "Python Full Stack", "Data Science", "Data Analysis", "Software Testing"),
    date_of_joining DATE,
    status ENUM("Active", "Inactive")
    );
    
SELECT * FROM students;

INSERT INTO students(name, email, age, course, date_of_joining, status)
	VALUES ("Yashwant", "yashwant@zohomail.in", 23, "Python Full Stack", "2025-10-25", "Active");
INSERT INTO students(name, email, age, course, date_of_joining, status)
	VALUES ("Ramu", "ramu@zohomail.in", 28, "Java Full Stack", "2025-9-30", "Active");
INSERT INTO students(name, email, age, course, date_of_joining, status)
	VALUES ("Arif", "arig@vtech.in", 25, "Python Full Stack", "2025-11-01", "Active");
INSERT INTO students(name, email, age, course, date_of_joining, status)
	VALUES ("Laxman", "laxman@zohomail.in", 23, "Python Full Stack", "2025-10-25", "Inactive");
INSERT INTO students(name, email, age, course, date_of_joining, status)
	VALUES ("Bheema", "bheema@zohomail.in", 30, "Data Science", "2025-10-25", "Active");

-- WHERE -> used to filter the result by using conditions
SELECT * FROM students WHERE status = "Active";
SELECT * FROM students WHERE course = "Java Full Stack";

-- Comaparision Operators
-- 1. =          -> equals
-- 2. != or <>   -> not equals
-- 3. > 		 -> greater than
-- 4. < 		 -> lesser than
-- 5. >=		 -> greater than & equals
-- 6. <=         -> less than & equals

SELECT * FROM students WHERE age = 23;
SELECT * FROM students WHERE course != "Python Full Stack";
SELECT * FROM students WHERE course <> "Python Full Stack";
SELECT * FROM students WHERE age > 28;
SELECT * FROM students WHERE age < 28;
SELECT * FROM students WHERE age <= 28;
SELECT * FROM students WHERE age >= 28;


-- using logical opearators
-- AND opearation
SELECT * FROM students WHERE course = 'Python Full Stack' AND status = 'Active';

-- OR opeartion
SELECT * FROM students WHERE course = 'Python Full Stack' OR date_of_joining < '2025-10-25';

-- NOT Oparation
SELECT * FROM students WHERE NOT status = "Active";

-- 1. Students above 25 age and active
SELECT * FROM students WHERE age > 25 AND status = "Active";

-- 2. Students from java & python
SELECT * FROM students WHERE course = "Python Full Stack" OR "JAVA Full Stack";
SELECT * FROM students WHERE course = "Python Full Stack" OR course ="JAVA Full Stack";

-- 3. Students who are not above age 25
SELECT * FROM students WHERE age < 25; 
SELECT * FROM students WHERE NOT age >= 25; 


-- Between opeartor - used to get  results in the range(numbers and date)
-- Students who are age in between 25 to 30
SELECT * FROM students WHERE age >=25 AND age <=30;
SELECT * FROM students WHERE age BETWEEN 25 AND 30;

-- for date
SELECT * FROM students WHERE date_of_joining BETWEEN '2025-09-01' AND '2025-09-30';

-- Student btw age 25 and 30 & not joined in september
SELECT * FROM students WHERE (age BETWEEN 25 AND 30) AND (date_of_joining NOT BETWEEN '2025-09-01' AND '2025-09-30');
SELECT * FROM students WHERE age BETWEEN 25 AND 30 AND date_of_joining NOT BETWEEN '2025-09-01' AND '2025-09-30';

-- Task:
-- Write 20 different queries using comparision, logical and between operators


