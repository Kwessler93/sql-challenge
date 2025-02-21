CREATE TABLE titles (
    title_id Varchar NOT NULL,
    title Varchar NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE salaries (
    emp_no integer Not Null,
    salary integer Not Null,
    PRIMARY KEY (emp_no)
)

CREATE TABLE employees (
    emp_no integer   NOT NULL,
   	emp_title_id Varchar Not Null,
	birth_date Date Not Null,
	first_name Varchar Not Null,
	last_name Varchar Not Null,
	sex Varchar Not Null,
	hire_date Date Not Null,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_no) References Salaries (emp_no),
	FOREIGN KEY(emp_title_id) References titles (title_id)
);

CREATE TABLE dept_emp (
    emp_no integer   NOT NULL,
   	dept_no Varchar Not Null,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_no) References employees (emp_no)
);

CREATE TABLE dept_manager (
    dept_no varchar   NOT NULL,
   	mgr_emp_no integer Not Null,
    PRIMARY KEY (mgr_emp_no)
);

CREATE TABLE departments (
    dept_no varchar   NOT NULL,
   	dept_name Varchar Not Null,
    PRIMARY KEY (dept_no)
);