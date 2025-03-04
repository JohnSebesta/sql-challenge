# sql-challenge
Overview

This challenge involves three main parts: data modeling, data engineering, and data analysis. The goal is to process and manipulate data from CSV files, creating relationships between different data sets and performing various queries to derive insights. The files contain employee-related data, including information about departments, employees, and their respective relationships. By following the steps below, you will be able to create a relational database schema, import the data, and perform queries to analyze the data.

Methodology

Data Modeling
To begin, we inspected the CSV files and sketched an Entity Relationship Diagram (ERD) to understand the relationships between the tables. Using a tool like QuickDBD, we visualized the following entities:

Employees: Contains employee details such as employee number, first name, last name, department number, etc.
Departments: Contains department information such as department number and department name.
Salaries: Contains employee salary details, associated with employee numbers.
Managers: Contains employee numbers that act as managers for specific departments.
The relationships between the tables are as follows:

Employees have a foreign key linking to Departments (Department number).
Salaries link to Employees via employee number.
Managers link to Departments (Department number).
Data Engineering
Once the ERD was established, we moved on to data engineering tasks. The following steps were performed:

Table Schema Creation: For each of the six CSV files, we defined the table schema. Each table includes proper data types, primary keys, foreign keys, and constraints:
Employee Table: Contains employee number (primary key), first name, last name, sex, hire date, etc.
Department Table: Contains department number (primary key), department name.
Salary Table: Contains salary details with employee number as a foreign key.
Manager Table: Contains manager details, linking employees to departments.
Primary and Foreign Keys: We ensured that all tables have unique primary keys, with foreign keys properly defined to maintain referential integrity.
CSV Import: Each CSV file was imported into the corresponding SQL table after creating the schema.
Data Analysis
After the tables were created and the data was imported, we performed various data analysis tasks to extract insights from the data. These tasks included:

Employee Details: Query to list the employee number, last name, first name, sex, and salary for each employee.
Employees Hired in 1986: Query to list the first name, last name, and hire date of employees who were hired in 1986.
Managers and Departments: Query to list the manager of each department along with their department number, department name, employee number, last name, and first name.
Department Number for Employees: Query to list the department number for each employee along with their employee number, last name, first name, and department name.
Employees Named Hercules: Query to list the first name, last name, and sex of each employee whose first name is Hercules and last name starts with "B."
Sales Department Employees: Query to list all employees in the Sales department, including their employee number, last name, and first name.
Sales and Development Employees: Query to list employees from both the Sales and Development departments, including their employee number, last name, first name, and department name.
Last Name Frequency: Query to count the frequency of last names, listed in descending order to show how many employees share the same last name.
Results

The following are the key results and findings from the analysis:

Employee Details: A list of all employees with their number, name, sex, and salary was successfully generated.
Employees Hired in 1986: A filtered list of employees hired in 1986 was produced, showing relevant personal details.
Managers and Departments: Managers were successfully linked to their respective departments, providing the requested employee and department details.
Employee Department Information: A comprehensive list of employees along with their department numbers and names was generated.
Employees Named Hercules: A query filtering employees by the name "Hercules" and the last name starting with "B" was executed successfully.
Sales Department Employees: All employees from the Sales department were listed, providing employee numbers and names.
Sales and Development Department Employees: Employees from both the Sales and Development departments were identified and listed.
Last Name Frequency: The frequency of last names was calculated and displayed, showing which last names were most common among employees.

References

QuickDBD (for sketching ERD diagrams) - https://www.quickdatabasediagrams.com
SQL Documentation (for database design and queries) - https://dev.mysql.com/doc/
CSV Import Tools for SQL - https://www.sqlservercentral.com/articles/how-to-import-csv-files-into-sql-server
The tutor Fred Logan has helped me
Chatgpt
XpertLearning Assistance
