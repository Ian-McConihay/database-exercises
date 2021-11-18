USE employees;
# % is like a break for search. so to find batman '%man' or 'bat%'




# Part 1
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya' , 'Maya');

SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';


# Part 2
SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR  first_name ='Maya';

SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR  first_name ='Maya' OR gender = 'M';

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';





