CREATE Table student(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(5),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(10),
    country VARCHAR(250)
);
--Insert data
INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES
('John', 'Doe', 20, 'A+', 'Computer Science',NULL, '2004-04-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Electrical Engineering', 'jane.smith@example.com', '2002-03-10', 'A-', 'UK'),
('David', 'Brown', 21, 'A', 'Mechanical Engineering', 'david.brown@example.com', '2003-08-22', 'B+', 'Canada'),
('Emily', 'Taylor', 19, 'B+', 'Biology', 'emily.taylor@example.com', '2005-02-12', 'O-', 'Australia'),
('Michael', 'Wilson', 23, 'C', 'Physics', 'michael.wilson@example.com', '2001-11-30', 'AB+', 'USA'),
('Anna', 'Moore', 20, 'A-', 'Mathematics', 'anna.moore@example.com', '2004-06-25', 'O+', 'Germany'),
('Chris', 'Davis', 21, 'A', 'Psychology', 'chris.davis@example.com', '2003-09-17', 'B-', 'India'),
('Laura', 'Miller', 22, 'B+', 'History', 'laura.miller@example.com', '2002-12-05', 'A+', 'France'),
('James', 'Anderson', 23, 'B-', 'Chemistry', 'james.anderson@example.com', '2001-04-10', 'AB-', 'USA'),
('Sophia', 'Martinez', 19, 'A', 'Engineering', 'sophia.martinez@example.com', '2005-01-19', 'O+', 'Mexico');
--retrive all data
SELECT * FROM student;
--retrive a specific collumn  data and collumn rename when show data
SELECT age as "Student Age",email as "Student Email" FROM student;
--data sorting 
SELECT country FROM student ORDER BY age DESC;
--retrive only uniqe data || distinct(স্বতন্ত্র)
SELECT DISTINCT country FROM student ORDER BY country ASC;
--retrive a SPECIFIC DATA
SELECT first_name,age,email FROM student
WHERE country='USA';
--retrive a specific data where and condition apply
SELECT email,grade,course FROM student
WHERE grade='A+' AND course='Computer Science';
--retrive a specific data where or condition apply
SELECT email,grade,course FROM student
WHERE grade='A' OR course='Computer Science';
--retrive data apply three condition where and ,or ,equal
SELECT * FROM student
WHERE (country='USA' OR country='Australia') AND age=20;
SELECT * FROM student
WHERE (country='USA' OR country='UK') AND (grade='A+' OR grade='B');
SELECT * FROM student
WHERE age<>20  ;
/*
Scaller function
lowercase
uppercase
concate
length
*/
--Uppercase convert when get the data
SELECT upper(first_name) as "Full Name"  FROM student;
--concat 
SELECT concat(first_name,' ',last_name) as "Full Name" FROM student;
--length
SELECT length(first_name) as "Name Length",first_name FROM student;

/*
aggregate function
avg
sum
max
min
count
*/
--student age average
SELECT avg(age) as "Student Average Age" FROM student;
--student max age
SELECT max(age) FROM student;
--student min age
SELECT min(age) FROM student;
--count
SELECT count(*) FROM student;
--find max length first_name
SELECT max(length(first_name)) FROM student;
--not
SELECT country FROM student
WHERE NOT country='India';
--null compare
SELECT * FROM student
WHERE email IS NULL;
---
SELECT * FROM student;
--null value replace default value
select COALESCE(email,'Email is not provided') as "Email" FROM student;
--filter specific data by in
SELECT country FROM student WHERE country  IN('USA');
SELECT country FROM student WHERE country NOT IN('USA');
SELECT age FROM student WHERE age BETWEEN 19 and 20 ORDER BY age ASC;
--like operator case sensetive
SELECT first_name FROM student WHERE first_name LIKE 'D%';
SELECT first_name FROM student WHERE first_name LIKE '___a';
--ilike case insensetive
SELECT first_name FROM student WHERE first_name ILIKE '%d';
--Limit
SELECT * FROM student ORDER BY id ASC LIMIT 4;
--Offset->mane prothom theke kotogula bad seita bujai
SELECT * FROM student ORDER BY id ASC LIMIT 5 OFFSET 5*1;
SELECT * from student
WHERE email is NULL;
--delete
DELETE FROM student;
DROP Table student;
