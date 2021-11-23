use employees;

select * from dept_manager where to_date > NOW();




# Q1
SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    where hire_date = '1990-10-22'
);