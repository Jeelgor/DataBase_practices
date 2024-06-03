CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker(
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);	





INSERT INTO Worker(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) 
VALUES 
(001,'Jeel','Gor',12000,'2020-12-12','HR'), 
(002,'John','Doe',120000,'2021-11-10','Marketing'), 
(003,'Alice','Smith',20000,'2019-09-05','Finance'), 
(004,'Michael','Johnson',45600,'2018-08-15','Operations'), 
(005,'Emily','Brown',56000,'2022-07-20','Sales'), 
(006,'David','Wilson',456888,'2023-06-25','Engineering'), 
(007,'Sarah','Lee',2300000,'2021-05-30','Customer Service'), 
(008,'Kevin','Clark',89000,'2020-04-10','Research & Development'), 
(009,'Jessica','Martinez',340000,'2019-03-05','Product Management'), 
(010,'Daniel','Taylor',25000,'2022-02-08','Information Technology');

INSERT INTO Worker(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) 
VALUES 
(012,'Aditya','gundigara',28000,'2021-11-11','Finance');

SELECT FIRST_NAME, SUM(SALARY) AS TOTAL_SALARY
FROM Worker 
WHERE WORKER_ID IN (001, 002) 
GROUP BY FIRST_NAME;


SELECT * FROM Worker;
-- SALARY [30000,300000]
SELECT * FROM Worker WHERE SALARY BETWEEN 30000 AND 300000;


-- DEPARTMENT (IN)
SELECT * FROM Worker WHERE DEPARTMENT IN('Finance','Information Technology'); 
SELECT FIRST_NAME FROM Worker WHERE DEPARTMENT IN('Finance','Information Technology'); 
SELECT FIRST_NAME,SALARY,DEPARTMENT FROM Worker WHERE DEPARTMENT IN('Finance','Information Technology'); 


-- NOT IN

SELECT * FROM Worker WHERE DEPARTMENT NOT IN('Finance','Sales'); 

-- ORDER By
SELECT *  FROM Worker order by SALARY;  


-- GROUP BY
SELECT DEPARTMENT,COUNT(DEPARTMENT) FROM Worker GROUP BY DEPARTMENT;

-- AVG SALARY
SELECT DEPARTMENT,AVG(SALARY) FROM Worker GROUP BY DEPARTMENT;
 
 -- MIN
 SELECT DEPARTMENT,MIN(SALARY) FROM Worker GROUP BY DEPARTMENT;
 
  -- MAX
 SELECT DEPARTMENT,MAX(SALARY) FROM Worker GROUP BY DEPARTMENT;

 -- SUM
 SELECT DEPARTMENT,SUM(SALARY) FROM Worker GROUP BY DEPARTMENT;
 
  -- MAX
 SELECT FIRST_NAME,MAX(SALARY) FROM Worker GROUP BY FIRST_NAME;
 
 SELECT DEPARTMENT,COUNT(DEPARTMENT) FROM Worker GROUP BY  DEPARTMENT HAVING COUNT(DEPARTMENT)>=2;
 
 SELECT SALARY,MIN(SALARY) FROM Worker GROUP BY SALARY HAVING MIN(SALARY)>45000;
