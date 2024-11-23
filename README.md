# sql-challenge

## Background
Per the BootcampSpot assignment:

> It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
> 
> For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Assignment Breakdown

### Data Modeling
I started the assignment by inspecting the CSV files to note commonalities between the files, then proceeded to create an Entity Relationship Diagram (ERD).

### Data Engineering
Once I finalized the ERD, I prepared a table schema that creates 6 tables. I designated a primary key for each table and ensured that foreign keys were correctly refercing their respective primary tables. I accurately defined the data type and value length for all columns. Afterward, I imported the data into appropriate tables from the CSV files.

### Data Analysis
I created queries that provide data for below prompts:
  1. List the employee number, last name, first name, sex, and salary of each employee.
  2. List the first name, last name, and hire date for the employees who were hired in 1986.
  3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
  4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  6. List each employee in the Sales department, including their employee number, last name, and first name.
  7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Repository Breakdown
Included in this repository are the following items:
  - README.md
  - .gitignore
  - Resources directory containing 6 CSV files with the data to populate tables
  - EmployeeSQL directory
    - schema.sql
    - analysis.sql
    - employees_db_ERD.png
