create table PERSONS
(
	PersonID smallint primary key nonclustered,
	FirstName varchar(30),
	LastName varchar(40),
	SociaSecurityNumber char(11) unique 
	clustered	
)
sp_helpindex PERSONS

drop table PERSONS

create table PERSONS1 (
	PersonID smallint primary key clustered,
	FirstName varchar (30),
	LastName varchar(40),
	SocialSecurityNumber char(11) unique
	nonclustered
)
select * from PERSONS

create index INDEX_FirstName 
 on PERSONS(FirstName)

sp_helpindex PERSONS

CREATE UNIQUE NONCLUSTERED INDEX INDEX_FirstName
on PERSONS (FirstName,LastName DESC)
WITH FILLFACTOR = 60,
IGNORE_DUP_KEY,
DROP_EXISTING,
SORT_IN_TEMPDB

sp_helpindex PERSONS


DBCC DBREINDEX (PERSONS,INDEX_FirstName,70)

sp_rename
@objname = 'PERSONS.INDEX_FirstName',
@newname = 'INDEX_FRIST_LastName',
@objtype = 'INDEX'

SELECT * FROM employee WHERE position = 'Manager'

create index index01 on employee(position)

create view EMPVIEW
 AS SELECT empnum,empname,hiredate,salary
  from employee
  
  select * from EMPDEP
  
  drop view empdep
  
  create view EMPDEP
	as select empname,dep.depname,salary from employee ,dep
	  where dep.depno = employee.depno and salary > 20000
	  
	 create view DEPSAL (depno,mxsalary,minsalary)
	  as select  depno ,MAX(salary),MIN(salary)
		 from employee group by depno 
	 

	create view emptemp	
	as select employee.empnum,employee.empname,employee.position,employee.depno 
		from employee
			where  EXISTS (select employee.depno from dep,employee where employee.depno = dep.depno )	  
				with check option
		
drop view emptemp

select * from emptemp
select * from employee