USE employees;
# % is like a break for search. so to find batman '%man' or 'bat%'





SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya' , 'Maya');

SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';


# Part 2
SELECT * FROM employees
WHERE first_name IN ('Irena') OR 'Vidya' OR 'Maya';
