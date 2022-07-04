-- Executed on oracle livesql: https://livesql.oracle.com/

-- Table Instructor Creation

create table Instructor ( 
    Name char(15) not null, 
    Subject char(15) not null, 
    PRIMARY KEY (Name, Subject) 
);

-- Table Course Creation

create table Course (
    Name char(15) not null,
    PRIMARY KEY (Name) 
);

-- Inserting values into the table Instructor

INSERT INTO Course values ('JavaScript');
INSERT INTO Course values ('Scratch');
INSERT INTO Course values ('Python');

-- Inserting values into the table Course

INSERT INTO Instructor values ('Aleph','Processing');
INSERT INTO Instructor values ('Bit','Python');
INSERT INTO Instructor values ('Bit','JavaScript');
INSERT INTO Instructor values ('Bit','Java');
INSERT INTO Instructor values ('CRC','Python');
INSERT INTO Instructor values ('CRC','JavaScript');
INSERT INTO Instructor values ('Dat','Scratch');
INSERT INTO Instructor values ('Dat','Python');
INSERT INTO Instructor values ('Dat','JavaScript');
INSERT INTO Instructor values ('Emscr','Scratch');
INSERT INTO Instructor values ('Emscr','Processing');
INSERT INTO Instructor values ('Emscr','JavaScript');
INSERT INTO Instructor values ('Emscr','Python');

-- Select Query

select Instructor.Name
from Instructor right join Course
on instructor.Subject = course.name
group by instructor.Name
having count(instructor.Name) = (select count(*) from course);

/*

First we are joining tables Instructor and Course by subject name.
Here we have grouping the entries by instructor name.
In the having clause we are checking whether 
count of subjects taught by an instructor in the result is equal the count of subjects in table course.  
This result will then only return the entries satisfying the above condition. 

*/