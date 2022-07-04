-- Executed on oracle livesql: https://livesql.oracle.com/

-- Table ClassRegistration Creation
create table ClassRegisteration ( 
    SID number not null, 
    ClassName char(15) not null, 
    Grade char(1) not null, 
    PRIMARY KEY (SID, ClassName) 
);


-- Inserting values into the table

INSERT INTO ClassRegisteration values (123,'Scratch','B');

INSERT INTO ClassRegisteration values (662,'Java','B');

INSERT INTO ClassRegisteration values (662,'Python','A');

INSERT INTO ClassRegisteration values (662,'JavaScript','A');

INSERT INTO ClassRegisteration values (662,'Scratch','B');

INSERT INTO ClassRegisteration values (345,'Scratch','A');

INSERT INTO ClassRegisteration values (345,'JavaScript','B');

INSERT INTO ClassRegisteration values (345,'Python','A');

INSERT INTO ClassRegisteration values (555,'Python','B');

INSERT INTO ClassRegisteration values (555,'JavaScript','B');

INSERT INTO ClassRegisteration values (213,'JavaScript','A');

INSERT INTO ClassRegisteration values (123,'Processing','A');

INSERT INTO ClassRegisteration values (123,'Python','B');

-- Select Query

select ClassName, count(ClassName) as Total -- Using aggregate function count to count student enrollments for each class.  
from ClassRegisteration  
group by ClassName  -- Grouping Entries by ClassName
order by Total DESC; 
-- Arranging the output in descending order