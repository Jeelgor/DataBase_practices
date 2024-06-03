CREATE DATABASE Temp;
USE Temp;

CREATE TABLE Customer (
id integer PRIMARY KEY,
cname VARCHAR(255),
Address VARCHAR(255),
Gender CHAR(2),
City VARCHAR(12),
Pincode INT
);

CREATE TABLE Order_details(
Order_id INT PRIMARY KEY,
delivery_data DATE,
cust_id INT,
FOREIGN KEY(cust_id) references Customer(id)
);

INSERT INTO Order_details 
VALUES(001,'2020-12-12',123),
(002,'2020-12-12',124),
(003,'2020-12-12',125);
DESC Customer;
DESC Order_details;

SELECT  C.id,C.cname,O.Order_id  FROM Customer as C LEFT JOIN Order_details as O ON C.id=O.cust_id;


INSERT INTO Customer VALUES
(123,'Jeel','Punitnagar','M','RAJKOT',360004),
(124,'John','Main Street','M','NEW YORK',10001),
(125,'Emily','Oak Avenue','F','LOS ANGELES',90001),
(126,'Michael','Elm Street','M','CHICAGO',60601),
(127,'Sophia','Cedar Lane','F','HOUSTON',77001),
(128,'William','Maple Avenue','M','PHOENIX',85001),
(129,'Emma','Pine Street','F','PHILADELPHIA',19101),
(130,'Alexander','Birch Road','M','SAN ANTONIO',78201),
(131,'Olivia','Cherry Lane','F','SAN DIEGO',92101),
(132,'James','Spruce Drive','M','DALLAS',75201);


REPLACE INTO Customer (id,cname) VALUES(123,'Gor');

SELECT * FROM Customer;

INSERT INTO Customer VALUES
(1234,'Jeel3','Punitnagar','M','RAJKOT',NULL);