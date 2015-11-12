select  first_name, salary,12*salary+100 from employees; 

select region_name,length(region_name) from regions;
select region_name , substr(region_name,3,3),substr(region_name,3)
from regions;

select round(67830.4557,3),round(67830.4557,2), round(67830.4557,-3)
from dual;

select trunc(67830.4557,3),trunc(67830.4557,2), trunc(67830.4557,-3)
from dual;

select first_name,hire_date,TO_CHAR(hire_data,'DD/MM/YYYY')
from employees;