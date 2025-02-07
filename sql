create database emp_det;

use emp_det;

CREATE TABLE Employee (
    S_no INT PRIMARY KEY AUTO_INCREMENT,
    Employee_ID VARCHAR(10) UNIQUE NOT NULL,
    Employee_Name VARCHAR(50) NOT NULL,
    Dateofbirth DATE,
    Dateofjoining DATE,
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    City VARCHAR(50),
    Address TEXT,
    Department VARCHAR(50),
    Employee_Email VARCHAR(100) UNIQUE,
    Employee_status VARCHAR(20),
    TimeStamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO Employee (Employee_ID, Employee_Name, Dateofbirth, Dateofjoining, Salary, Bonus, City, Address, Department, Employee_Email, Employee_status)
VALUES
('E001', 'Mohan Kumar', '1990-05-12', '2015-06-20', 75000, 5000, 'Chennai', '123, ABC Street', 'IT', 'mohan@gmail.com', 'Active'),
('E002', 'Rajesh Kumar', '1992-07-19', '2018-03-15', 68000, 4000, 'Bangalore', '456, XYZ Road', 'HR', 'rajesh@gmail.com', 'Active'),
('E003', 'Meena R', '1995-11-02', '2019-09-10', 62000, 3000, 'Mumbai', '789, PQR Lane', 'Finance', 'meena@gmail.com', 'Active'),
('E004', 'Dinesh Kumar', '1988-01-24', '2012-12-01', 85000, 7000, 'Chennai', '234, LMN Street', 'Admin', 'dinesh@gmail.com', 'Active'),
('E005', 'Anjali S', '1993-06-17', '2017-08-05', 55000, 2500, 'Delhi', '567, UVW Colony', 'Marketing', 'anjali@gmail.com', 'Inactive'),
('E006', 'Manoj Varma', '1994-02-10', '2020-01-20', 78000, 5000, 'Chennai', '910, GHI Block', 'IT', 'manoj@gmail.com', 'Active'),
('E007', 'Karthik Raja', '1989-09-15', '2011-06-18', 92000, 8000, 'Hyderabad', '123, STU Square', 'Sales', 'karthik@gmail.com', 'Active'),
('E008', 'Priya D', '1996-03-22', '2021-04-01', 64000, 3200, 'Pune', '890, JKL Sector', 'HR', 'priya@gmail.com', 'Active'),
('E009', 'Madhavan', '1987-12-29', '2010-05-10', 97000, 8500, 'Chennai', '234, OPQ Avenue', 'IT', 'madhavan@gmail.com', 'Active'),
('E010', 'Divya K', '1991-08-09', '2016-07-25', 69000, 3500, 'Kolkata', '111, RST Park', 'Finance', 'divya@gmail.com', 'Inactive');


ALTER TABLE Employee CHANGE COLUMN Employee_Email Email VARCHAR(100);

ALTER TABLE Employee ADD COLUMN Phone_Number VARCHAR(15);
SELECT * FROM Employee;

ALTER TABLE Employee MODIFY COLUMN Salary DECIMAL(12,2);
UPDATE Employee SET Phone_Number = '9876543210' WHERE Employee_ID = 'E001';

ALTER TABLE Employee DROP COLUMN Bonus;

DELETE FROM Employee WHERE Employee_ID = 'E005';

SELECT * FROM Employee WHERE Employee_Name LIKE 'M%';

SELECT * FROM Employee WHERE Salary > 70000;

SELECT * FROM Employee WHERE City = 'Chennai';

SELECT * FROM Employee WHERE Salary > 70000 AND City = 'Chennai';

SELECT * FROM Employee WHERE Department = 'IT' OR Department = 'HR';

SELECT MIN(Salary) AS MinSalary FROM Employee;
SELECT MAX(Salary) AS MaxSalary FROM Employee;
SELECT COUNT(*) AS EmployeeCount FROM Employee;
SELECT SUM(Salary) AS TotalSalary FROM Employee;
SELECT AVG(Salary) AS AverageSalary FROM Employee;

SELECT * FROM Employee WHERE Salary BETWEEN 60000 AND 90000;
SELECT * FROM Employee WHERE Employee_Name LIKE '%Kumar%';

TRUNCATE TABLE Employee;



