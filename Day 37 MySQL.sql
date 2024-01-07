
use batch84;

DROP TABLE if exists EMP ;

CREATE TABLE IF NOT EXISTS  EMP 
(
	EMP_NO int,
    EMP_Name varchar(50),
    salary float (10,2)
    );
    
 INSERT  INTO EMP  VALUES (1000, 'John', 5000);
 INSERT INTO EMP VALUES (1500 , 'Mark', 4500);
 
select * from emp;


 INSERT  INTO EMP  VALUES (1000, 'John', 5000);
 INSERT INTO EMP VALUES (1500 , 'Mark', 4500);
 
select * from emp;


DROP TABLE if exists EMP ;

CREATE TABLE IF NOT EXISTS  EMP 
(
	EMP_NO int PRIMARY KEY,
    EMP_Name varchar(50),
    salary float (10,2)
    );


 INSERT  INTO EMP  VALUES (1000, 'John', 5000);
 INSERT INTO EMP VALUES (1500 , 'Mark', 4500);
 
select * from emp;

 INSERT  INTO EMP  VALUES (1000, 'John', 5000);
 INSERT INTO EMP VALUES (1500 , 'Mark', 4500);
 
select * from emp;



create table tutorials_tbl(
   tutorial_id INT NOT NULL AUTO_INCREMENT,
   tutorial_title VARCHAR(100) NOT NULL,
   tutorial_author VARCHAR(40) NOT NULL,
   submission_date DATE,
   PRIMARY KEY ( tutorial_id )
);


CREATE TABLE if not exists sales
(
purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10) NOT NULL
 );



CREATE TABLE IF NOT EXISTS CUSTOMERS
( 
customer_id INT,
first_name varchar(255),
last_name varchar(255),
email_address varchar(255),
number_of_complaints int
);




SELECT * FROM sales;

SELECT * FROM sales.sales;



DROP TABLE IF EXISTS Persons;


CREATE TABLE Persons
( 
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255) NOT NULL,
Age int
);




INSERT INTO PERSONS Values (100, 'Mark', 'Jude', 30) ;


INSERT INTO PERSONS Values (NULL, 'John', 'Paul', 35); 

INSERT INTO PERSONS Values (100, 'Mark', 'Jude', NULL) ;

INSERT INTO PERSONS Values (100, NULL, 'Jude', 50) ;


DROP TABLE IF EXISTS Persons;


CREATE TABLE Persons
( 
ID int ,
LastName varchar(255),
FirstName varchar(255),
Age int
);


INSERT INTO PERSONS Values (NULL, 'John', 'Paul', NULL) ;

select * from PERSONS;


select *  from PERSONS;

DELETE FROM PERSONS;


ALTER TABLE Persons MODIFY COLUMN Age Int NOT NULL ;



select *  from PERSONS;


INSERT INTO PERSONS Values (100, 'John', 'Paul', 30) ;


INSERT INTO PERSONS Values (101, 'Tom', 'Joe', NULL) ;


INSERT INTO PERSONS Values (100, 'John', 'Paul', 200) ;



DROP TABLE IF exists tblperson1;

CREATE TABLE IF not exists tblperson1
(
id int,
Name nvarchar(50), 
Age int
 ) ;




insert into tblperson1  values ( 1 , 'Sam', 50);

insert into tblperson1  values ( 2 , 'Pam', 250);

select  * from tblperson1 ;


ALTER TABLE tblperson1 ADD CONSTRAINT CK_tblPerson1_Age CHECK (Age>=0 AND Age < 100);

delete from tblperson1  where id = 2;



ALTER TABLE tblperson1 ADD CONSTRAINT CK_tblPerson1_Age CHECK (Age>=0 AND Age < 100);


INSERT INTO tblperson1 Values (100, 'John',  200) ;


DROP TABLE IF EXISTS Persons1;

CREATE TABLE Persons1
( 
ID int NOT NULL, 
LastName varchar(255) NOT NULL, 
FirstName varchar(255),
Age int,
CHECK (Age >=18)
);


INSERT INTO Persons1 Values (100, 'John', 'Green', 20);



INSERT INTO Persons1 Values (101, 'Tom', 'Soto', 15);
