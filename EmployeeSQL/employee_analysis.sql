-- This is my code for analysis of dataframes in SQL

SELECT employees.emp_no, lastname, first_name, sex, salary FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT first_name, lastname, hire_date FROM employees
WHERE hire_date > '1985-12-31' 
AND hire_date < '1987-01-01';

SELECT dept_manager.dept_no, department.dept_name, dept_manager.emp_no, employees.first_name, employees.lastname, employees.emp_no FROM dept_manager
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no
INNER JOIN department ON department.dept_no = dept_manager.dept_no;

SELECT department.dept_name, employees.first_name, employees.lastname, employees.emp_no FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN department ON department.dept_no = dept_emp.dept_no;

SELECT first_name, lastname, sex FROM employees
WHERE first_name = 'Hercules'
AND lastname LIKE 'B%';

SELECT department.dept_name, employees.first_name, employees.lastname, employees.emp_no FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN department ON department.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

SELECT department.dept_name, employees.first_name, employees.lastname, employees.emp_no FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN department ON department.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT COUNT(*), lastname FROM employees GROUP BY lastname
ORDER BY COUNT(*) DESC;


