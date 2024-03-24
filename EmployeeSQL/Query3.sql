SELECT dep_managers.dept_no,
departments.dept_name,
employees.emp_no,
employees.last_name, 
employees.first_name
FROM dep_managers 
INNER JOIN employees ON dep_managers.emp_no = employees.emp_no
LEFT JOIN departments ON dep_managers.dept_no = departments.dept_no;
