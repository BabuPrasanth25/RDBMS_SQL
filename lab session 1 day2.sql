CREATE DATABASE funcDB;
USE funcDB;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    join_date DATE,
    dept VARCHAR(20)
);

INSERT INTO employees VALUES
(1, 'Amit', 30000, '2021-05-10', 'HR'),
(2, 'Ravi', 50000, '2020-03-15', 'IT'),
(3, 'Neha', 70000, '2019-07-20', 'Finance'),
(4, 'Meena', 60000, '2022-01-12', 'IT');

SELECT * FROM employees;

#scalar function:
#Upper case
SELECT UPPER(emp_name) AS Employee_Name
FROM employees;

#length:
SELECT emp_name,
       LENGTH(emp_name) AS Name_Length
FROM employees;

#current_date:
SELECT CURDATE() AS Today_Date;

#current - year:
SELECT emp_name,
       YEAR(CURDATE()) - YEAR(join_date) AS Experience_Years
FROM employees;


#AGGREGATE FUNCTIONS
#Count total number of employees
SELECT COUNT(*) AS Total_Employees
FROM employees;

#average salary
SELECT AVG(salary) AS Average_Salary
FROM employees;

#Display department-wise total salary
SELECT dept,
       SUM(salary) AS Total_Salary
FROM employees
GROUP BY dept;

#Find maximum salary in IT department
SELECT MAX(salary) AS Max_IT_Salary
FROM employees
WHERE dept = 'IT';

#EXPRESSIONS & CASE
#salary using CASE
SELECT emp_name,
CASE
    WHEN salary < 40000 THEN 'Low'
    WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium'
    ELSE 'High'
END AS Salary_Category
FROM employees;

#bonus amt using CASE
SELECT emp_name,salary,
CASE
    WHEN salary >= 60000 THEN salary * 0.10
    ELSE salary * 0.05
END AS Bonus
FROM employees;





