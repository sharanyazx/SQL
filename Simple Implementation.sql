-- create a database
create database sharanya;

-- use database 
use sharanya;

-- create a table
create table class(
name varchar(100),
roll_number varchar(100),
Department varchar(100),
Phone_number int(10)
);
drop table class;
-- Display
select * from  class;

-- Inserting values in table
insert into class(name , roll_number,department,Phone_number)
values( 'sharanya','727622bad007','Data Science',8825712019),
( 'sujitha','727622bad081','Data Science',123456),
( 'parkavi','727622bad095','Artificial Intelligence',878237879),
( 'janani','727622bad035','Data Science',880183619),
( 'Dharani','727622bad071','Data Science',8745642019),
( 'Nanthini','727622bad051','Artificial Intelligence',7365344867);

--  adding new column Age
alter table  class
add column Age int;

-- Adding
alter table  class
add column  City varchar(20);

-- update the city name
update class
set City='Coimbatore'
where roll_number='727622bad007';
set sql_safe_updates=0;

update class
set City='Pollachi'
where roll_number='727622bad081';

update class
set City='Erode'
where roll_number='727622bad035';

update class
set City='Tiruppur'
where roll_number='727622bad071';

update class
set City='Madurai'
where roll_number='727622bad051';

update class
set City='Palani'
where roll_number='727622bad095';

update class
set Age=19
where roll_number='727622bad007';

update class
set Age=20
where roll_number='727622bad035';

update class
set Age=20
where roll_number='727622bad081';

update class
set Age=20
where roll_number='727622bad071';

update class
set Age=20
where roll_number='727622bad095';

update class
set Age=20
where roll_number='727622bad051';


select * from class 
where department ='Data Science';

select *from class
where department ='Artificial Intelligence';

-- column rename 
 alter table class
change column  City  Town varchar(20);


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- create another table
create table Marks(
name varchar(100),
roll_number varchar(100) not null,
Department varchar(100),
Phone_number int,
Mark int (100),
primary key(roll_number));

-- display
select * from Marks;


-- Inserting values in table
insert into Marks(name , roll_number,Department,Phone_number,mark)
values( 'sharanya','727622bad007','Data Science',8825712019,100),
( 'sujitha','727622bad081','Data Science',12345666,78),
( 'parkavi','727622bad095','Artificial Intelligence',878237879,89),
( 'janani','727622bad035','Data Science',880183619,94),
( 'Dharani','727622bad071','Data Science',8745642019,98),
( 'Nanthini','727622bad051','Artificial Intelligence',7365344867,90);


-- Logical Operator
select * from Marks
where Mark>90 and department ='Data Science';

select name from marks
where mark >90;

-- Aggregate
select count(*)
from marks where mark>90;
select avg(mark) from marks ;
select min(mark) from marks ;
select max(mark) from marks ;
select avg(mark) from marks ;
select sum(mark) from marks
where mark>90 ;
select * from marks
where mark between 95 and 100  ;

-- updated Shiva Dharani mark
update Marks
set mark=70
where roll_number='727622bad071';
