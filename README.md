# sql-challenge
In this challange, 6 csv files were given as source data.Using those files the following data analysis were performed.
For that, the entire task has been divided into  3 parts:
* Data Modeling:
   Here the provided csv files were inspected well and created an ERD using the QuickDBD App.
* Data Engineering:
   Here seperate schemas were created for each of the provided csv tables with primary keys, foreign keys, and other constraints.After creating the tables the provided csv files are imported to the respective table.

* Data Analysis:
  8 questions were there to resolve:
   Markup : 1.List the employee number, last name, first name, sex, and salary of each employee.
               To resolve this query, Join operation is performed in employees and salaries table.

   Markup : 2.List the first name, last name, and hire date for the employees who were hired in 1986.
               The required columns were selected from the employees table,and the year part of the hire_date column is converted into string using 'to_char' method.Then extracted the rows having the year equal 
               to '1986' using the 'WHERE' condition.

  Markup : 3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
               'Join' operation is performed  in 'titles','dep_manager' and 'departments' tables to resolve this query.

  Markup : 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
              'Join' operation is performed  in 'employees','dep_emp' and 'departments' tables to resolve this query.

  Markup : 5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
               The required columns were selected from the 'employees' table, then using 'WHERE' condition the 'first_name' is extracted and 'wild card' is used to extract the 'last_name'.Both these steps were                     combined using 'AND' operation.

  Markup : 6.List each employee in the Sales department, including their employee number, last name, and first name.
               Sub query method is used to resolve this query.
                * 'dep_no' of the 'Sales department' is extracted from the 'departments' table.
                * Using this 'dep_no' ,'emp_no' is extracted from the 'dep_emp' table.
                * Using this 'emp_no',employee number, last name, and first name were extracted from the 'employees' table.
  Markup : 7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
               Sub query method is used to resolve this query.
                * 'dep_no' for both 'Sales', 'Development' departments were extracted from the 'departments' table.
                * Using this 'dep_no' ,'emp_no' is extracted from the 'dep_emp' table.
                * Using this 'emp_no',employee number, last name, and first name were extracted from the 'employees' table.

 Markup : 8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
                 The 'last_name' and count of 'emp_no' is extracted from the 'employees' table, 'GROUP BY' operation is performed on 'last_name' then the 'emp_no' counts were ordered in the descending order using
                 'ORDER BY   DESC'.


  
