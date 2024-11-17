DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
dept_no VARCHAR(4) PRIMARY KEY,
dept_name VARCHAR(255)
);

DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
title_id VARCHAR(5) PRIMARY KEY,
title VARCHAR(255)
);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(5),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
birth_date DATE,
first_name VARCHAR(255),
last_name VARCHAR(255),
sex VARCHAR(1),
hire_date DATE);

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(4),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
dept_no VARCHAR(4),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INT
);