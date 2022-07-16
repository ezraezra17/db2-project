--how can we renme the column that we displayed
select FIRST_NAME as "Given_name", LAST_NAME as "second name" from EMPLOYEES;

select FIRST_NAME, LAST_NAME from EMPLOYEES;
-- text functions, sting man
--java firt name " " last name
-- in sql cncat is ||

select FIRST_NAME || ' ' || LAST_NAME as "full name" from EMPLOYEES;
-- add @gmail.com and name new column tu full_emaşl
select concat( email,'@gmail.com') from EMPLOYEES;
--add @gmail.com  and name new column to full_email
select EMAIL || '@gmail.com' as "full_email" from EMPLOYEES;
-- making ll lower case
select lower(EMAIL || '@gmail.com')as "full_email" from EMPLOYEES;

-- upper case
select upper(EMAIL || '@gmail.com')as "full_email" from EMPLOYEES;

-- length(value)

select FIRST_NAME, length(FIRST_NAME) as "length_name" from EMPLOYEES order by "length_name" desc ;

--substr(name, begIndex, NumberofChar)
 select substr(FIRST_NAME,0,1)||'.'|| substr(LAST_NAME,0,1) as "initials",
    FIRST_NAME||' '|| LAST_NAME as "full name", lower(EMAIL || '@gmail.com')as "full_email" from EMPLOYEES;

--view
CREATE view Emaillist_esra  as select substr(FIRST_NAME,0,1)||'.'|| substr(LAST_NAME,0,1) as "initials",
                               FIRST_NAME||' '|| LAST_NAME as "full name", lower(EMAIL || '@gmail.com')as "full_email" from EMPLOYEES;
--selecting fllnam from my list
select "full name" from Emaillist_esra;

--remove view-
drop view Emaillist_esra;