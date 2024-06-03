		CREATE DATABASE Testjoin;
		USE TESTJOIN;
		
		CREATE TABLE PROJECT (
		id INT PRIMARY KEY,
		empId INT,
		name VARCHAR(255),
		startdate DATE,
		clientId INT 
		);
		
		CREATE TABLE Emp(
		id INT PRIMARY KEY,
		Fname VARCHAR(255),
		lname VARCHAR(255),
		Age INT,
		emailID VARCHAR(255),
		PhoneNumber INT,
		City VARCHAR(10)
		);
		
		 CREATE TABLE CLIENT(
		id INT PRIMARY KEY,
		Fname VARCHAR(255),
		lname VARCHAR(255),
		Age INT,
		emailID VARCHAR(255),
		PhoneNumber INT,
		empId INT,
		FOREIGN KEY (empId) REFERENCES PROJECT(EMPID)
		);
		
	 
		INSERT INTO EMP (id, Fname, lname, Age, emailID, PhoneNumber, City) VALUES
    (1, "Aman", "proto", 23, "aman12@gmail.com", 323, "Delhi"),
    (2, "yaga", "aef", 42, "aek@gmail.com", 2424, "Mumbai"),
    (3, "yoyo", "honey", 35, "yyp@gmail.com", 235665, "Mumbai"),
    (4, "sign", "honey", 30, "hh@gmail.com", 23555, "Raipur");
    
    
    
    SELECT EMP 
    
    INSERT INTO CLIENT (id, Fname, lname, Age, emailID, PhoneNumber, empId) VALUES
    (1, "John", "Doe", 30, "john@example.com", 123456789, 3),
    (2, "Jane", "Smith", 25, "jane@example.com", 987654321, 3),
    (3, "Alice", "Johnson", 35, "alice@example.com", 555555555, 1),
    (4, "Bob", "Brown", 40, "bob@example.com", 444444444, 5),
    (5, "Charlie", "Wilson", 28, "charlie@example.com", 666666666, 2);
    
    
    INSERT INTO PROJECT (id, empId, name, startdate, clientId) VALUES
    (1, 1, 'A', '2024-01-01', 3),
    (2, 2, 'B', '2024-02-01', 1),
    (3, 3, 'C', '2024-03-01', 5),
    (4, 3, 'D', '2024-04-01', 2),
    (5, 5, 'E', '2024-05-01', 3);


