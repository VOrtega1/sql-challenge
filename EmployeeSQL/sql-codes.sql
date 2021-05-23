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



