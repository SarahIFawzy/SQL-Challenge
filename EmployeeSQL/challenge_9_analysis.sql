-- Question 1: 
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, first_name, last_name, sex, salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no

-- Question 2: 
-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE DATE_PART('year',hire_date::date) = 1986

-- Question 3: 
-- List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name.
SELECT dept_manager.dept_no, dept_name, last_name, first_name
FROM dept_manager
INNER JOIN departments on dept_manager.dept_no = departments.dept_no
INNER JOIN employees on dept_manager.mgr_no = employees.emp_no

-- Question 4: 
-- List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name.
SELECT dept_emp.emp_no, dept_emp.dept_no, last_name, first_name, dept_name
FROM dept_emp
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no

-- Question 5: 
-- List first name, last name, and sex of each employee whose first name is Hercules and whose 
-- last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- Question 6: 
-- List each employee in the Sales department, including their employee number, last name, and 
-- first name.
SELECT dept_emp.emp_no, last_name, first_name
FROM departments
INNER JOIN dept_emp on departments.dept_no = dept_emp.dept_no
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales'

-- Question 7: 
-- List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT dept_emp.emp_no, last_name, first_name, dept_name
FROM departments
INNER JOIN dept_emp on departments.dept_no = dept_emp.dept_no
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

-- Questoin 8: 
-- List the frequency counts, in descending order, of all the employee last names (that is, 
-- how many employees share each last name).
SELECT last_name, count(last_name) AS "Frequency Count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Count" DESC	


