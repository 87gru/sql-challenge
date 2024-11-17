--departments table
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
dept_no VARCHAR(4) PRIMARY KEY,
dept_name VARCHAR(255) NOT NULL
);

--titles table
DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
title_id VARCHAR(5) PRIMARY KEY,
title VARCHAR(255) NOT NULL
);

--employees table
DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(5),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
birth_date DATE NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL);

--dept_emp table
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(4),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no,dept_no) -- composite key comprised of both columns
);

--dept_manager table
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
dept_no VARCHAR(4),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (dept_no,emp_no) -- composite key comprised of both columns
);

--salaries table
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INT NOT NULL,
PRIMARY KEY(emp_no,salary) -- composite key comprised of both columns
);