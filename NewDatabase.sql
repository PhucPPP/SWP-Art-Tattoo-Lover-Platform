use [master]

drop database [TattooManager]

create  database [TattooManager]

use [TattooManager]

create Table [Role](
roleID varchar(15)	Primary Key,
roleName varchar(30),
[status] bit
)

create Table [User](
userID varchar(15) Primary Key,
userAcccount varchar(30) not Null Unique,
[password] varchar(30) not Null,
roleID varchar(15) Foreign Key references [Role](roleID),
fullname varchar(30) not Null,
birthday date,
gender varchar(10),
phoneNumber varchar(15) not Null Unique,
email varchar(30) not Null Unique,
city varchar(15) not Null,
district varchar(15) not Null,
[status] bit
)

create Table [Studio](
studioID varchar(15) Primary Key,
managerID varchar(15) foreign key references [User](userID),
studioName varchar(50) not Null,
studioAdress varchar(200) not Null,
city varchar(15) not Null,
district varchar(15) not Null,
studioPhoneNumber varchar(15) not Null Unique,
studioEmail varchar(30) not Null Unique,
[status] bit,
rating float,
)

create Table [Service](
serviceID varchar(15) Primary Key,
systemStaffID varchar(15) Foreign Key References [User](userID),
serviceName varchar(30) not Null,
serviceDetail varchar(200),
serviceSize varchar(15),
[status] bit,
)

create Table [Image](
imgId varchar(15) Primary Key,
imgName varchar(50) not Null,
imgLink varchar(300) not Null,
studioID varchar(15) Foreign Key References [Studio](studioID),
userID varchar(15) Foreign Key (userID) References [User](userID)
)

create Table [Studio_Service](
studioServiceID varchar(15) Primary Key,
studioID varchar(15) foreign Key References [Studio](studioID),
serviceID varchar(15) foreign Key References [Service](serviceID),
studioStaffID varchar(15) Foreign Key References [User](userID),
imgID varchar(15) Foreign Key References [Image](imgID),
price float not Null,
[status] bit
)

create Table [Slot](
slotID varchar(15) Primary Key,
studioID varchar(15) Foreign Key References [Studio](studioID),
timeStart time,
timeEnd time
)


create Table [Booking](
bookingID varchar(15) Primary Key,
userID varchar(15) foreign key References [User](userID) ,
studioID varchar(15) Foreign Key References [Studio](studioID),
studioStaffID varchar(15) Foreign Key References [User](userID),
slotID varchar(15) Foreign Key References [Slot](slotID),
totalPrice float not Null,
[description] varchar(300),
currentDate date,
rating int,
commentation varchar(300),
[status] varchar(50)
)

create Table [Booking_StudioService](
bookingID varchar(15) Foreign Key References [Booking](bookingID),
studioServiceID varchar(15) Foreign Key References [Studio_Service](studioServiceID),
artistID varchar(15) Foreign Key References [User](userID)
)
