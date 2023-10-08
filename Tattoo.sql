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
birthday date not Null,
gender varchar(10),
phoneNumber varchar(15) not Null Unique,
email varchar(30) not Null Unique,
city varchar(15) not Null,
district varchar(15) not Null,
[status] bit,
Constraint fk_User_roleID
	Foreign Key (roleID) references [Role](roleID)
	On Delete set Null
)

create Table [Studio](
studioID varchar(15) Primary Key,
managerID varchar(15),
studioName varchar(50) not Null,
studioAdress varchar(200) not Null,
city varchar(15) not Null,
district varchar(15) not Null,
studioPhoneNumber varchar(15) not Null Unique,
studioEmail varchar(30) not Null Unique,
availablePerSlot int not Null,
[status] bit,
rating float,
Constraint fk_Studio_managerId
	Foreign Key (managerID) references [User](userID)
	On Delete Cascade
)

create Table [Service](
serviceID varchar(15) Primary Key,
serviceName varchar(30) not Null,
systemStaffID varchar(15),
serviceDetail varchar(200),
[status] bit,
Constraint fk_Service_systemStaffID
	Foreign Key (systemStaffID) References [User](userID)
	On Delete set Null
)

create Table [Image](
imgId varchar(15) Primary Key,
imgName varchar(50) not Null,
studioID varchar(15),
imgLink varchar(300) not Null,
userID varchar(15),
Constraint fk_Image_studioID
	Foreign Key (studioID) References [Studio](studioID)
	On Delete Cascade,
Constraint fk_Image_userID
	Foreign Key (userID) References [User](userID)
	On Delete No Action
)

create Table [Studio_Service](
studioServiceID varchar(15) Primary Key,
studioID varchar(15),
serviceID varchar(15),
studioStaffID varchar(15),
imgID varchar(15),
price float not Null,
[status] bit,
Constraint fk_Studio_SerVice_studioID
	Foreign Key (studioID) References [Studio](studioID)
	On Delete Cascade,
Constraint fk_Studio_Service_serviceID
	Foreign Key (serviceID) References [Service](serviceID)
	On Delete set Null,
Constraint fk_Studio_Service_studioStaffID
	Foreign Key (studioStaffID) References [User](userID)
	On Delete No Action,
Constraint fk_Studio_Service_imgID
	Foreign Key (imgID) References [Image](imgID)
	On Delete No Action
)

create Table [Slot](
slotID varchar(15) Primary Key,
timeStart time,
timeEnd time
)

create Table [Booking](
bookingID varchar(15) Primary Key,
userID varchar(15) ,
studioID varchar(15),
artistID varchar(15),
studioStaffID varchar(15),
slotID varchar(15),
totalPrice float not Null,
[description] varchar(300),
currentDate date,
rating int,
commentation varchar(300),
[status] varchar(50)
Constraint fk_Booking_userID
	Foreign Key (userID) References [User](userID)
	On Delete No Action,
Constraint fk_Booking_studioID
	Foreign Key (studioID) References [Studio](studioID)
	On Delete Cascade,
Constraint fk_Booking_artistID
	Foreign Key (artistID) References [User](userID)
	On Delete No Action,
Constraint fk_Booking_studioStaffID
	Foreign Key (studioStaffID) References [User](userID)
	On Delete No Action,
Constraint fk_Booking_slotID
	Foreign Key (slotID) References [Slot](slotID)
	On Delete No Action
)

create Table [Booking_StudioService](
bookingID varchar(15),
studioServiceID varchar(15) Foreign Key References [Studio_Service](studioServiceID),
Constraint fk_Booking_StudioService_bookingID
	Foreign Key (bookingID) References [Booking](bookingID)
	On Delete Cascade,
Constraint fk_Booking_StudioService_studioServiceID
	Foreign Key (studioServiceID) References [Studio_Service](studioServiceID)
	On Delete No Action
)

Alter Table [User]
Add studioID varchar(15)

Alter Table [User]
Add Constraint fk_User_studioID
	Foreign Key (studioID) References [Studio](studioID)
	On Delete No Action
