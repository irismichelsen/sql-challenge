SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
employees.sex,
emp_salaries.salary
FROM employees INNER JOIN emp_salaries 
ON employees.emp_no = emp_salaries.emp_no;