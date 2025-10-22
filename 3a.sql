SELECT * 
FROM employees 
NATURAL JOIN departments;
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e, departments d
WHERE e.dept_id = d.dept_id;
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT OUTER JOIN departments d
ON e.dept_id = d.dept_id;
SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT OUTER JOIN departments d
ON e.dept_id = d.dept_id;
SELECT e.emp_name, d.dept_name
FROM employees e
FULL OUTER JOIN departments d
ON e.dept_id = d.dept_id;
