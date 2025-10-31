-- IN operator - used to match againt multiple possible values

SELECT * FROM students WHERE course = "Python Full Stack" OR "Java Full Stack";
SELECT * FROM students WHERE course IN("Python Full Stack", "Java Full Stack");

SELECT * FROM students WHERE name IN("Yashwant", "Laxman", 'Arif');

-- LIKE operator
-- % -> represents any number of characters
-- _ -> represents exactly one character

SELECT * FROM students WHERE name LIKE "Y%"; -- fetches all results that name starts with Y
SELECT * FROM students WHERE name LIKE "Yash%"; -- fetches all results that name starts with Yash
SELECT * FROM students WHERE name LIKE "%a"; -- fetches all results that name ends with a
SELECT * FROM students WHERE name LIKE "%am%"; -- fetches all results that name in the middle or start or end with am
SELECT * FROM students WHERE name LIKE "%Yash%"; -- fetches all results that name in the middle or start or end  with Yash
INSERT INTO students(name, email, age, course, date_of_joining, status)
	VALUES ("actor yash", "bheema@zohomail.in", 30, "Data Science", "2025-10-25", "Active");
INSERT INTO students(name, email, age, course, date_of_joining, status)
	VALUES ("yash actor", "bheema@zohomail.in", 30, "Data Science", "2025-10-25", "Active");
SELECT * FROM students WHERE age LIKE "2%";

SELECT * FROM students WHERE name LIKE "Ra__"; -- fetches all results that name starts with Ra And must 2 other characters

SELECT * FROM students;


-- Sorting Date - ORDER BY = Ascending(ASC) & Descending(DESC)
SELECT columns 
FROM table_name
ORDER BY column_name;
-- numbers -> 0 to 9
-- alphabets -> a-z or A-Z
-- a, A, b, B, ---

SELECT * FROM students ORDER BY name; -- by default it is ascending
SELECT * FROM students ORDER BY name ASC;
SELECT * FROM students ORDER BY name DESC;
SELECT * FROM students ORDER BY name ASC, age ASC; -- multiple sorting is also possible, 
SELECT * FROM students ORDER BY name ASC, age DESC; -- but first it prioritize first field
SELECT * FROM students ORDER BY id DESC;
INSERT INTO students(name, age) VALUES("actor Pavan Kalyan", 30);



-- Write a query to return active students from Java or Python course, age 20 - 25, sorted from oldest to youngest
SELECT * FROM students
WHERE status = "Active" AND course IN("Java Full Stack", "Python Full Stack") AND
age BETWEEN 20 AND 25 
ORDER BY age DESC; 

SELECT * FROM students;

-- Return students whose name doesn't contain 'a' and who are enrolled wither Java or Data Science.

-- Keyword -> purpose
-- WHERE -> filter data
-- AND / OR / NOT -> combines condition
-- BETWEEN -> Range condition
-- IN -> Match multiple values
-- LIKE -> Pattern matching
-- ORDER BY -> sorting


















