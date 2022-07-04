-- Executed on oracle livesql: https://livesql.oracle.com/

-- Table Instructor Creation

create table Instructor ( 
    Name char(15) not null, 
    Subject char(15) not null, 
    PRIMARY KEY (Name, Subject) 
);

-- Inserting values into the table

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

select Name
from Instructor
where Subject in ('JavaScript','Scratch','Python')
group by Name
having count(*)=3;

/*

Here we have grouped instructors by there names 
while only selecting entries which have subject as JavaScript, Scratch and Python.
If the instructor is teaching all these subjects then the count of his/her entries will be 3
So we are checking it using having.

*/