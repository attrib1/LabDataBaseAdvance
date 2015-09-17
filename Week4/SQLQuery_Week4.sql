select * from employee 

select empname,position,salary from employee

select  empname,position  from employee order by empname  asc

select  empname,position  from employee order by empname  desc

select distinct projno from projwork

select top 3 empname,salary from employee order by salary

select empname,salary,position into emp1 from employee
	order by empname  
	
select * from emp1 
	

select empname as 'employee Name', depno as 'Department'
   from  employee  order by empname
   
select e1.empname , e1.position
	from employee as e1 order by empname
	
select empname,hiredate from employee 
	where position = 'manager'

select empnum ,empname ,position,salary from employee 
	where salary >=25000

select empnum ,empname ,position,salary from employee 
	where salary between 15000 and 25000	

select empnum,empname,position,salary from employee 
	where empnum in ('1002','3003','4001')
	
select empname , position from employee
	where empname like 'a%'
	
select empname , position from employee
	where empname like '______'
	
select empname , position from employee
	where empname like '%T%'

select empname , position from employee
	where empname like '%a%'

select empname , position from employee
	where salary > 20000 and hiredate >= '01/01/1994'

select empname , position from employee
	where salary > 20000 or hiredate >= '01/01/1994'
	
select AVG(salary) as 'Average salary' from employee

select count(salary) as 'Average salary' from employee

select sum(salary) as 'Average salary' from employee

select min(salary) as 'Average salary' from employee

select max(salary) as 'Average salary' from employee

select depno,SUM(salary) as 'Sum of salary'
	from employee group by depno
	
select depno,max(salary) as 'Max of salary',min(salary) as 'Min of salary'
	from employee group by depno
	
select position,avg(salary) as 'max of salary'
	from employee group by position having avg(salary)>25000
	
select e.empname,d.depname,e.salary
	from employee as  e,dep as d
	where e.depno = d.depno 

select e.empname,d.depname,e.salary
	from employee as e left outer join dep as d on e.depno = d.depno
	
	

select e.empname,d.depname,e.salary
	from dep as d left outer join employee as e on e.depno = d.depno
	

select e.empname,d.depname,e.salary
	from employee  e right outer join dep  d on e.depno = d.depno
	

select e.empname,d.depname,e.salary
	from dep  d right outer join employee  e on e.depno = d.depno
	
select e.empname , d.depname 
	from employee e full outer join  dep d on e.depno = d.depno
	
select e.empname , d.depname 
	from dep d full outer join  employee e on e.depno = d.depno
	
select  e1.empnum , e1.empname, e1.position,e2.empname as manager
	from employee as e1,employee as  e2
	where e1.mgrno = e2.empnum 
	
select empname ,salary from employee
	where salary > 30000
	union 
	select empname ,salary from employee  where salary < 10000

select empname ,salary,position from employee
	where depno = (select depno from dep where depname = 'accounting') 

select empname ,salary,position from employee 
	where depno in (select depno from dep where depname = 'accounting' or depname = 'finance')

select empname ,salary,position from employee 
	where depno not in  (select depno from dep where depname = 'accounting' or depname = 'finance')
	

select empname ,salary,position from employee 
	where depno >any (select depno from dep where depname = 'accounting' or depname = 'finance')


select empname ,salary,position from employee 
	where depno >=all (select depno from dep where depname = 'accounting' or depname = 'finance')


select empname ,salary,position from employee e1
	where  exists (select empnum from employee e2 where e2.mgrno = e1.empnum )
	

select empname ,salary,position from employee e1
	where  not exists (select empnum from employee e2 where e2.mgrno = e1.empnum )

/*----------- Test Lab ---------*/

select e.empname,e.salary,e.position,d.depno,d.location from employee e,dep d
		where e.depno = d.depno and  d.location  = 'sukumvit' and  e.salary > (select AVG(salary ) from employee)
		/*(select depno from dep where location = 'sukumvit') */

select  top 3 e.empname, e.salary ,p.hours  from employee e ,projwork p 
	where e.empnum = p.empnum  order by p.hours desc
	
select e.empname ,e.position,d.depname,d.location ,e.salary from employee e, dep d
	where d.depno= e.depno and d.depname not like 'marketing' and salary > (select AVG(salary) from employee where position = 'clerk' )


select  d.depname , d.location from dep d,employee e
	where  not exists (select depno  from dep where e.depno = d.depno )

select * from employee 