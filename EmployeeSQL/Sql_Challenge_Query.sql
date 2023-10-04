select * from departments;

select * from dept_emp;

select * from employees;

select * from salaries;

select * from titles;

select * from dept_manager;

--List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary  
f as e
left j as s
on e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select last_name, first_name, hire_date
f
where hire_date between '1986-01-01' and '1986-12-31' 

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no, dept.dept_name, dm.emp_no, e.last_name, e.first_name
f as dm
inner join
departments as dept
on dept.dept_no = dm.dept_no
inner j as e
on e.emp_no = dm.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, dept.dept_name
f as de
inner j as e
on e.emp_no = de.emp_no
inner join
departments as dept
on dept.dept_no = de.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
f
where first_name = 'Hercules'
and
last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, dept.dept_name
f as de
inner j as e
on e.emp_no = de.emp_no
inner join
departments as dept
on dept.dept_no = de.dept_no
where dept.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, dept.dept_name
f as de
inner j as e
on e.emp_no = de.emp_no
inner join
departments as dept
on dept.dept_no = de.dept_no
where dept.dept_name = 'Sales' or dept.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Last Name Count"
f
group by last_name
ORDER by "Last Name Count" DESC;