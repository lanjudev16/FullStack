--add collumn
ALTER Table person3
ADD COLUMN email VARCHAR(25) DEFAULT('default@gmail.com') NOT NULL;
--insert data into table
INSERT INTO person3 (id,username,user_age) VALUES(1,'Lanju Mia',25);
--Drop collumn
ALTER Table person3
DROP COLUMN email;
--rename collumn name
ALTER Table person3
RENAME COLUMN user_name to UserName;
--Retrive data
SELECT * FROM person3;
 ALTER TABLE person3
    ALTER COLUMN UserName type VARCHAR(50) ;
 ALTER Table person3
    Alter COLUMN user_age DROP not NULL;
--constraint add
ALTER Table person3
ADD constraint unique_person3_user_age UNIQUE(user_age);
--Delete data
DELETE FROM person3
WHERE id=6;