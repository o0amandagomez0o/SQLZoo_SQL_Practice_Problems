select first_name, last_name
from employees
where first_name = 'Elvis';

select *
from employees
where first_name = 'Denis'
and gender='M';

select *
from employees
where first_name = 'Kellie'
and gender='F';

select *
from employees
where first_name = 'Denis'
or first_name='Elvis';

select *
from employees
where first_name = 'Kellie'
or first_name='Aruna';

### LOGICAL OPERATOR PRECEDENCE:
# The operator AND is applied first, while the operator OR is applied second.
### AND > OR
select *
from employees
where last_name = 'Denis'
	and gender='M'
		or gender='F';
#correct		
select *
from employees
where last_name = 'Denis'
	and (gender='M' or gender='F');
	
#Retrieve a list with all female employees whose first name is either Kellie or Aruna.
select *
from employees
where gender='F'
	and (first_name = 'Kellie' or first_name = 'Aruna');

#returns 691 rows in 100ms	
select *
from employees
where first_name='Cathie'
	or first_name='Mark'
	or first_name='Nathan';
	
#returns 691 rows in 223ms
select *
from employees
where first_name IN ('Cathie', 'Mark', 'Nathan');

#returns 691 rows in 223ms
select *
from employees
where first_name NOT IN ('Cathie', 'Mark', 'Nathan');

#Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.
select *
from employees
where first_name IN ('Denis', 'Elvis');

#Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob.
select *
from employees
where first_name NOT IN ('John', 'Mark', 'Jacob');


###Pattern Recognition: % _
select *
from employees
where first_name LIKE('Mar%');

select *
from employees
where first_name LIKE('%ar%');

select *
from employees
where first_name LIKE('Mar_');

#MySQL is case INSENSITIVE
select *
from employees
where first_name NOT LIKE('%Mar%');

#same number of outputs as above
select *
from employees
where first_name NOT LIKE('%mar%');

# Working with the “employees” table, 
# use the LIKE operator to select the data about all individuals, 
# whose first name starts with “Mark”; 
# specify that the name can be succeeded by any sequence of characters.
select *
from employees
where first_name LIKE('Mark_');

# Retrieve a list with all employees who have been hired in the year 2000.
select *
from employees
where hire_date LIKE('2000%');

# Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”. 
select *
from employees
where emp_no LIKE('1000_');

#this will bring ALL emp_no, even those larger than 5 digits
#'_' will only hold ONE blank as opposed to % 
select *
from employees
where emp_no LIKE('1000%');

#Extract all individuals from the ‘employees’ table whose first name contains “Jack”.
select *
from employees
where first_name LIKE('%Jack%');

#extract another list containing the names of employees that do not contain “Jack”.
select * 
from employees
where first_name NOT LIKE('%Jack%');

#BETWEEN is inclusive			
select *
from employees
where hire_date BETWEEN '1990-01-01' AND '2000-01-01';

# NOT BETWEEN is EXclusive	
# (inf, 1990-01-01] U [2000-01-01, inf)
select *
from employees
where hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';

#Select all the information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars per year.
select *
from salaries
where salary BETWEEN '66000' AND '70000';

#Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.
select *
from employees
where emp_no NOT BETWEEN '10004' AND '10012';

#Select the names of all departments with numbers between ‘d003’ and ‘d006’.
select dept_name
from departments
where dept_no BETWEEN 'd003' AND 'd006';

select *
from employees
where first_name IS NULL;

#Select the names of all departments whose department number value is not null.
select dept_name
from departments
where dept_no IS NOT NULL