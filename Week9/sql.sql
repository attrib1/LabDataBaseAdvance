 select * from EMPLOYEEs;
 
   SELECT department_id,department_name
 FROM departments;
 
 select region_name,LOWER(region_name),LOWER('ABC')
 FROM regions;
 
  select region_name,UPPER(region_name) ,UPPER('ABC')
 FROM regions;
 
 SELECT department_id,department_name,location_id,city
 FROM locations NATURAL JOIN departments;
 
 SELECT employee_id ,first_name,salary 
 FROM employees
 WHERE salary > (SELECT AVG(salary) FROM  employees);
 
 SELECT outer.department_id,first_name,salary
 FROM employees outer
 WHERE salary > (SELECT AVG(salary) FROM employees inner 
 WHERE inner.department_id = outer.department_id); 
 
select * from departments;
 
select * from employees;
  
select * from locations;

select * from regions;