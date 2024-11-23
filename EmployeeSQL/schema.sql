-- drop table if exists
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;


--departments table
CREATE TABLE departments(
dept_no VARCHAR(4) PRIMARY KEY, -- PK designation auto-sets NOT NULL
dept_name VARCHAR(255) NOT NULL
);

--titles table
CREATE TABLE titles(
title_id VARCHAR(5) PRIMARY KEY, -- PK designation auto-sets NOT NULL
title VARCHAR(255) NOT NULL
);

--employees table
CREATE TABLE employees(
emp_no INT PRIMARY KEY, -- PK designation auto-sets NOT NULL
emp_title_id VARCHAR(5) NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
birth_date DATE NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL
);

--dept_emp table
CREATE TABLE dept_emp(
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (emp_no,dept_no) -- composite key comprised of both columns
);

--dept_manager table
CREATE TABLE dept_manager(
dept_no VARCHAR(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (dept_no,emp_no) -- composite key comprised of both columns
);

--salaries table
CREATE TABLE salaries(
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INT NOT NULL,
PRIMARY KEY(emp_no,salary) -- composite key comprised of both columns
);