select * from employee ,dep where dep.depno= employee.depno and salary > (select AVG(salary) from employee where dep.depname = 'marketing')

select * from employee

select projno,empname from projwork,employee where  employee.empnum = projwork.empnum and projno = '01'

select * from employee where salary > 17000 and salary < 25000

select * from employee where empname  LIKE '%p%' and position != 'salesman'

select * from employee   order by  position desc

select * from employee where salary > (select AVG(salary) from employee where position = 'manager')

select * from employee,projwork where  employee.empnum = projwork.empnum and  projwork.empnum > (select AVG(hours) from projwork ) 


/*select  *  from employee,dep  group by dep.depname HAVING employee.salary > AVG(employee.salary) */

select Max(salary) as 'Max',MIN(salary) as 'Min' from employee group by position