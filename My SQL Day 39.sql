
select * from employees.departments;


use employees;

select * from departments;


SELECT * FROM   employees;

select count(*) from employees;

SELECT gender FROM   employees;

SELECT distinct gender FROM   employees;

SELECT first_name, birth_date  FROM   employees;


SELECT gender , count(*) FROM   employees group by gender;


SELECT * FROM   employees where gender = 'M';



SELECT first_name, birth_date FROM   employees where gender = 'M'

/* 
SELECT 
FROM 
WHERE / Join 
GROUP BY 
Having 
SORT 
*/



select * from employees ;


SELECT birth_date  FROM   employees;

SELECT year (hire_date)  FROM   employees;

SELECT year (hire_date), count(*)  FROM   employees  group by year(hire_date);

SELECT year (hire_date), count(*)  FROM   employees  group by year(hire_date) order by year (hire_date);

SELECT year (hire_date), count(*)  FROM   employees  group by year(hire_date) order by year (hire_date)  desc;

SELECT year (hire_date), count(*)  FROM   employees  group by year(hire_date) order by year(hire_date)  desc;


SELECT hire_date,  year (hire_date) , month(hire_date) FROM   employees;


SELECT dept_no FROM  departments;


SELECT * FROM   employees WHERE FIRST_NAME = 'Denis';



SELECT * FROM employees WHERE FIRST_NAME = 'Elvis';



SELECT count(*)  FROM   employees WHERE FIRST_NAME = 'Denis' and Gender = 'M';

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' and Gender = 'M';

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' or  Gender = 'M';



SELECT    count(*)  FROM   employees  WHERE  first_name = 'Kellie' AND gender = 'F'; 

SELECT    *  FROM   employees  WHERE  first_name = 'Kellie' AND gender = 'F'; 



select * from employees WHERE  FIRST_NAME = 'Denis' AND  FIRST_NAME = 'Elvis';

select * from employees WHERE  FIRST_NAME = 'Denis' or FIRST_NAME = 'Elvis';

select * from employees WHERE  FIRST_NAME  in ('Denis' ,'Elvis');


select count(*) from employees WHERE  (Gender ='M' OR 'F') and FIRST_NAME = 'Denis';


select count(*) from employees WHERE  Gender ='M' OR 'F' and FIRST_NAME = 'Denis';


select * from employees WHERE  Gender ='M' OR 'F' and FIRST_NAME = 'Denis' order by gender desc;


select * from 
(select * from employees WHERE  Gender ='M' OR 'F' and FIRST_NAME = 'Denis' order by gender desc) s1
where gender = 'F';

select gender from  (select * from employees) s1;

select * from employees;


SELECT  * FROM employees WHERE 
first_name = 'Cathie'
OR first_name = 'Mark'
OR first_name = 'Nathan';

select count(*) from employees WHERE  first_name = 'Cathie' OR first_name = 'Mark' OR first_name = 'Nathan';



select count(*) from employees WHERE  first_name IN ('Cathie','Mark' ,'Nathan');




select count(*) from employees WHERE  first_name NOT IN ('Cathie','Mark' ,'Nathan');

SELECT * FROM employees;


SELECT * FROM employees WHERE  first_name LIKE ('Mar%');


SELECT * FROM employees WHERE  first_name LIKE ('ar%');


SELECT * FROM employees WHERE  first_name LIKE ('ar%');



SELECT * FROM employees WHERE  first_name LIKE ('%tar');

SELECT distinct first_name  FROM employees WHERE  first_name LIKE ('%tar');


SELECT distinct first_name  FROM employees WHERE  first_name LIKE ('%ar');

SELECT count(distinct first_name)  FROM employees WHERE  first_name LIKE ('%ar');



SELECT * FROM employees WHERE  first_name LIKE ('%ar%');

SELECT * FROM employees WHERE  first_name LIKE ('%tar%');

SELECT * FROM employees WHERE  first_name LIKE ('Mar_');


SELECT * FROM employees WHERE  first_name NOT LIKE ('%Mar%');


SELECT  * FROM  salaries; 


SELECT  * FROM salaries WHERE salary BETWEEN 66000 AND 70000 ;   

SELECT  * FROM salaries WHERE salary NOT BETWEEN 66000 AND 70000 ;   


SELECT  * FROM employees WHERE emp_no NOT BETWEEN '10004' AND '10012';   




SELECT  * FROM employees WHERE first_name IS NOT NULL;

SELECT  * FROM employees WHERE first_name IS NULL;


select * from employees order by first_name ASC , last_name DESC;



select first_name from employees group by first_name; 


select first_name, count(first_name)  from employees group by first_name; 



select first_name, count(first_name)  from employees group by first_name order by first_name  DESC; 


select first_name, count(first_name) as names_count from employees group by first_name order by first_name  DESC; 


SELECT salary, COUNT(emp_no) AS emps_with_same_salary FROM salaries 
WHERE  salary > 80000 GROUP BY salary ORDER BY salary;



select * from employees where  hire_date >= '2000-01-01';

select * from employees having  hire_date >= '2000-01-01';

select first_name, count(first_name) as names_count from employees 
group by first_name;

select first_name, count(first_name) as names_count from employees 
group by first_name HAVING count(first_name) > 250 order by first_name  DESC;  


select * from employees;


select * from salaries order by salary desc LIMIT 10; 


select * from employees;

INSERT INTO employees (emp_no,birth_date,first_name,last_name,gender,hire_date)
values (999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');

select * from employees;

select * from employees order by emp_no DESC limit 5;

INSERT INTO employees VALUES  ( 999903,  '1977-09-14', 'Johnathan', 'Creek', 'M', '1999-01-01' );

select * from titles;


insert into titles ( emp_no, title, from_date)values (  999903, 'Senior Engineer',  '1997-10-01' ); 


SELECT  * FROM titles ORDER BY emp_no DESC;


insert into dept_emp ( emp_no, dept_no, from_date,  to_date ) values ( 999903, 'd005',  '1997-10-01', '9999-01-01' );

select * from  departments ;


INSERT INTO department_dup (dept_no ,dept_name ) SELECT * FROM  departments ;

SELECT * From department_dup;


DROP TABLE IF EXISTS department_dup;

 CREATE TABLE department_dup
( 
 dept_no  char(4) NOT NULL, 
 dept_name varchar(40) NOT NULL  
);


SELECT * From department_dup;

INSERT INTO department_dup (dept_no ,dept_name ) SELECT * FROM  departments ;

SELECT * From department_dup;



select * from employees where emp_no = 999901;

Update employees SET First_name = 'Stella', last_name = 'Parkinson' , 
birth_date ='1990-12-31', Gender ='F' where emp_no = 999901;  

select * from employees where emp_no = 999901;


select * from department_dup ; 

 COMMIT;

update department_dup SET Dept_no = 'd011',  dept_name = 'Quality Control';

select * from department_dup ;

 ROLLBACK;  

select * from department_dup ;


select * from departments;   

UPDATE departments SET  dept_name = 'Data Analysis' WHERE  dept_no = 'd002';   

select * from departments; 

select * from department_dup;

delete from department_dup;

select * from department_dup;

 select * from employees where emp_no = 999903 ;    


select * from employees where emp_no = 999903 ; 

rollback ;   


SELECT COUNT(Salary) from Salaries;


SELECT COUNT(*) from Salaries;

select * from employees order by emp_no desc 


SELECT COUNT(from_date) from Salaries;


SELECT COUNT(distinct (from_date)) from Salaries;



SELECT SUM(Salary) from Salaries;


SELECT SUM(salary) FROM salaries WHERE from_date > '1997-01-01';

SELECT from_date , SUM(salary) FROM salaries WHERE from_date > '1997-01-01' group by from_date ;

SELECT from_date , SUM(salary), max(Salary) , count(Salary)  FROM salaries 
WHERE from_date > '2002-01-01' group by from_date  order by from_date ;



SELECT ROUND(AVG(Salary)) from Salaries;


SELECT ROUND(AVG(Salary),2) from Salaries;


SELECT ROUND(AVG(Salary),-2) from Salaries;

#'63800'



DROP TABLE IF EXISTS  department_dup ; 

CREATE TABLE department_dup
 (  
dept_no  char(4),
dept_name  varchar(40),
dept_manager  varchar(40)
);

INSERT INTO  department_dup  (dept_no , dept_name )  select * from  departments ;

select * from department_dup; 



insert into department_dup (dept_no) values ('D100');

insert into department_dup (dept_no) values ('D101');



select * from department_dup; 

select count(*) from department_dup;

select count(dept_name) from department_dup;


select * from department_dup; 


select dept_no, IFNULL (dept_name, 'No Department Name') as dept_name from department_dup;

select dept_no, COALESCE(dept_name, 'No Department Name') as dept_name from department_dup;

select * from department_dup; 

select dept_no, dept_name, COALESCE(Dept_Manager, Dept_Name , 'N/A') as dept_manager from department_dup;

select * from department_dup; 
