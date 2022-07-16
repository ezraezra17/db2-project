-- find the highest 14th salary
--list salary high to low without duplicate values;
select distinct SALARY from EMPLOYEES order by SALARY desc;


select * from (select * from employees order by salary desc) where ROWNUM <15;
--find employee info who is making 14th highest salary

SELECT min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM<15;

--find employee info who is making 14th highest salary(dynamic)

select *  from EMPLOYEES where salary =(SELECT min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM<15);
