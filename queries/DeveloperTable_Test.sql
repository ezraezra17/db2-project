
-- removes duplicates and sorts
select * from TESTERS
union
select * from DEVELOPERS;
--do not change the rows and get them  vertically
select * from TESTERS
UNION all
select * from DEVELOPERS;

select names from DEVELOPERS
minus
select names from TESTERS;

select names from DEVELOPERS
intersect
select names from TESTERS;

--how to find duplicate names in employees table
select  first_name, count(*) from EMPLOYEES group by FIRST_NAME having count(*)>1;

select * from REGIONS;

