CREATE DATABASE DML_ASSNMNT;
USE DML_ASSNMNT;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(35),
    Last_Name VARCHAR(35),
    DOB DATE,
    Age INT CHECK (Age >=20),  # Ensuring Age is a valid value
    Last_Update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1),  # 'M' for Male, 'F' for Female, etc.
    Department VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL);
    
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES 
(1, 'SACHIN', 'SATHEESH', '1980-05-15', 44, 'M', 'HR', 75000.00),
(2, 'ABHIN', 'THOMOS', '1985-08-22', 39, 'F', 'IT', 85000.00),
(3, 'ASHNA', 'SINDU', '1990-02-10', 34, 'M', 'Finance', 95000.00),
(4, 'NANDITHA', 'SANTHOSH', '1992-12-01', 31, 'F', 'Marketing', 72000.00),
(5, 'RAVI', 'NADH', '1987-06-18', 37, 'M', 'Sales', 32000.00),
(6, 'VINOD', 'KUMAR', '1995-11-05', 28, 'F', 'Operations', 78000.00),
(7, 'NIDHA', 'RAJEEV', '1975-03-25', 49, 'M', 'IT', 90000.00),
(8, 'AKSHAY', 'KRISHNAN', '1993-07-14', 31, 'F', 'HR', 73000.00),
(9, 'RAJITHA', 'BALA', '1988-09-30', 36, 'M', 'Finance', 85000.00),
(10, 'AALIYA', 'GEORGE', '1991-04-17', 33, 'F', 'Marketing', 78000.00);  

SELECT First_Name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;  

SELECT Manager_Id, First_Name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;

SELECT *FROM Managers
WHERE First_Name != 'Aaliya';

SELECT *FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

SELECT *FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;
    
    
    
    
    