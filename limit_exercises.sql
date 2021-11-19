USE employees;

SELECT DISTINCT title FROM titles;
# Larry
SELECT DISTINCT last_name FROM employees
ORDER BY last_name
DESC LIMIT 10;


SELECT DISTINCT last_name FROM employees
ORDER BY last_name
DESC LIMIT 10;
#Larry
SELECT emp_no FROM salaries
ORDER BY salary
DESC LIMIT 5 OFFSET 45;

SELECT emp_no FROM salaries
ORDER BY salary
DESC LIMIT 4 OFFSET 46;

