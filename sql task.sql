CREATE DATABASE EMP;
use EMP;
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    HireDate DATE,
    Active BOOLEAN
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Salary, HireDate, Active)
VALUES
(1, 'John', 'Doe', 'HR', 50000, '2020-01-15', TRUE),
(2, 'Jane', 'Smith', 'IT', 60000, '2019-03-10', TRUE),
(3, 'Michael', 'Brown', 'Finance', 70000, '2018-07-20', TRUE),
(4, 'Emily', 'Davis', 'IT', 55000, '2021-05-30', FALSE),
(5, 'James', 'Wilson', 'HR', 48000, '2021-09-12', TRUE),
(6, 'Linda', 'Martinez', 'Finance', 72000, '2020-11-05', FALSE),
(7, 'David', 'Anderson', 'IT', 65000, '2019-06-25', TRUE),
(8, 'Jennifer', 'Lee', 'Finance', 62000, '2016-10-30', TRUE),
(9, 'Robert', 'Clark', 'HR', 68000, '2018-12-05', TRUE),
(10, 'Maria', 'Lewis', 'IT', 53000, '2017-02-18', FALSE);


select * from employee;


-- Basic SELECT Statement:
-- Write a query to retrieve all columns for employees in the IT department.

SELECT * 
FROM Employee
WHERE Department = 'IT';


-- . SELECT DISTINCT:
-- Write a query to retrieve distinct departments from the Employees table.


select distinct Department from employee;

-- . WHERE Clause:
-- Write a query to retrieve employees who have a salary greater than 60000

select salary from Employee
where salary > 60000;

-- . ORDER BY Clause:
-- Write a query to retrieve all employees, ordered by their HireDate in descending order.

select * from employee
order by HireDate;

-- 5. AND Operator:
-- Write a query to retrieve employees from the Finance department who are also currently active

select * from employee where department = "Finance" and Active = 1;

-- OR Operator:
-- Write a query to retrieve employees who are either in the HR department or have a salary less than 55000.

select * from employee where department = 'HR' or salary < 55000;

-- NOT Operator:
-- Write a query to retrieve employees who are not in the IT department.

select * from employee where department != "IT";

-- INSERT INTO Statement:
-- Write a query to insert a new employee into the Employees table.

INSERT INTO Employee (EmployeeID, FirstName, LastName, Department, Salary, HireDate, Active)
VALUES (11, 'Hash', 'Include', 'Marketing', 58000, '2023-08-12', 1);

-- NULL Values:
-- Write a query to update an employee's department to NULL where the EmployeeIDis 5.

update employee set department = null where EmployeeID = 5;

-- . DELETE Statement:
-- Write a query to delete employees who are not currently active.

DELETE FROM Employee WHERE Active = 0;

-- . LIKE Operator:
-- Write a query to retrieve employees whose first name starts with the letter 'J'

SELECT *FROM Employee WHERE FirstName LIKE 'J%';

-- BETWEEN Operator:
-- Write a query to retrieve employees whose salaries are between 50,000 and 60,000 inclusive.

select * from employee where salary between 50000 and 60000;

-- . IN Operator:
-- • Write a query to retrieve employees who are in the 'HR' or 'Finance' departments

SELECT * FROM Employee
WHERE Department IN ('HR', 'Finance');


-- Aggregate Functions (COUNT)
-- Write a query to count the number of employees in each department.
SELECT Department, COUNT(*) AS Employee_Count FROM Employee
GROUP BY Department;

-- 16. Aggregate Functions (SUM):
-- Write a query to calculate the total salary of all employees in the 'IT' department
SELECT SUM(Salary) AS TotalSalary FROM Employee
WHERE Department = 'IT';

-- 17. Aggregate Functions (AVG):
-- Write a query to find the average salary of active employees.
SELECT AVG(Salary) AS AverageSalary FROM Employee
WHERE Active = TRUE;

-- 18. Aggregate Functions (MIN and MAX):
-- Write a query to find the minimum and maximum salary in the 'Finance' department.
SELECT MIN(Salary) AS MinimumSalary, MAX(Salary) AS MaximumSalary FROM Employee
WHERE Department = 'Finance';

-- 19. JOIN with another table (Assuming there's a Departments table):
-- Write a query to retrieve all employees along with their department names.
SELECT * FROM Employee;
-- creating a new department table to join employee table with it .
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
-- to retrieve all employees along with their department names.
SELECT e.*, d.DepartmentName
FROM Employee e
inner JOIN Department d ON e.Department = d.DepartmentName;

-- 20. Subquery:
-- Write a query to retrieve employees who earn more than the average salary of the 'HR' department.
SELECT *
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
    WHERE Department = 'HR'
);





