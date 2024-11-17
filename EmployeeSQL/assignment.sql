-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT a.emp_no, a.last_name, a.first_name, b.salary
FROM employees a
JOIN salaries b ON a.emp_no = b.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name
FROM dept_manager a
JOIN departments b ON a.dept_no = b.dept_no
JOIN employees c ON a.emp_no = c.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT  a.dept_no, a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a
JOIN employees b ON a.emp_no = b.emp_no
JOIN departments c ON a.dept_no = c.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN 
(
	SELECT emp_no 
	FROM dept_emp
	WHERE dept_no = 
	(
		SELECT dept_no 
		FROM departments
		WHERE dept_name = 'Sales')
);

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a
JOIN employees b ON a.emp_no = b.emp_no
JOIN departments c ON a.dept_no = c.dept_no
WHERE a.dept_no IN
(
	SELECT dept_no
	FROM departments
	WHERE dept_name IN ('Sales','Development')
);

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT DISTINCT(last_name) AS unique_last_names, COUNT(*) AS frequency
FROM employees
GROUP BY unique_last_names
ORDER BY frequency DESC;
