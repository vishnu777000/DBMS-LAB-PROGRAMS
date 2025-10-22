SELECT emp_name FROM employees1
UNION
SELECT emp_name FROM employees2;


SELECT emp_name FROM employees1
UNION ALL
SELECT emp_name FROM employees2;


SELECT emp_name FROM employees1
INTERSECT
SELECT emp_name FROM employees2;


SELECT emp_name FROM employees1
EXCEPT
SELECT emp_name FROM employees2;
