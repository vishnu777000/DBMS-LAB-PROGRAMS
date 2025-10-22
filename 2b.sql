CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (emp_id, emp_name, department, salary) VALUES
(1, 'Amit', 'HR', 40000),
(2, 'Ravi', 'IT', 55000),
(3, 'Sneha', 'Finance', 60000),
(4, 'Priya', 'IT', 50000),
(5, 'Karan', 'HR', 45000),
(6, 'Anita', 'Finance', 65000),
(7, 'Raj', 'IT', 70000);
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department;

SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 50000;
