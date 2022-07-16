
-- get me all employees firstname,lastname and their managers first and lastname;

select FIRST_NAME,LAST_NAME,MANAGER_ID,EMPLOYEE_ID from EMPLOYEES;

select e1.EMPLOYEE_ID, e1.FIRST_NAME,e1.LAST_NAME,e1.MANAGER_ID,e2.EMPLOYEE_ID,e2.FIRST_NAME,e2.LAST_NAME from employees e1 left join EMPLOYEES e2 on e1.MANAGER_ID= e2.EMPLOYEE_ID order by e1.EMPLOYEE_ID;
