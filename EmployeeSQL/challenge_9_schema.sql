CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);

		
CREATE TABLE salaries(
	emp_no VARCHAR(30) PRIMARY KEY,
	salary INT  
);


CREATE TABLE departments(
	dept_no  VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	mgr_no VARCHAR(30), 
	PRIMARY KEY (dept_no, mgr_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

CREATE TABLE dept_emp(
	emp_no VARCHAR(30),
	dept_no VARCHAR(30),
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);

CREATE TABLE employees(
	emp_no VARCHAR(30) PRIMARY KEY,
	emp_title_id VARCHAR(30),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date VARCHAR(30),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);























	
SELECT * FROM departments