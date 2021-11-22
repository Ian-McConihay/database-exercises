Use employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name
FROM employees
GROUP BY full_name, emp_no, last_name, first_name
ORDER BY emp_no, last_name, first_name
SELECT AS DOB
GROUP BY DOB, birth_date
ORDER BY birth_date
LIMIT 10;
