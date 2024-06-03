USE student;
CREATE TABLE stu (
Id INT PRIMARY KEY,
name varchar(50),
Subject varchar(50),
Marks INT
);

INSERT INTO stu (Id,name,Subject,Marks) VALUES
(1,"Jeel","C++",45),
(2,"Parth","Python",30),
(3,"Harit","Java",50),
(4,"Bob","Flutter",60),
(5,"Jeel","C++",55);

SELECT DISTINCT name FROM stu WHERE Marks > 40;