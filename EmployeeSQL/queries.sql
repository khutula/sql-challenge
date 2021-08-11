-- Employee Details: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees AS e
JOIN Salaries AS s USING (emp_no);

-- First name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Manager Details: dept number, dept name, manager employee number, last name, first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Department_Managers AS dm
JOIN Departments AS d USING (dept_no)
JOIN Employees AS e USING (emp_no);

-- Employee Departments: employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Department_Employees AS de
JOIN Departments AS d USING (dept_no)
JOIN Employees AS e USING (emp_no);

-- Hercules B: first name, last name, sex
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Sales Department: employee number, last name, first name, dept name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Department_Employees AS de
JOIN Departments AS d USING (dept_no)
JOIN Employees AS e USING (emp_no)
WHERE d.dept_name = 'Sales';