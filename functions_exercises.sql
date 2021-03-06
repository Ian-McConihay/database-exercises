USE employees;
# SELECT CONCAT(first_name, ' ', last_name)
# AS 'FULL EMPLOYEE NAME'
# FROM employees LIMIT 10 offset 10;

#2
SELECT CONCAT(first_name, ' ', last_name)
AS 'EMPLOYEE FULL NAME'
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY last_name LIKE '%E';

#3
SELECT *
FROM employees
WHERE  month(birth_date) = 12
AND day(birth_date) = 25;

#4
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25;

#5
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

#6
SELECT CONCAT('DAYS AT COMPANY: ', DATEDIFF(NOW(), hire_date)) AS 'days at company'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25;



# SELECT *
# FROM employees
# WHERE year(hire_date) BETWEEN 1990 AND 1999
# AND month(birth_date) = 12
# AND day(birth_date) = 25;
#
#
# SELECT DATEDIFF(NOW(), year(hire_date) BETWEEN 1990 AND 1999
#     AND month(birth_date) = 12
#     AND day(birth_date) = 25);




