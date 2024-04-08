CREATE TABLE departments(
dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
dept_name VARCHAR(30)
);
SELECT * FROM departments;



CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR(30)NOT NULL,
FOREIGN KEY(dept_no)REFERENCES departments(dept_no)

);
SELECT * FROM dept_emp;


CREATE TABLE dept_manager(
dept_no VARCHAR(30),
emp_no INT PRIMARY KEY NOT NULL,
FOREIGN KEY (dept_no)REFERENCES departments(dept_no)
);
SELECT * FROM dept_manager;


CREATE TABLE titles(
title_id VARCHAR(30) PRIMARY KEY NOT NULL,
title VARCHAR(30)
);
SELECT * FROM titles;


CREATE TABLE employees(
emp_no INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(30),
birth_date DATE,
first_name VARCHAR(30),
last_name VARCHAR(30),
sex VARCHAR(10),
hire_date DATE,
FOREIGN KEY (emp_title_id)REFERENCES titles(title_id)
);
SELECT * FROM employees;


CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT,
FOREIGN KEY(emp_no)REFERENCES employees(emp_no)

);
SELECT * FROM salaries;













