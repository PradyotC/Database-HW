/*

Issue 1: The start time could be incorrectly entered to be later than the end time. 

To solve this issue we can simply remove the attribute field of endtime and give them the fixed room booking slot of 1 hour.

For eg.: group A books roomNum 1 with startTime 10, then he will get the room for 10AM - 11AM. Thus start time would never be later than end time.

Issue 2: A new entry (for a new group) could be accidentally put in to occupy a room, even before the existing group in that room is done using that room.

Here we can keep roomNum and startTime as Primary Key, so each room booking will have a unique startTime and since booking slots are of 1 hour, other booking can only be of next hour as datatype of startTime is integer.

For eg: group A books roomNum 1 with startTime 14, then any other booking for this room by any group cannot be 14 as roomNum and startTime are unique and therefore room will only be booked for that group between 2PM to 3PM.

So the data creation language for the table ProjectRoomBookings will be:

CREATE TABLE ProjectRoomBookings 
(roomNum INTEGER NOT NULL, 
startTime INTEGER NOT NULL,  
groupName CHAR(10) NOT NULL, 
PRIMARY KEY (roomNum, startTime));

*/
