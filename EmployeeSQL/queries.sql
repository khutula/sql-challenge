-- Employee Details: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees AS e
JOIN Salaries AS s USING (emp_no);

-- First name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';