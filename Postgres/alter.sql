--Table create
CREATE TABLE person2(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--Drop table
DROP TABLE student;
--add collumn
ALTER Table person3
ADD COLUMN email VARCHAR(25) DEFAULT('default@gmail.com') NOT NULL;
--insert data into table
INSERT INTO person2 (name, email) 
VALUES 
('John Doe', 'john@example.com'),
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com');
--Drop collumn
ALTER Table person3
DROP COLUMN email;
--rename collumn name
ALTER Table person3
RENAME COLUMN user_name to UserName;
--Retrive data
SELECT * FROM person2;
 ALTER TABLE person3
    ALTER COLUMN UserName type VARCHAR(50) ;
 ALTER Table person3
    Alter COLUMN user_age DROP not NULL;
--constraint add
ALTER Table person3
ADD constraint unique_person3_user_age UNIQUE(user_age);
ALTER TABLE person3
ADD constraint pk_person3_user_age PRIMARY KEY(user_age);
ALTER TABLE person3 
DROP constraint person3_pkey;
ALTER TABLE person3 ADD CONSTRAINT person3_pkey PRIMARY KEY (id);
--Truncate
TRUNCATE TABLE person3;

--test
ALTER TABLE student
RENAME COLUMN blod_group to blood_group;