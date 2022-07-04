-- Executed on oracle livesql: https://livesql.oracle.com/


-- Table ProjectStatus Creation

create table ProjectStatus( 
PID char(4) not null, 
Step int not null, 
Status char(1) not null, 
PRIMARY KEY (PID, Step) 
);

-- Inserting values into the table

insert into ProjectStatus values ('P100', 0, 'C');

insert into ProjectStatus values ('P100', 1, 'W');

insert into ProjectStatus values ('P100', 2, 'W');

insert into ProjectStatus values ('P201', 0, 'C');

insert into ProjectStatus values ('P201', 1, 'C');

insert into ProjectStatus values ('P333', 0, 'W');

insert into ProjectStatus values ('P333', 1, 'W');

insert into ProjectStatus values ('P333', 2, 'W');

insert into ProjectStatus values ('P333', 3, 'W');

-- Select Query

select PID  
from ProjectStatus 
where step=0 and status='C' and PID not in (select PID from ProjectStatus where step=1 and status='C') ;

/* 
Here the idea is to select only those PIDs whose step 0 is completed.
This can be done by excluding all the entries in which the PIDs have completed step 1 and so on next steps.
So we will exclude the entries who have completed their step 1.
Hence the use of 'not in' 
*/