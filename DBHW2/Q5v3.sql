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
where Subject='JavaScript' and Name in (
select Name
from Instructor
where Subject='Scratch' and Name in (
select Name
from Instructor
where Subject='Python'));

/*
Here we have used nested queries.
In innermost query we are selecting names of instructors which teach Python.
In the middle query we are only selecting names of instructors which teach Scratch and are returned by inner query.
This query will only return the names of instructors that teach both Python and Scratch
Similiarly in the outer query we only select names of instructors which teach Javascript and are returned by middle query.
*/