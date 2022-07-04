-- Executed on oracle livesql: https://livesql.oracle.com/

-- Table StudentRegistration Creation

create table StudentRegisteration ( 
    SID number not null, 
    Instructor char(15) not null, 
    Subject char(15) not null, 
    PRIMARY KEY (SID, Instructor, Subject) 
);

-- Inserting values into the table

INSERT INTO StudentRegisteration values (108,'Joseph','Processing');
INSERT INTO StudentRegisteration values (111,'Emscr ','Processing');
INSERT INTO StudentRegisteration values (122,'Joseph','Python');
INSERT INTO StudentRegisteration values (123,'Aleph','Python');
INSERT INTO StudentRegisteration values (128,'CRC','Scratch');
INSERT INTO StudentRegisteration values (138,'Sam','Processing');
INSERT INTO StudentRegisteration values (150,'CRC','Python');
INSERT INTO StudentRegisteration values (170,'Sam','Python');
INSERT INTO StudentRegisteration values (191,'Sam','Java');
INSERT INTO StudentRegisteration values (207,'Bit','Scratch');
INSERT INTO StudentRegisteration values (213,'Joseph','Java');
INSERT INTO StudentRegisteration values (239,'Joseph','Scratch');
INSERT INTO StudentRegisteration values (248,'Bit','Javascript');
INSERT INTO StudentRegisteration values (253,'Bit','Java');
INSERT INTO StudentRegisteration values (285,'Dat ','Javascript');
INSERT INTO StudentRegisteration values (322,'Bit','Javascript');
INSERT INTO StudentRegisteration values (336,'Aleph','Javascript');
INSERT INTO StudentRegisteration values (337,'Emscr ','Scratch');
INSERT INTO StudentRegisteration values (345,'Bit','Processing');
INSERT INTO StudentRegisteration values (345,'Bit','Python');
INSERT INTO StudentRegisteration values (345,'Joseph','Javascript');
INSERT INTO StudentRegisteration values (352,'Bit','Scratch');
INSERT INTO StudentRegisteration values (353,'Shawn','Processing');
INSERT INTO StudentRegisteration values (398,'Bit','Processing');
INSERT INTO StudentRegisteration values (422,'Shawn','Processing');
INSERT INTO StudentRegisteration values (446,'Sam','Python');
INSERT INTO StudentRegisteration values (452,'Joseph','Javascript');
INSERT INTO StudentRegisteration values (466,'Emscr ','Java');
INSERT INTO StudentRegisteration values (480,'Emscr ','Javascript');
INSERT INTO StudentRegisteration values (555,'Aleph','Java');
INSERT INTO StudentRegisteration values (555,'Emscr ','Python');
INSERT INTO StudentRegisteration values (568,'Shawn','Processing');
INSERT INTO StudentRegisteration values (587,'Aleph','Scratch');
INSERT INTO StudentRegisteration values (594,'Bit','Processing');
INSERT INTO StudentRegisteration values (595,'Bit','Scratch');
INSERT INTO StudentRegisteration values (595,'Sam','Python');
INSERT INTO StudentRegisteration values (602,'CRC','Scratch');
INSERT INTO StudentRegisteration values (606,'Aleph','Javascript');
INSERT INTO StudentRegisteration values (621,'Shawn','Java');
INSERT INTO StudentRegisteration values (651,'Dat ','Java');
INSERT INTO StudentRegisteration values (662,'CRC','Processing');
INSERT INTO StudentRegisteration values (662,'Dat ','Javascript');
INSERT INTO StudentRegisteration values (662,'Emscr ','Scratch');
INSERT INTO StudentRegisteration values (662,'Shawn','Java');
INSERT INTO StudentRegisteration values (666,'Bit','Processing');
INSERT INTO StudentRegisteration values (669,'Shawn','Javascript');
INSERT INTO StudentRegisteration values (681,'Shawn','Javascript');
INSERT INTO StudentRegisteration values (685,'Emscr ','Java');

-- Select Query

select max(count(*))*45*0.1 as highest_bonus_amount_paid -- We have considered uniform hourly_rate as 45 dollars.
from StudentRegisteration
Group by instructor;

/*

Here we used combination of two aggregate functions count and max.
count() will the count of total number of students taught by an Instructor and
max() will give the information of an Instructor who have most no of students
then we multiply the hourly rate and return the bonus amount of him.
*/