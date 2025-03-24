USE Emp;

-- Select all tables
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Salaries;
SELECT * FROM Promotions;

-- Get Employee Details with Department Names
SELECT e.EmpID, e.Name, e.Age, d.DeptName, e.Salary, e.HireDate 
FROM Employees e 
INNER JOIN Departments d ON e.DepartmentID = d.DeptID
ORDER BY e.HireDate;  

-- Department-wise Salary Statistics
SELECT d.DeptName, COUNT(*) AS Employees, AVG(e.Salary) AS AVG_Salary, 
	MAX(e.Salary) AS MAX_Salary, MIN(e.Salary) AS MIN_Salary, 
    ROUND(AVG(e.Age)) AS AVG_Age, MAX(e.Age) AS MAX_Age, MIN(e.Age) AS MIN_Age 
FROM Employees e 
INNER JOIN Departments d ON e.DepartmentID = d.DeptID
GROUP BY d.DeptName;

-- Top 5 Employees with Highest Salaries
WITH top5_salaries AS (
	SELECT DENSE_RANK() OVER(ORDER BY Salary DESC) ranking, Name, Age, Salary
	FROM Employees
)
SELECT * FROM top5_salaries WHERE ranking < 6;

-- Department-wise Top 3 Salaries
WITH dept_wise_top3_salaries AS (
	SELECT DENSE_RANK() OVER(PARTITION BY d.DeptName ORDER BY e.Salary DESC) ranking,
        e.Name, d.DeptName, e.Salary
    FROM Employees e
    INNER JOIN Departments d ON e.DepartmentID = d.DeptID
)
SELECT * FROM dept_wise_top3_salaries WHERE ranking < 4;

-- Update Salary via Procedure
CALL Sal_update(1, 68000);

-- Transfer Employee to New Department
CALL transfer(3, 5);

-- Call Procedure: Give a 10% Salary Raise to Employee with ID 3
CALL promotion_by_per(3, 10);




