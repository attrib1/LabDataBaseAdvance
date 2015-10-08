SELECT * FROM DEP

SELECT * FROM PROJECT

SELECT * FROM PROJWORK

GRANT SELECT ON Employee TO user02

GRANT SELECT, DELETE ON Dep TO user02

GRANT SELECT, INSERT, UPDATE ON Project TO user02

GRANT SELECT, INSERT ON ProjWork TO user02
WITH GRANT OPTION

GRANT ALL ON Employee TO user02



/*remove grant
REVOKE SELECT ON DepFROM user02

REVOKE INSERT ON ProjWorkFrom user02

CASCADE

DENY UPDATE ON Project TO user02
*/

CREATE PROC sp_ShowSalary AS

SELECT *  FROM EMPLOYEE WHERE salary > 20000

EXEC sp_ShowSalary

CREATE PROC sp_ShowSalary1
@salary int
AS SELECT * FROM EMPLOYEE WHERE salary > @salary

exec sp_ShowSalary1 10000
exec sp_ShowSalary1 25000
exec sp_ShowSalary1 30000
exec sp_ShowSalary1 40000



/*Lab test */
/*1*/
grant select on employee to user11,user12,user13,user14,user15
grant select on dep to user11,user12,user13,user14,user15
grant select on persons to user11,user12,user13,user14,user15
grant select on project to user11,user12,user13,user14,user15
grant select on projwork to user11,user12,user13,user14,user15

 grant select,update on employee to  user11,user12,user13,user14,user15
 grant update on dep to  user11,user12,user13,user14,user15

/*2*/
CREATE PROC sp_ShowEmployee
@depno int 
AS SELECT empname,salary,depname,dep.depno FROM EMPLOYEE,dep WHERE employee.depno = dep.depno and dep.depno = @depno

EXEC sp_ShowEmployee 10


select * from employee
SELECT empname,salary,depname,dep.depno FROM EMPLOYEE,dep WHERE employee.depno = dep.depno and dep.depno = 10

/*3*/
CREATE PROC sp_ShowEmployeeSalary
@salary int 
AS SELECT empnum,empname,salary FROM EMPLOYEE WHERE salary > @salary

EXEC sp_ShowEmployeeSalary 10000