USE employees;

SELECT first_name FROM employees
WHERE first_name LIKE 'Z%'
LIMIT 10;

SELECT  salary
FROM salaries
WHERE emp_no ORDER BY emp_no DESC
LIMIT 5;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 25 OFFSET 50;