CREATE DATABASE Emp;

USE Emp;

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(100) UNIQUE
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DeptID) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    Salary DECIMAL(10,2),
    EffectiveDate DATE,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID) on DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Promotions (
    PromoID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    OldSalary DECIMAL(10,2),
    NewSalary DECIMAL(10,2),
    PromoDate DATE,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID) on DELETE SET NULL ON UPDATE CASCADE
);


INSERT INTO Departments (DeptName) VALUES 
('HR'),
('IT'),
('Finance'),
('Marketing'),
('Sales'),
('Operations');

select * from Departments;

INSERT INTO Employees (Name, Age, DepartmentID, Salary, HireDate) VALUES 
('John Doe', 30, 2, 60000, '2022-05-10'),
('Jane Smith', 28, 1, 50000, '2023-01-15'),
('Michael Johnson', 35, 3, 70000, '2021-07-20'),
('Emily Davis', 27, 4, 48000, '2023-03-10'),
('Robert Brown', 40, 5, 75000, '2019-08-05'),
('Sophia Wilson', 29, 6, 55000, '2022-09-12'),
('David Martinez', 31, 2, 62000, '2021-06-15'),
('Olivia Anderson', 26, 3, 53000, '2023-04-05'),
('Daniel Thomas', 33, 4, 68000, '2020-11-10'),
('Isabella Moore', 25, 5, 47000, '2023-05-01'),
('William Taylor', 37, 1, 78000, '2018-12-20'),
('Emma Harris', 32, 6, 64000, '2021-07-30'),
('James White', 45, 2, 90000, '2017-02-18'),
('Charlotte Lee', 30, 3, 58000, '2022-06-25'),
('Benjamin Clark', 28, 4, 50000, '2023-01-10'),
('Amelia Hall', 36, 5, 72000, '2020-09-15'),
('Alexander Lewis', 29, 6, 59000, '2022-12-10'),
('Mia Young', 31, 1, 55000, '2021-05-05'),
('Ethan King', 39, 2, 86000, '2019-03-20'),
('Harper Wright', 27, 3, 52000, '2023-06-10'),
('Lucas Scott', 34, 4, 70000, '2020-08-15'),
('Avery Green', 29, 5, 58000, '2022-11-30'),
('Henry Adams', 42, 6, 79000, '2018-04-12'),
('Evelyn Baker', 26, 1, 53000, '2023-07-05'),
('Jack Nelson', 38, 2, 82000, '2019-01-20'),
('Sofia Carter', 33, 3, 56000, '2022-10-10'),
('Liam Mitchell', 30, 4, 65000, '2021-09-05'),
('Chloe Perez', 28, 5, 51000, '2023-02-20'),
('Samuel Roberts', 44, 6, 85000, '2017-05-15'),
('Ella Turner', 27, 1, 54000, '2023-08-10'),
('Daniel Phillips', 31, 2, 63000, '2021-12-15'),
('Madison Campbell', 29, 3, 59000, '2022-09-20'),
('Logan Evans', 35, 4, 68000, '2020-10-25'),
('Grace Edwards', 28, 5, 55000, '2023-03-01'),
('Ryan Collins', 40, 6, 78000, '2019-07-12'),
('Zoey Stewart', 26, 1, 52000, '2023-09-05'),
('Nathan Morris', 37, 2, 77000, '2018-06-20'),
('Scarlett Rogers', 32, 3, 57000, '2022-05-10'),
('Dylan Reed', 30, 4, 66000, '2021-11-30'),
('Victoria Cook', 27, 5, 53000, '2023-04-15'),
('Leo Bell', 41, 6, 81000, '2018-03-20'),
('Layla Bailey', 25, 1, 50000, '2023-10-10'),
('Isaac Rivera', 34, 2, 69000, '2020-07-15'),
('Lillian Cooper', 29, 3, 58000, '2022-08-05'),
('Carter Richardson', 33, 4, 64000, '2021-06-10'),
('Penelope Cox', 26, 5, 52000, '2023-05-01'),
('Gabriel Howard', 39, 6, 75000, '2019-02-20'),
('Hannah Ward', 27, 1, 53000, '2023-11-05');

select * from Employees;

INSERT INTO Salaries (EmpID, Salary, EffectiveDate)
SELECT EmpID, Salary, HireDate FROM Employees;

select * from Salaries;

INSERT INTO Promotions (EmpID, OldSalary, NewSalary, PromoDate) VALUES
(1, 60000, 65000, '2023-07-01'),
(3, 70000, 75000, '2023-06-15'),
(7, 62000, 67000, '2023-08-10'),
(12, 64000, 69000, '2023-05-20'),
(18, 55000, 60000, '2023-09-30'),
(22, 70000, 75000, '2023-04-10'),
(27, 65000, 70000, '2023-03-25'),
(32, 68000, 73000, '2023-10-05'),
(38, 66000, 71000, '2023-02-15'),
(44, 64000, 69000, '2023-01-20');

select * from Promotions;

#####

-- Create Database
CREATE DATABASE Emp;
USE Emp;

-- Create Departments Table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(100) UNIQUE
);

-- Create Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DeptID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Create Salaries Table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    Salary DECIMAL(10,2),
    EffectiveDate DATE,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Create Promotions Table
CREATE TABLE Promotions (
    PromoID INT PRIMARY KEY AUTO_INCREMENT,
    EmpID INT,
    OldSalary DECIMAL(10,2),
    NewSalary DECIMAL(10,2),
    PromoDate DATE,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Indexing for Optimization
CREATE INDEX idx_dept ON Employees(DepartmentID);
CREATE INDEX idx_empID ON Employees(HireDate);

-- Creating a View
CREATE VIEW EmpInfo AS
SELECT 
	ROW_NUMBER() OVER(ORDER BY e.HireDate) AS No,
	e.Name, e.Age, e.Salary, d.DeptName, e.HireDate, p.PromoDate,
	YEAR(CURDATE()) - YEAR(e.HireDate) AS Tenure
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DeptID
LEFT JOIN Promotions p ON e.EmpID = p.EmpID;

-- Stored Procedure: Salary Update
DELIMITER $$  
CREATE PROCEDURE Sal_update(IN empID INT, IN new_sal INT)  
BEGIN  
	DECLARE old_sal INT;
    SELECT Salary INTO old_sal FROM Salaries WHERE EmpID = empID LIMIT 1;
    
	INSERT INTO Promotions(EmpID, OldSalary, NewSalary, PromoDate)  
	VALUES(empID, old_sal, new_sal, CURDATE());
	
	UPDATE Salaries SET Salary = new_sal WHERE EmpID = empID;
    UPDATE Employees SET Salary = new_sal WHERE EmpID = empID;
END $$  
DELIMITER ;

-- Stored Procedure: Employee Transfer to Another Department
DELIMITER $$  
CREATE PROCEDURE transfer(IN empID INT, IN new_deptID INT)  
BEGIN  
    UPDATE Employees SET DepartmentID = new_deptID WHERE EmpID = empID;
END $$  
DELIMITER ;

-- Trigger: Auto-insert into Salaries Table when Employee is Added
DELIMITER $$  
CREATE TRIGGER auto_salary AFTER INSERT ON Employees  
FOR EACH ROW  
BEGIN  
	INSERT INTO Salaries(EmpID, Salary, EffectiveDate)  
    VALUES (NEW.EmpID, NEW.Salary, NEW.HireDate);
END $$  
DELIMITER ;

-- Stored Procedure: Percentage-Based Salary Promotion
DELIMITER $$  
CREATE PROCEDURE promotion_by_per(IN empID INT, IN per DECIMAL(4,2))  
BEGIN  
    DECLARE old_sal DECIMAL(10,2);
    DECLARE new_sal DECIMAL(10,2);
    
    -- Get the current salary
    SELECT Salary INTO old_sal FROM Salaries WHERE EmpID = empID LIMIT 1;
    
    -- Calculate new salary
    SET new_sal = old_sal * (1 + per / 100);
    
    -- Insert into Promotions table
    INSERT INTO Promotions(EmpID, OldSalary, NewSalary, PromoDate)
    VALUES(empID, old_sal, new_sal, CURDATE());
    
    -- Update Salaries and Employees table
    UPDATE Salaries SET Salary = new_sal WHERE EmpID = empID;
    UPDATE Employees SET Salary = new_sal WHERE EmpID = empID;
END $$  
DELIMITER ;





