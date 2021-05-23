#1
SELECT e.*, s.* 
FROM employees as e
inner join salaries as s
on e.emp_no = s.emp_no;

#2*
SELECT first_name, last_name, hire_date 
FROM employees
Where hire_date like '%86'
;

#3
SELECT de.*, e.*, t.*
FROM employees as e
right join titles as t
on e.emp_title = t.title_id
left join dept_emp as de
on e.emp_no = de.emp_no;

#4
SELECT dm.*, d.*, e.*
FROM dept_manager as dm
right join departments as d
on dm.dept_no = d.dept_no
left join employees as e
on dm.emp_no = e.emp_no;

#5*
SELECT first_name,
last_name,
sex
FROM employees
WHERE last_name like 'B%'
	AND first_name like 'Hercules'
;

#6
SELECT d.*, e.*, de.*
FROM dept_emp as de
right join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no;






