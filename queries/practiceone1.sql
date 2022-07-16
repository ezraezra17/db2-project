
--1. List all the employees' first and last name with their salary in employees table
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

--2. how many employees have salary less than 5000?
select * from EMPLOYEES where SALARY<5000;

--3. how many employees have salary between 6000 and 7000?
select * from EMPLOYEES where SALARY between 6000 and 7000;
--4. List all the different region_ids in countries table
select REGION_ID from COUNTRIES;

--5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)

select salary from EMPLOYEES where LAST_NAME= 'Grant' and FIRST_NAME= 'Douglas';

   -- 6. display the maximum salary in employees table
   select max(SALARY) from EMPLOYEES;



   -- 7. display all informations of the employee who has the highest salary in employees table

    select * from EMPLOYEES where SALARY =(select max(SALARY) from EMPLOYEES);

   -- 8. display the the second maximum salary from the employees table

select SALARY from EMPLOYEES order by SALARY desc;

select max(salary) from EMPLOYEES where SALARY <(select max(SALARY) from EMPLOYEES);

   -- 9. display all information of the employee who has the second highest salary


  select  *  from EMPLOYEES where SALARY =(select max(salary) from EMPLOYEES where SALARY <(select max(SALARY) from EMPLOYEES));

   -- 10. display the the minimum salary in employees table

   select min(SALARY) from EMPLOYEES;


   -- 11. display all information of the employee who has the minimum salary in employees table
   select SALARY from EMPLOYEES order by SALARY;

select * from EMPLOYEES where SALARY =(select min(salary) from EMPLOYEES);

   -- 12. display the second minimum salary from the employees table

   select min(SALARY) from EMPLOYEES where SALARY >(select min(SALARY) from EMPLOYEES);
   -- 13. display all information of the employee who has the second minimum salary
   select   * from EMPLOYEES where  salary = (select  min(SALARY) from EMPLOYEES where SALARY >(select min(salary) from EMPLOYEES));


   -- 14. display the average salary of the employees;
select round(avg(SALARY),2) from EMPLOYEES;

--15. list all the employees who are making above the average salary;
select * from EMPLOYEES where SALARY >(select avg(salary) from EMPLOYEES);

--16. list all the employees who are making less than the average salary
select * from EMPLOYEES where SALARY<(select avg(SALARY) from EMPLOYEES);
--17. count the total numbers of the departments in departs table
select  count(*) DEPARTMENT_ID from DEPARTMENTS;
--18. sort the start_date in ascending order in job_history's table


select START_DATE from JOB_HISTORY order by START_DATE;
--19. sort the start_date in descending order in job_history's table
select START_DATE from JOB_HISTORY order by START_DATE desc;
--20. list all the employees whose first name starts with 'A'
select * from EMPLOYEES where FIRST_NAME like 'A%';
--   21. list all the employees whose job_ID contains 'IT'
select * from EMPLOYEES where JOB_ID like '%IT%' OR  JOB_ID like 'IT%' or JOB_ID like '%IT';
--   22. list all the employees whose department id in 50, 80, 100
select * from EMPLOYEES where DEPARTMENT_ID in(50,80,100);