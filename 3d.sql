CREATE VIEW emp_dept_view AS
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
SELECT * FROM emp_dept_view;

SELECT emp_name, salary
FROM emp_dept_view
WHERE dept_name = 'IT';
UPDATE emp_dept_view
SET salary = salary + 5000
WHERE emp_name = 'Amit';
CREATE MATERIALIZED VIEW emp_salary_summary
BUILD IMMEDIATE
REFRESH FAST ON COMMIT
AS
SELECT dept_id, COUNT(*) AS emp_count, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;
SELECT * FROM emp_salary_summary;

SELECT dept_id, avg_salary
FROM emp_salary_summary
WHERE emp_count > 1;
