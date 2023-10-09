use [master]

drop database [TattooManager]

create  database [TattooManager]

use [TattooManager]

create Table [Role](
roleID nvarchar(15)	Primary Key,
roleName nvarchar(30),
[status] bit
)

create Table [User](
userID nvarchar(15) Primary Key,
userAcccount nvarchar(30) not Null Unique,
[password] nvarchar(30) not Null,
roleID nvarchar(15) Foreign Key references [Role](roleID),
fullname nvarchar(30) not Null,
birthday date,
gender nvarchar(10),
phoneNumber nvarchar(15) not Null Unique,
email nvarchar(30) not Null Unique,
city nvarchar(15) not Null,
district nvarchar(15) not Null,
[status] bit
)

create Table [Studio](
studioID nvarchar(15) Primary Key,
managerID nvarchar(15) foreign key references [User](userID),
studioName nvarchar(50) not Null,
studioAdress nvarchar(200) not Null,
city nvarchar(15) not Null,
district nvarchar(15) not Null,
studioPhoneNumber nvarchar(15) not Null Unique,
studioEmail nvarchar(30) not Null Unique,
[status] bit,
rating float,
timeStart time,
timeEnd time,
availablePerSlot int
)

/*NHỚ PHẢI CHẠY 4 DÒNG NÀY*/
Alter Table [User]
Add studioID nvarchar(15)

Alter Table [User]
Add Foreign Key (studioID) References [Studio](studioID)


create Table [Service](
serviceID nvarchar(15) Primary Key,
systemStaffID nvarchar(15) Foreign Key References [User](userID),
serviceName nvarchar(30) not Null,
[status] bit,
)

create Table [Service_Detail] (
serviceDetailID nvarchar(15) Primary Key,
systemStaffID nvarchar(15) Foreign Key References [User](userID),
serviceDetailName nvarchar(30) not Null,
[status] bit,
)

create Table [Service_Size](
serviceSizeID nvarchar(15) Primary Key,
systemStaffID nvarchar(15) Foreign Key References [User](userID),
serviceSizeName nvarchar(30) not Null,
[status] bit,
)

create Table [Image](
imgId nvarchar(15) Primary Key,
imgName nvarchar(50) not Null,
imgLink nvarchar(300) not Null,
studioID nvarchar(15) Foreign Key References [Studio](studioID),
userID nvarchar(15) Foreign Key (userID) References [User](userID)
)

create Table [Studio_Service](
studioServiceID nvarchar(15) Primary Key,
studioID nvarchar(15) foreign Key References [Studio](studioID),
serviceID nvarchar(15) foreign Key References [Service](serviceID),
serviceDetailID nvarchar(15) foreign Key References [Service_Detail](serviceDetailID),
serviceSizeID nvarchar(15) foreign Key References [Service_Size](serviceSizeID),
studioStaffID nvarchar(15) Foreign Key References [User](userID),
imgID nvarchar(15) Foreign Key References [Image](imgID),
price float not Null,
[status] bit
)

create Table [Slot](
slotID nvarchar(15) Primary Key,
studioID nvarchar(15) Foreign Key References [Studio](studioID),
timeStart time,
timeEnd time
)

create Table [Booking](
bookingID nvarchar(15) Primary Key,
userID nvarchar(15) foreign key References [User](userID) ,
studioID nvarchar(15) Foreign Key References [Studio](studioID),
studioStaffID nvarchar(15) Foreign Key References [User](userID),
slotID nvarchar(15) Foreign Key References [Slot](slotID),
totalPrice float not Null,
[description] nvarchar(300),
currentDate date,
bookingDate date,
rating int,
commentation nvarchar(300),
[status] nvarchar(50)
)

create Table [Booking_StudioService](
bookingID nvarchar(15) Foreign Key References [Booking](bookingID),
studioServiceID nvarchar(15) Foreign Key References [Studio_Service](studioServiceID),
artistID nvarchar(15) Foreign Key References [User](userID),
amount int
)
