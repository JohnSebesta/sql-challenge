# sql-challenge
Part 1: Data Modeling
Inspect the CSV files: Examine the structure and content of each CSV file.
Create an Entity Relationship Diagram (ERD): Sketch an ERD to represent the relationships between the tables. Use tools like QuickDBD to visualize the schema.
Part 2: Data Engineering
Create SQL Tables: For each CSV file, create a table schema in SQL. Consider the following:
Define appropriate data types, primary keys, foreign keys, and other constraints.
Ensure that the primary keys are unique; if not, use a composite key to uniquely identify a row.
Create the tables in the correct order to maintain the foreign key relationships.
Import the Data: Use SQL's LOAD DATA INFILE or similar methods to import each CSV file into the corresponding SQL table.
Part 3: Data Analysis
After importing the data into the SQL database, run the following queries to answer the business questions:

Employee Information: List the employee number, last name, first name, sex, and salary for each employee.
Employees Hired in 1986: List the first name, last name, and hire date for employees hired in 1986.
Department Managers: List the manager of each department along with their department number, department name, employee number, last name, and first name.
Employee Department Info: List the department number for each employee along with their employee number, last name, first name, and department name.
Employees Named Hercules: List the first name, last name, and sex of each employee whose first name is Hercules and whose last name starts with the letter 'B'.
Sales Department Employees: List each employee in the Sales department, including their employee number, last name, and first name.
Sales and Development Employees: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Employee Last Name Frequency: List the frequency counts of all employee last names, sorted in descending order.
