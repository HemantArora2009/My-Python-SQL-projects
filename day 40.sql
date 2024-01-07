use employees;

DROP TABLE IF EXISTS  employees_dup;

CREATE TABLE employees_dup
(
emp_no int,
birth_date date,
first_name varchar(14),
last_name varchar(16),
gender enum('M','F'),
hire_date date
);

INSERT INTO employees_dup SELECT b.* from employees b limit 20;

select * from employees_dup; 

SELECT e.emp_no, e.first_name, e.last_name, NULL as dept_no, NULL as from_date 
from employees_dup e where e.emp_no = 10001
UNION ALL
SELECT NULL AS emp_no, NULL AS first_name, NULL AS last_name, m.dept_no, m.from_date
from dept_manager m;



