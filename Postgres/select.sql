CREATE Table student(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(5),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blod_group VARCHAR(10),
    country VARCHAR(250)
);
--Insert data
INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES
('John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@example.com', '2004-04-15', 'O+', 'USA'),
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
WHERE age<>20  