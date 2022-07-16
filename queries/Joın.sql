select * from EMPLOYEES;
select * from DEPARTMENTS;

select  first_name ,LAST_NAME,DEPARTMENT_NAME from EMPLOYEES e left join
    DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select CUSTOMER_ID,first_name,last_name,customer.address_id,address.address_id,address,
       phone from customer left outer join address on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID
where address.ADDRESS_ID is null ;

select * from CUSTOMER FULL OUTER JOIN ADDRESS ON CUSTOMER.ADDRESS_ID= ADDRESS.ADDRESS_ID
WHERE CUSTOMER.ADDRESS_ID IS NULL  OR ADDRESS.ADDRESS_ID IS NULL ;