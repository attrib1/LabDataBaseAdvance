CREATE DATABASE dbpersonnel
ON PRIMARY
(
	NAME = dbpersonnel_DAT,
	FILENAME = 'D:\56110177\dbpersonnel.mdf',
	SIZE = 4,
	MAXSIZE = 20,
	FILEGROWTH=1
)
LOG ON
(
	NAME = dbpersonnel_LOG,
	FILENAME = 'D:\56110177\dbpersonnel_LOG.ldf',
	SIZE=2,
	MAXSIZE=5,
	FILEGROWTH=1
)


create table employee
(
	empnum char(4),
	empname varchar(15),
	hiredate datetime,
	salary int,
	position varchar(15),
	depno char(2),
	mgrno char(4),

	constraint employee_pk primary key (empnum)
)

create table dep(

	depno char(2),
	depname varchar(15),
	location varchar(15),
	
	constraint depno_pk primary key (depno)
)
create table project
(
	projno char(2),
	projdesc varchar(20),
	startdate datetime,
	enddate   datetime,
	budget  int,

	constraint projno_pk primary key (projno)
)	

create table projwork
(
	projno char(2),
	empnum char(4),
	hours	smallint,
)

alter table project
add projno char(3)

alter table employee
add constraint depno_fk foreign key(depno)
references dep (depno)

alter table projwork
add constraint projwork_fk foreign key(projno)
references project (projno)


alter table projwork
add constraint empnum_fk foreign key(empnum)
references employee (empnum)



insert into dep (depno,depname,location)
	values ('10','accounting','silom')

insert into dep (depno,depname,location)
	values ('20','administration','sukumvit')

insert into dep (depno,depname,location)
	values ('30','marketing','ratchada')

	insert into dep (depno,depname,location)
	values ('40','finance','silom')

insert into dep (depno,depname,location)
	values ('50','research','sukumvit')
	
	

insert into project (projno,projdesc,startdate,enddate,budget)
values ('01','new project','10/01/2008','03/31/2009','500000')


insert into project (projno,projdesc,startdate,enddate,budget)
values ('02','bill collection','11/01/2009','06/30/2010','1000000')	


insert into project (projno,projdesc,startdate,enddate,budget)
values ('03','new building','10/01/2008','03/31/2009','500000')

select * from employee
/*-----------------------------*/
insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('1001','phatcharapa','06/13/2008','9000','clerk','10','1002')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('1002','chakrit','10/31/2008','30000','controller','10','1003')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('1003','nadate','03/15/2009','30000','manager','10','2002')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('1004','yaya','06/04/2009','12000','clerk','10','1002')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('2001','mario','05/14/2008','14000','clerk','20','2003')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('2002','tomdundee','01/10/2009','50000','drirector','20','')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('2003','leeminho','11/01/2008','24000','manager','20','2002')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('3001','zuckerberg','08/15/2010','17000','salesman','30','3004')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('3002','steveJob','15/05/2010','13000','salesman','30','3004')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('3003','paula','06/11/2008','290000','manager','30','2002')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('3004','dome','06/14/2009','25000','supervisor','30','3003')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('3005','stephan','07/03/2009','10000','salesman','30','3004')	

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('4001','romeo','12/26/2008','33000','manager','40','2002')

insert into employee(empnum,empname,hiredate,salary,position,depno,mgrno)
values ('4002','juliet','12/01/2009','9000','clerk','40','4001')		

select * from projwork
delete from projwork where  projno = '01'
/*---------------------------------------------------*/
insert into projwork (projno,empnum,hours)
	values ('01','3001','25')

insert into projwork (projno,empnum,hours)
	values ('01','3003','30')	

insert into projwork (projno,empnum,hours)
	values ('02','4002','40')

insert into projwork (projno,empnum,hours)
	values ('03','2003','20')

insert into projwork (projno,empnum,hours)
	values ('03','2001','30')


/*-----------  Start Lab ....select ----*/

select projno from projwork

/*-----------  Start Lab ....select  ตัวที่ไม่ซ้ำ  (not same)----*/
select distinct projno from projwork

select distinct projno,empnum from projwork


/*-----------  Start Lab ....select ทุกคอลัม เเรียงจากน้อยไปมาก คอลัม hours ----*/
select * from projwork order by hours


/*-----------  Start Lab ....select ทุกคอมลัม เเรียงจากมากไปน้อยในคอลัม hours ----*/
select * from projwork order by hours desc

/*-----------  Start Lab ....select  เราสามารถนำชื่อคอลัมใส่เข้าไปได้เช่นกัน ----*/
select employee.empnum, employee.empname from employee

/*-----------  Start Lab ....select 5 อันดับแรกของตาราง top 5----*/
select top 5 employee.empnum,employee.empname from employee order by employee.empname

/*-----------  Start Lab ....select จากด้านบนสามารถย่อได้ดังนี้ ----*/
select top 5 e.empnum,e.empname from employee as e order by e.empname

/*-----------  Start Lab ....select  ให้แสดงชื่อคอลัมใหม่ตอนแสดง ----*/
select top 5 e.empnum as "employee number",e.empname as "employee name"
from employee as e order by e.empname

/*** start test */
select top 5 empname+' '+position As 'employee name' from  employee order by  empname desc


/*Lab test show */

/*DISTINCT Command  ------------ ผลที่เกิด...*/
select distinct projno from projwork

/* TOP n command ------ ผลที่เกิด...*/
select top 3 empname,salary from employee order by salary

/* INTO command for creating new table-----ผลที่เกิด...*/
select empname , salary , position  into emp1 from employee 
	order by empname

/* Show data from new table */
select * from emp1

/*Delete new table emp1*/
drop table emp1




/* WHERE clause that you can use =, >, >=, <, <=, <> */

SELECT empnum,hiredate
FROM employee
WHERE position = 'manager'/*Show only position is manager*/

/*Show only salary is more than and equal 25000*/
SELECT EMPNUM,EMPNAME,POSITION,SALARY
FROM EMPLOYEE
WHERE SALARY >= 25000

/*Show only salary is between 15000 and 25000*/
SELECT EMPNUM,EMPNAME,POSITION,SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 15000 AND 25000

/*Show only EmpNum = 1002,3003,4001*/
SELECT EMPNUM,EMPNAME,POSITION
FROM EMPLOYEE
WHERE EMPNUM IN ('1002','3003','4001')

/*Show all date that name is exist 'A' in first character*/
SELECT EMPNAME,POSITION
FROM EMPLOYEE
WHERE EMPNAME LIKE 'A%'

/*Show all date that name is 6 character*/
SELECT EMPNAME
FROM EMPLOYEE
WHERE EMPNAME LIKE'______'

/*Show all date that name is exist 'T' */
SELECT EMPNAME
FROM EMPLOYEE
WHERE EMPNAME LIKE'%T%'

/*Show all date that name is exist 'A' */
SELECT EMPNAME
FROM EMPLOYEE
WHERE EMPNAME NOT LIKE '%A%'

SELECT EMPNAME,SALARY,HIREDATE
FROM EMPLOYEE
WHERE SALARY > 20000 AND HIREDATE >= '01/01/1994'


SELECT EMPNAME
FROM EMPLOYEE
WHERE EMPNAME  LIKE '__a%'

select * from employee