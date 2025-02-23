--List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, last_name, first_name, sex, salary 
	from employees
	join salaries on employees.emp_no = salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
	from employees
	where extract (year from hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_name, departments.dept_no, mgr_emp_no, last_name, first_name
	from departments
	join dept_manager on departments.dept_no = dept_manager.dept_no
	join employees on dept_manager.mgr_emp_no = employees.emp_no;
    
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

--List each employee in the Sales department, including their employee number, last name, and first name.

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).