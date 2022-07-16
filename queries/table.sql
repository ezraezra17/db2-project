/*create table syntax:
  create TableName(
  colName1 DataType Constrans,
  colName2 DtaType Constraints(optional)
  colName3 DataType Constraints,
  ... */


CREATE TABLE ScrumTeam(
    Emp_ID INTEGER Primary Key,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)
);
select * from ScrumTeam;

INSERT INTO SCRUMTEAM(EMP_ID, FIRSTNAME, LASTNAME, JOBTITLE)
VALUES (2,'Esra','hazınedar','SDET');

INSERT INTO SCRUMTEAM VALUES (3,'İLKER','HAZİNEDAR','DEVELOPER');
INSERT INTO SCRUMTEAM VALUES (4,'SİNEM','HAZINEDAR','DEVELOPER');
INSERT INTO  SCRUMTEAM VALUES (5,'SEBNEM','HAZINEDAR','SCRUM MASTER');
-- howto update data
/*update table name
  SET column1=value1,
  column2= value2,"
  where condition;
 */

update ScrumTeam
set JOBTITLE = 'Tester'
where EMP_ID = 3;
--saving changes
commit;




