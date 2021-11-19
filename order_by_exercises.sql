USE employees;
# 1
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya' , 'Maya') AND gender = 'M'
ORDER BY first_name DESC;
#2
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya') AND last_name IN ('Acton', 'Boguraev')
ORDER BY last_name DESC, first_name DESC;
# 3
SELECT * FROM employees
WHERE last_name LIKE 'E%'
  ORDER BY last_name LIKE '%E';
# 4
SELECT * FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
# 5
