--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	e.emp_no as "employee number",
	e.last_name as "last_name",
	e.first_name as"first_name",
	e.sex as "gender",
	s.salaries as "salary"
FROM employees e
	INNER JOIN 
		salaries s 
		ON 
		s.emp_no = e.emp_no;
		
--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT
	e.first_name as "First Name",
	e.last_name as "Last Name",
	e.hire_date as "Hire Date"
FROM employees e
WHERE 
	EXTRACT 
		(YEAR FROM hire_date) = '1986';	

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT
	dm.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	e.emp_no AS "Manager Employee Number",
	e.first_name AS "Manager First Name",
	e.last_name AS "Manager Last Name"
FROM
	dept_manager as dm
	INNER JOIN
		departments d ON
		d.dept_no = dm.dept_no
	INNER JOIN
		employees e ON
		e.emp_no = dm.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Manager Last Name",
	e.first_name AS "Manager First Name",
	d.dept_name AS "Department Name"	
FROM employees e
	INNER JOIN
		dept_emp de ON
		de.emp_no = e.emp_no
	INNER JOIN
		departments d ON
		d.dept_no = de.dept_no;


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	first_name AS "Employee First Name",
	last_name AS "Employee Last Name",
	sex AS "Sex"
FROM
	employees 
WHERE
	"first_name" = 'Hercules' AND upper(last_name) like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 
	e.emp_no as "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Department Name"
FROM
	employees e
	INNER JOIN
		dept_emp de ON
		de.emp_no = e.emp_no
	INNER JOIN
		departments d ON
		d.dept_no = de.dept_no AND d.dept_name = 'Sales';
		
	
--7. List all employees in the Sales and Development departments, including their employee number, last name, 
--first name, and department name.
SELECT
	e.emp_no AS "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Department Name"
FROM
	employees e
INNER JOIN
		dept_emp de ON
		de.emp_no = e.emp_no
INNER JOIN
	departments d ON
	d.dept_no = de.dept_no AND d.dept_name in ('Sales','Development');

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
	last_name AS "Last Name",
	COUNT(last_name) AS "Last Name Frequency"
FROM 
	employees 
GROUP BY
	last_name
ORDER BY 
	COUNT(last_name) DESC;
	
 


