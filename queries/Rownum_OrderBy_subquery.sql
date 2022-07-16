SELECT * FROM EMPLOYEES;

SELECT JOB_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY JOB_ID HAVING AVG(SALARY)>5000;
 /* FİND THE EMLOYEES WHO ARE MAKING HİGHEST SALARY İN THE OCMPANY */
SELECT * FROM EMPLOYEES  ORDER BY SALARY DESC ;

-- GET ME THE HİGHEST SALARY
SELECT MAX(SALARY) FROM EMPLOYEES;
--24000

-- HİGHEST SALARY EMLOYEE İNFO
SELECT * FROM EMPLOYEES WHERE SALARY=24000;

--SUB-QUERY SOLUTİON İN ONE SHOT
SELECT * FROM EMPLOYEES WHERE SALARY=(SELECT MAX(SALARY) FROM EMPLOYEES);

--FİND THE SECOND HİGHEST SALARY
SELECT MAX(SALARY)FROM EMPLOYEES WHERE SALARY<24000;
-- OE SHOT COMBİNİNG TWO QURRRİES

SELECT MAX(SALARY) FROM EMPLOYEES WHERE SALARY <(SELECT MAX(SALARY)FROM EMPLOYEES);

--employee info of who is makig second highest salary

select  max(SALARY) from EMPLOYEES where SALARY<(select max(SALARY)from EMPLOYEES);

select * from EMPLOYEES where SALARY= (select max(SALARY) from EMPLOYEES where SALARY<(select max(SALARY) from EMPLOYEES));
-- list the people according to their salary in descending order
select * from EMPLOYEES order by SALARY desc ;


-- get the first 10 people and order them from high to low beased on thei salary
select * from EMPLOYEES where rownum <11 order by salary desc;
--order all employees based on salary hight to low and display onlt 10  first result

select * from  ( select * from EMPLOYEES order by SALARY desc ) where rownum< 11;



