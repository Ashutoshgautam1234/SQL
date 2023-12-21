                                    -- PROJECT 2(career choices of alumni of two Universities will be analyzed )
-- Q1 Create new schema as alumni                                    

create database alumni;
USE ALUMNI;
-- Q2 Import all .csv files into MySQL
-- DONE

-- Q3 Run SQL command to see the structure of six tables
USE ALUMNI;
DESC college_a_hs;
DESC college_a_se;
DESC college_a_sj;
DESC college_b_hs;
DESC college_b_se;
DESC college_b_sj;

-- Q4 Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python.
SELECT * FROM college_a_hs limit 1000;
SELECT * FROM  college_a_se limit 1000;
SELECT * FROM college_a_sj limit 1000;
SELECT * FROM  college_b_hs limit 1000;
SELECT * FROM  college_b_se limit 1000;
SELECT * FROM  college_b_sj limit 1000;

-- Q5 Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel.
-- Q6 Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
select * from college_a_hs;

CREATE VIEW college_A_HS_V AS
    (SELECT 
        *
    FROM
        college_a_hs
    WHERE
        RollNo IS NOT NULL AND LENGTH(RollNo)!=0 AND RollNo NOT LIKE "-"
            AND LastUpdate IS NOT NULL AND LENGTH(LastUpdate)!=0 AND LastUpdate NOT LIKE "-"
            AND Name IS NOT NULL AND LENGTH(Name)!=0 AND Name NOT LIKE "-"
            AND FatherName IS NOT NULL AND LENGTH(FatherName)!=0 AND FatherName NOT LIKE "-"
            AND MotherName IS NOT NULL AND LENGTH(MotherName)!=0 AND MotherName NOT LIKE "-"
            AND Batch IS NOT NULL AND LENGTH(Batch)!=0 AND Batch NOT LIKE "-"
            AND Degree IS NOT NULL AND LENGTH(Degree)!=0 AND Degree NOT LIKE "-"
            AND PresentStatus IS NOT NULL AND LENGTH(PresentStatus)!=0 AND PresentStatus NOT LIKE "-"
            AND HSDegree IS NOT NULL AND LENGTH(HSDEGREE)!=0 AND HSDEGREE NOT LIKE "-"
            AND EntranceExam IS NOT NULL AND LENGTH(EntranceExam)!=0 AND EntranceExam NOT LIKE "-"
            AND Institute IS NOT NULL AND LENGTH(Institute)!=0 AND Institute NOT LIKE "-"
            AND Location IS NOT NULL AND LENGTH(Location)!=0 AND Location NOT LIKE "-");
SELECT DISTINCT HSDEGREE FROM college_A_HS_V ORDER BY HSDEGREE;
SELECT * FROM college_A_HS_V;

-- Q7 Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.
SELECT distinct FATHERNAME FROM college_a_se order by FATHERNAME DESC;
create view College_A_SE_V as (select * from College_A_SE 
where
ROLLNO IS NOT NULL
AND LASTUPDATE IS NOT NULL AND LENGTH(LASTUPDATE)!=0
AND NAME IS NOT NULL AND LENGTH(NAME)!=0
AND FATHERNAME IS NOT NULL AND LENGTH(FATHERNAME)!=0
AND MOTHERNAME IS NOT NULL AND LENGTH(MOTHERNAME)!=0
AND BATCH IS NOT NULL AND LENGTH(BATCH)!=0
AND DEGREE IS NOT NULL AND LENGTH(DEGREE)!=0
AND PRESENTSTATUS IS NOT NULL AND LENGTH(PRESENTSTATUS)!=0
AND ORGANIZATION IS NOT NULL AND LENGTH(ORGANIZATION)!=0
AND LOCATION IS NOT NULL AND LENGTH(LOCATION)!=0);
SELECT * FROM College_A_SE_V ;

-- Q8 Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
CREATE VIEW College_A_SJ_V AS ( SELECT * FROM College_A_SJ 
WHERE
ROLLNO IS NOT NULL 
AND LASTUPDATE IS NOT NULL AND LENGTH(LASTUPDATE)!=0
AND NAME IS NOT NULL AND LENGTH(NAME)!=0
AND FATHERNAME IS NOT NULL AND LENGTH(FATHERNAME)!=0
AND MOTHERNAME IS NOT NULL AND LENGTH(MOTHERNAME)!=0
AND BATCH IS NOT NULL AND LENGTH(BATCH)!=0
AND DEGREE IS NOT NULL AND LENGTH(DEGREE)!=0
AND PRESENTSTATUS IS NOT NULL AND LENGTH(PRESENTSTATUS)!=0
AND ORGANIZATION IS NOT NULL AND LENGTH(ORGANIZATION)!=0
AND Designation IS NOT NULL AND LENGTH(Designation) 
AND LOCATION IS NOT NULL AND LENGTH(LOCATION)!=0);
SELECT * FROM College_A_SJ_V ;

-- Q9 Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.
USE ALUMNI;
CREATE view College_B_HS_V AS ( SELECT * FROM college_b_hs 
WHERE
ROLLNO IS NOT NULL AND length(ROLLNO)!=0
AND LASTUPDATE IS NOT NULL AND LENGTH(LASTUPDATE)!=0
AND NAME IS NOT NULL AND LENGTH(NAME)!=0
AND FATHERNAME IS NOT NULL AND LENGTH(FATHERNAME)!=0
AND MOTHERNAME IS NOT NULL AND LENGTH(MOTHERNAME)!=0
AND BRANCH IS NOT NULL AND LENGTH(BRANCH)!=0
AND BATCH IS NOT NULL AND LENGTH(BATCH)!=0
AND DEGREE IS NOT NULL AND LENGTH(DEGREE)!=0
AND PRESENTSTATUS IS NOT NULL AND LENGTH(PRESENTSTATUS)!=0
AND HSDegree IS NOT NULL AND LENGTH(HSDEGREE)!=0 AND HSDEGREE NOT LIKE "-"
AND EntranceExam IS NOT NULL AND LENGTH(EntranceExam)!=0 AND EntranceExam NOT LIKE "-"
AND Institute IS NOT NULL AND LENGTH(Institute)!=0 AND Institute NOT LIKE "-"
AND LOCATION IS NOT NULL AND LENGTH(LOCATION)!=0);
SELECT * FROM College_B_HS_V;

-- Q10 Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.
CREATE VIEW College_B_SE_V AS
    (SELECT 
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL And LENGTH(RollNo)!=0
            AND LastUpdate IS NOT NULL And LENGTH(LastUpdate)!=0
            AND Name IS NOT NULL And LENGTH(Name)!=0
            AND FatherName IS NOT NULL And LENGTH(FatherName)!=0
            AND MotherName IS NOT NULL And LENGTH(MotherName)!=0
            AND Branch IS NOT NULL And LENGTH(Branch)!=0
            AND Batch IS NOT NULL And LENGTH(Batch)!=0
            AND Degree IS NOT NULL And LENGTH(Degree)!=0
            AND PresentStatus IS NOT NULL And LENGTH(PresentStatus)!=0
            AND Organization IS NOT NULL And LENGTH(Organization)!=0
            AND Location IS NOT NULL And LENGTH(Location)!=0);
SELECT * FROM College_B_SE_V;

-- Q11 Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V, Remove null values.
create view College_B_SJ_V as (select * from College_B_SJ
where
ROLLNO IS NOT NULL and length(ROLLNO)!=0
AND LASTUPDATE IS NOT NULL AND LENGTH(LASTUPDATE)!=0
AND NAME IS NOT NULL AND LENGTH(NAME)!=0
AND FATHERNAME IS NOT NULL AND LENGTH(FATHERNAME)!=0
AND MOTHERNAME IS NOT NULL AND LENGTH(MOTHERNAME)!=0
AND Branch IS NOT NULL And LENGTH(Branch)!=0
AND BATCH IS NOT NULL AND LENGTH(BATCH)!=0
AND DEGREE IS NOT NULL AND LENGTH(DEGREE)!=0
AND PRESENTSTATUS IS NOT NULL AND LENGTH(PRESENTSTATUS)!=0
AND ORGANIZATION IS NOT NULL AND LENGTH(ORGANIZATION)!=0
AND Designation IS NOT NULL AND LENGTH(Designation) 
AND LOCATION IS NOT NULL AND LENGTH(LOCATION)!=0);
SELECT * FROM College_B_SJ_V;

-- Q12 Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case for views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
DELIMITER $$
CREATE PROCEDURE LOWER_PROCEDURE()
BEGIN 
SELECT LOWER(Name),LOWER(FatherName),LOWER(MotherName) FROM College_A_HS_V;
SELECT LOWER(Name),LOWER(FatherName),LOWER(MotherName) FROM College_A_Se_V;
SELECT LOWER(Name),LOWER(FatherName),LOWER(MotherName) FROM College_A_Sj_V;
SELECT LOWER(Name),LOWER(FatherName),LOWER(MotherName) FROM College_B_HS_V;
SELECT LOWER(Name),LOWER(FatherName),LOWER(MotherName) FROM College_B_Se_V;
SELECT LOWER(Name),LOWER(FatherName),LOWER(MotherName) FROM College_B_Sj_V;
END $$
DELIMITER ;
CALL LOWER_PROCEDURE;

-- Q13 Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) into MS Excel and make pivot chart for location of Alumni. 
-- Q14 Write a query to create procedure get_name_collegeA using the cursor to fetch names of all students from college A.
DELIMITER $$
CREATE PROCEDURE get_name_collegeA (INOUT GETNAME longtext)
BEGIN 
DECLARE FINISHED INT DEFAULT 0;
DECLARE NAME_LIST VARCHAR(8000) DEFAULT "";

DECLARE NAME_DETAIL
   CURSOR FOR 
SELECT NAME FROM college_a_hs UNION SELECT NAME FROM college_a_se UNION
SELECT NAME FROM college_a_sj;
DECLARE CONTINUE HANDLER 
FOR NOT FOUND SET FINISHED = 1;

OPEN NAME_DETAIL;

GETNAMELOOP :
LOOP
FETCH NAME_DETAIL INTO NAME_LIST;
IF FINISHED = 1 THEN
LEAVE GETNAMELOOP;
END IF;

SET GETNAME = concat(NAME_LIST,";",GETNAME);
END LOOP GETNAMELOOP;
CLOSE NAME_DETAIL;
END $$
DELIMITER ;

SET@GETNAME="";
CALL get_name_collegeA(@GETNAME);
select @GETNAME;

-- Q15 Write a query to create procedure get_name_collegeB using the cursor to fetch names of all students from college B.

delimiter $$
create procedure get_name_collegeB(inout students longtext)
begin 
declare finished int default 0;
declare namesclgb varchar(8000) default "";

declare students_name
   cursor for  
 select Name from college_b_hs_v union select Name from college_b_se_v union select Name from college_b_sj_v;
 declare continue handler 
 for not found 
 set finished = 1;
 
 open students_name;
 
 get_name :
 loop 
 fetch students_name into namesclgb;
 if finished = 1 then 
 leave get_name;
 end if;
 
 set students = concat(namesclgb,";",students);
 end loop get_name;
 close students_name;
 end $$
 delimiter ;
 
 set@students = "";
 call get_name_collegeB(@students);
 select @students;
 
 -- Q16 Calculate the percentage of career choice of College A and College B Alumni
-- (w.r.t Higher Studies, Self Employed and Service/Job)
-- Note: Approximate percentages are considered for career choices.
SELECT * FROM college_a_hs;

SELECT 'HIGHER STUDIES',
(SELECT COUNT(*) FROM college_a_hs)/ 
((SELECT count(*) FROM college_a_hs)+(SELECT count(*) FROM college_a_se)+(SELECT count(*) FROM college_a_sj)) * 100
as "College A Percentage" ,
(SELECT COUNT(*)FROM college_b_hs)/
((SELECT count(*) FROM college_b_hs)+(SELECT count(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj)) * 100
AS "College B Percentage"
union
select 'Self Employed',
(select count(*) from college_a_se)/
((select count(*) from college_a_hs)+(select count(*) from college_a_se)+(select count(*) from college_a_sj)) * 100
as "College A Percentage",
(SELECT COUNT(*)FROM college_b_se)/
((SELECT count(*) FROM college_b_hs)+(SELECT count(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj)) * 100
AS "College B Percentage"
union
select 'Service Job',
(SELECT COUNT(*)FROM college_a_sj)/
((SELECT count(*) FROM college_a_hs)+(SELECT count(*) FROM college_a_se)+(SELECT COUNT(*) FROM college_a_sj)) * 100
as "College A Percentage",
(SELECT COUNT(*)FROM college_b_sj)/
((SELECT count(*) FROM college_b_hs)+(SELECT count(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj)) * 100
AS "College B Percentage";

 use alumni;
 



