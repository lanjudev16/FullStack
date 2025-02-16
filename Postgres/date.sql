-- show timezone
SHOW TIMEZONE;
--select timestamp
SELECT now();
--create a table with timestamp
CREATE Table timZ(tm TIMESTAMP WITHOUT TIME ZONE,tmz TIMESTAMP with time zone);
INSERT INTO timz VALUES('2025-01-25','2025-01-25');
SELECT * from timz;
SELECT CURRENT_DATE;
SELECT current_time;
SELECT now()::date;
SELECT to_char(now(),'yyyy/mm/dd');
SELECT to_char(now(),'DDD');
SELECT CURRENT_DATE -INTERVAL '1 year';
SELECT age(CURRENT_DATE,'1999-12-24');
SELECT extract(YEAR from '2024-12-12'::date);
SELECT * FROM student;
SELECT country,count(*),avg(age) FROM student GROUP BY country HAVING avg(age)>20;