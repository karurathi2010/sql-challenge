--1.List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary FROM employees as e
JOIN salaries as s
ON e.emp_no=s.emp_no;

--2.List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name,last_name, to_char(hire_date, 'yyyy') years FROM employees
WHERE EXTRACT('year' FROM hire_date)= 1986;

--3.List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT t.title,p.dept_name,d.dept_no,d.emp_no,e.first_name,e.last_name FROM employees AS e
JOIN titles AS t
ON e.emp_title_id=t.title_id
JOIN dept_manager AS d
ON e.emp_no=d.emp_no
JOIN departments AS p
ON d.dept_no=p.dept_no;

--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT i.dept_no,i.emp_no,e.last_name,e.first_name,d.dept_name FROM departments AS d
JOIN dept_emp AS i
ON d.dept_no=i.dept_no
JOIN employees AS e
ON i.emp_no=e.emp_no;


--5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name,last_name,sex FROM employees 
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

--6.List each employee in the Sales department, including their employee number, last name, and first name.

SELECT emp_no,last_name,first_name FROM employees WHERE emp_no IN
(
	SELECT emp_no FROM dept_emp WHERE dept_no IN
	(
		SELECT dept_no FROM departments WHERE dept_name='Sales'
	)
 );


--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, 
--and department name.


SELECT emp_no,last_name,first_name FROM employees WHERE emp_no IN
(
	SELECT emp_no FROM dept_emp WHERE dept_no IN
	(
		SELECT dept_no FROM departments WHERE dept_name IN('Sales', 'Development')
	)
 );
 
 
 --8.List the frequency counts, in descending order, of all the employee last names 
 --(that is, how many employees share each last name).
 
 SELECT last_name,COUNT(emp_no) AS counts FROM employees
 GROUP BY(last_name)
 ORDER BY(counts) DESC;
 
 
