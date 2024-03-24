SELECT dep_employees.dept_no,
employees.emp_no,
employees.last_name, 
employees.first_name,
departments.dept_name
FROM dep_employees 
INNER JOIN employees ON dep_employees.emp_no = employees.emp_no
LEFT JOIN departments ON dep_employees.dept_no = departments.dept_no;
