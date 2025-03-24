USE Emp;

-- Delete Specific Employee
DELETE FROM Employees WHERE EmpID = 1;

-- Delete Specific Promotion Record
DELETE FROM Promotions WHERE EmpID = 3;

-- Drop Stored Procedures
DROP PROCEDURE IF EXISTS Sal_update;
DROP PROCEDURE IF EXISTS transfer;
DROP PROCEDURE IF EXISTS promotion_by_per;

-- Drop Triggers
DROP TRIGGER IF EXISTS auto_salary;

-- Drop Views
DROP VIEW IF EXISTS EmpInfo;

-- Drop Tables
DROP TABLE IF EXISTS Promotions;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

-- Drop Database
DROP DATABASE IF EXISTS Emp;
