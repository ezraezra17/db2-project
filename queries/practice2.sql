--1. list the initials of all the employees
select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1)  from EMPLOYEES ;



--2. list the full names of all employees ( fullname: Lastname FirstName)

select FIRST_NAME || ' ' || LAST_NAME as "fullname"from EMPLOYEES;


--3. who has the longest name in the employees table?
select FIRST_NAME,length(FIRST_NAME) from (select FIRST_NAME from EMPLOYEES  order by length(FIRST_NAME) desc) where ROWNUM <2  ;




--4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
select * from EMPLOYEES;

select * from EMPLOYEES where DEPARTMENT_ID in (90,60,100,130,120);

--5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from EMPLOYEES where DEPARTMENT_ID != 90 or DEPARTMENT_ID!=60 or DEPARTMENT_ID !=100 or DEPARTMENT_ID !=130 or DEPARTMENT_ID !=120;

--6. divide employees into groups by using their job id

select JOB_ID from EMPLOYEES group by JOB_ID;


--6.1 display the maximum salaries in each groups
select JOB_ID, max(SALARY) from EMPLOYEES group by JOB_ID;
--6.2 display the minium salaries in each groups

select JOB_ID,min(SALARY) from EMPLOYEES group by JOB_ID;
--6.3 display the average salary of each group
select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID;
--6.4 how many employees are there in each group that have minimum salary of 5000 ?

select JOB_ID,count(*) from EMPLOYEES where SALARY >=5000 group by JOB_ID;

--6.5 display the total budgests of each groups
select JOB_ID,sum(SALARY),count(*) from EMPLOYEES group by JOB_ID;






--7. display employees' full email addresses and full names
select lower(EMAIL || '@gmail.com')as "fullemail",FIRST_NAME ||' ' || LAST_NAME as "fullnames" from EMPLOYEES;

--(assume that the domain of the email is @gmail)



--8. display full addresses from locations table in a single column
select STREET_ADDRESS || ',' || CITY || ','|| LOCATIONS.COUNTRY_ID || ','|| LOCATIONS.POSTAL_CODE AS "fulladress" from LOCATIONS;

--(full address: Street_Addtess,  CityName  ZipCode,  Country_id)