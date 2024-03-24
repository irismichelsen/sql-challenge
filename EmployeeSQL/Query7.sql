SELECT dep_employees.emp_no, 
employees.last_name, 
employees.first_name, 
departments.dept_name
FROM dep_employees
JOIN employees ON dep_employees.emp_no = employees.emp_no
JOIN departments ON dep_employees.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007' OR departments.dept_no = 'd005';
