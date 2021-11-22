CREATE DATABASE join_test_dp;
    USE join_test_db;

CREATE TABLE roles (
             id INT UNSIGNED NOT NULL AUTO_INCREMENT,
             name VARCHAR(100) NOT NULL,
             PRIMARY KEY (id)
);

CREATE TABLE users (
             id INT UNSIGNED NOT NULL AUTO_INCREMENT,
             name VARCHAR(100) NOT NULL,
             email VARCHAR(100) NOT NULL,
             role_id INT UNSIGNED DEFAULT NULL,
             PRIMARY KEY (id),
             FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
            ('bob', 'bob@example.com', 1),
            ('joe', 'joe@example.com', 2),
            ('sally', 'sally@example.com', 3),
            ('adam', 'adam@example.com', 3),
            ('jane', 'jane@example.com', null),
            ('mike', 'mike@example.com', null);

# SELECT * FROM users;
# SELECT * FROM roles;
#
# # Inner Join shows all except null
# SELECT users.name as user_name, roles.name as role_name
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# # left Join shows all
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id;
#
# #  Right join not common shows the roles_id and who they are attached to
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id;

#
# Exercises




# Search department name and display it as DEPARTMENT_NAME -----
# then CONCAT the first name and the last and display it under DEPARTMENT_MANAGER

# SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER

# Then go into departments and call it d

# FROM departments as d
#          JOIN dept_manager dm on d.dept_no = dm.dept_no
#          JOIN employees e on dm.emp_no = e.emp_no
# WHERE dm.to_date = '9999-01-01';
SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER
FROM departments as d
         JOIN dept_manager as dm
              on d.dept_no = dm.dept_no
         JOIN employees as e
              on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01';





