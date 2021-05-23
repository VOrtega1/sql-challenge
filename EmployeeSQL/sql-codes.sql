#1*
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary 
FROM employees as e
right join salaries as s
on e.emp_no = s.emp_no
;

#2*
SELECT first_name, last_name, hire_date 
FROM employees
Where hire_date like '%86'
;

#3*
SELECT de.dept_no, e.emp_no, e.first_name, e.last_name, t.*, d.dept_name
FROM dept_emp as de
right join departments as d
on de.dept_no = de.dept_no
left join employees as e
on e.emp_no = de.emp_no
inner join titles as t
on e.emp_title = t.title_id
Where t.title_id = 'm0001'
;

#4*
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name, de.dept_no
FROM dept_emp as de
right join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no
;

#5*
SELECT first_name,
last_name,
sex
FROM employees
WHERE last_name like 'B%'
	AND first_name like 'Hercules'
;

#6*
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
right join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'
;


#7*
SELECT e.emp_no, e.last_name, e.first_name,  d.dept_name
FROM dept_emp as de
right join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development'
;

#8*
SELECT last_name, COUNT(*)
FROM employees GROUP BY last_name
	ORDER BY "last_name" DESC
;

#Bonus












