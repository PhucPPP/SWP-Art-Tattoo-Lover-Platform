select * from [Role]
select * from [User]
select * from [Studio]
select * from [Service]
select * from [Service_Detail]
select * from [Service_Size]
select * from [Studio_Service]
select * from [Slot]
select * from [Booking]
select * from [Booking_StudioService]

/*Chạy từ trên xuống dưới nha*/
/*data bảng Role*/

insert [Role] ([roleID], [roleName], [status])
values ('TL', 'Tattoo Lover', 1)
insert into [Role]
values('SM', 'Studio Manger', 1)
insert into [Role]
values('SS', 'Studio Staff', 1)
insert into [Role]
values('SA', 'Studio Artist', 1)
insert into [Role]
values('SST', 'System Staff', 1)
insert into [Role]
values('AD', 'Administrator', 1)

/*data bảng User*/
/*Lưu ý nè: Tạo user cho Studio Manger thì phải để studioID = null trước -> Xuống tạo Studio bằng userID của
Studio Manager -> Update studioID của StudioManager trong bảng user bằng studioID mới tạo*/

insert [User] ([userID], [userAcccount], [password], [roleID], [fullname], [birthday], [gender], [phoneNumber], [email], [city], [district], [status], [studioID])
values ('TL001', 'hung3123', 'hung123456789', 'TL', N'Nguyễn Việt Hùng', '2000-10-05', 'Male', '0569871253', 'nguyenhung@gmail.com', N'TP.Hồ Chí Minh', N'Quận 3', '1', null )
insert into [User]
values('SM001', 'toan3456', 'toan123456789', 'SM', N'Trần Văn Toàn', '1980-12-02', 'Male', '01236987546', 'trantoan@gmail.com', N'TP.Hồ Chí Minh', N'Quận 1', '1', null)
insert into [User]
values('SM002', 'linh3756', 'linh123456789', 'SM', N'Nguyễn Hoàng Linh', '1990-10-21', 'Female', '0169853621', 'linhnguyen@gmail.com', N'TP.Hồ Chí Minh', N'Quận 9', '1', null )
insert into [User]
values('SS001', 'hien9856', 'hien123456789', 'SS', N'Nguyễn Thu Hiền', '2003-08-11', 'Female', '0512639874', 'nguyenhien@gmail.com', N'TP.Hồ Chí Minh', N'Quận 1', '1', 'ST001' )
insert into [User]
values('SS002', 'nam6356', 'nam123456789', 'SS', N'Nguyễn Hoàng Nam', '2003-08-19', 'Male', '0326587416', 'nguyennam@gmail.com', N'TP.Hồ Chí Minh', N'Quận 8', '1', 'ST001')
insert into [User]
values('SS003', 'vunam9856', 'vunam123456789', 'SS', N'Vũ Hoàng Nam', '2001-07-30', 'Male', '0239547862', 'vunam@gmail.com', N'TP.Hồ Chí Minh', N'Quận 4', '1', 'ST002' )
insert into [User]
values('SS004', 'diep6356', 'diep123456789', 'SS', N'Nguyễn Thị Diệp', '1999-04-16', 'Female', '0017852369', 'nguyendiep@gmail.com', N'TP.Hồ Chí Minh', N'Quận 2', '1', 'ST002')
insert into [User]
values('SA001', 'hoa7855', 'hoa123456789', 'SA', N'Nguyễn Thu Hoa', '2000-07-30', 'Female', '0987452879', 'nguyenhoa@gmail.com', N'TP.Hồ Chí Minh', N'Quận Bình Thạnh', '1', 'ST001')
insert into [User]
values('SA002', 'huy7855', 'huy123456789', 'SA', N'Nguyễn Gia Huy', '1999-03-28', 'Male', '018965782', 'nguyenhuy@gmail.com', N'TP.Hồ Chí Minh', N'Quận 3', '1', 'ST001')
insert into [User]
values('SA003', 'minh7855', 'minh123456789', 'SA', N'Trần Gia Minh', '1994-06-25', 'Male', '018965783', 'minhtran@gmail.com', N'TP.Hồ Chí Minh', N'Quận 1', '1', 'ST001')
insert into [User]
values('SST001', 'trung7856', 'trung123456789', 'SST', N'Vũ Đức Trung', '2003-07-05', 'Male', '0369874569', 'trungduc@gmail.com', N'TP.Hồ Chí Minh', N'Quận Bình Chánh', '1', null )
insert into [User]
values('SST002', 'hoang7856', 'hoang123456789', 'SST', N'Nguyễn Trung Hoàng', '2000-09-18', 'Male', '0346798156', 'hoangnguyen@gmail.com', N'TP.Hồ Chí Minh', N'Quận 6', '1', null )
insert into [User]
values('AD001', 'trang8795', 'trang123456789', 'AD', N'Trần Thị Thu Trang', '1990-11-25', 'Female', '0265879631', 'thutrang@gmail.com', N'TP.Hồ Chí Minh', N'Quận 5', '1', null )

/*data bảng Studio*/
insert [Studio] ([studioID], [managerID], [studioName], [studioAdress], [city], [district], [studioPhoneNumber], [studioEmail], [status], [rating], [timeStart], [timeEnd])
values ('ST001', 'SM001', 'Tadashi Tattoo', N'96/6 Lê Thị Riêng, phường Phạm Ngũ Lão', N'TP.Hồ Chí Minh', N'Quận 1', N'0917775885', 'tadashitattoovn78@gmail.com', '1', '0', '11:00', '19:00', '3')

update [User]
SET studioID = 'ST001'
WHERE userID = 'SM001'

insert into [Studio]
values('ST002', 'SM002', 'Minh Tú Tattoo', N'20 Tô Hiến Thành, phường 13', N'TP.Hồ Chí Minh', N'Quận 10', N'0886337177', 'xamnghethuatminhtu@gmail.com', '1', '0', '9:00', '22:00', '2')

update [User]
SET studioID = 'ST002'
WHERE userID = 'SM002'

/*data bảng Service*/

insert [Service] ([serviceID], [systemStaffID], [serviceName], [status])
values('SV001', 'SST001', N'Xăm đơn sắc', 1)
insert into [Service]
values('SV002', 'SST002', N'Xăm màu', 1)

/*data bảng Service_Detail*/

insert [Service_Detail] ([serviceDetailID], [systemStaffID], [serviceDetailName], [status])
values ('SVD001', 'SST001', N'Xăm thường', 1)
insert into [Service_Detail]
values('SVD002', 'SST001', N'Xăm che sẹo', 1)
insert into [Service_Detail]
values('SVD003', 'SST001', N'Cover hình', 1)
insert into [Service_Detail]
values('SVD004', 'SST001', N'Dặm hình', 1)
insert into [Service_Detail]
values('SVD005', 'SST001', N'Thiết kế', 1)

/*data bảng Service_Size*/

insert [Service_Size] ([serviceSizeID], [systemStaffID], [serviceSizeName], [status])
values ('SVS001', 'SST002', N'<=2cm', 1)
insert into [Service_Size]
values('SVS002', 'SST002', N'<=4cm', 1)
insert into [Service_Size]
values('SVS003', 'SST001', N'<=6cm', 1)
insert into [Service_Size]
values('SVS004', 'SST002', N'<=8cm', 1)
insert into [Service_Size]
values('SVS005', 'SST001', N'<=10cm', 1)
insert into [Service_Size]
values('SVS006', 'SST001', N'<=15cm', 1)
insert into [Service_Size]
values('SVS007', 'SST002', N'Kín lưng', 1)
insert into [Service_Size]
values('SVS008', 'SST001', N'Nửa lưng', 1)
insert into [Service_Size]
values('SVS009', 'SST001', N'Kín tay', 1)
insert into [Service_Size]
values('SVS010', 'SST002', N'Nửa tay', 1)
insert into [Service_Size]
values('SVS011', 'SST001', N'Kín chân', 1)
insert into [Service_Size]
values('SVS012', 'SST002', N'Nửa chân', 1)
insert into [Service_Size]
values('SVS013', 'SST001', N'Kín ngực', 1)
insert into [Service_Size]
values('SVS014', 'SST002', N'Nửa ngực', 1)

/*data bảng Service*/
/*studio 1*/
insert [Studio_Service] ([studioServiceID], [studioID], [serviceID], [serviceDetailID], [serviceSizeID], [studioStaffID], [imgID], [price], [status])
values ('STSV001', 'ST001', 'SV001', 'SVD001', 'SVS001', 'SS001', null, '320000', 1 )
insert into [Studio_Service]
values('STSV002', 'ST001', 'SV001', 'SVD001', 'SVS002', 'SS001', null, '510000', 1 )
insert into [Studio_Service]
values('STSV003', 'ST001', 'SV001', 'SVD001', 'SVS003', 'SS001', null, '720000', 1 )
insert into [Studio_Service]
values('STSV004', 'ST001', 'SV001', 'SVD001', 'SVS004', 'SS001', null, '900000', 1 )
insert into [Studio_Service]
values('STSV005', 'ST001', 'SV001', 'SVD001', 'SVS005', 'SS001', null, '1100000', 1 )
insert into [Studio_Service]
values('STSV006', 'ST001', 'SV001', 'SVD001', 'SVS006', 'SS001', null, '2800000', 1 )
insert into [Studio_Service]
values('STSV007', 'ST001', 'SV001', 'SVD001', 'SVS007', 'SS001', null, '15800000', 1 )
insert into [Studio_Service]
values('STSV008', 'ST001', 'SV001', 'SVD001', 'SVS008', 'SS001', null, '10300000', 1 )
insert into [Studio_Service]
values('STSV009', 'ST001', 'SV001', 'SVD001', 'SVS009', 'SS001', null, '10900000', 1 )
insert into [Studio_Service]
values('STSV010', 'ST001', 'SV001', 'SVD001', 'SVS010', 'SS001', null, '5400000', 1 )
insert into [Studio_Service]
values('STSV011', 'ST001', 'SV001', 'SVD001', 'SVS011', 'SS001', null, '15200000', 1 )
insert into [Studio_Service]
values('STSV012', 'ST001', 'SV001', 'SVD001', 'SVS012', 'SS001', null, '10100000', 1 )
insert into [Studio_Service]
values('STSV013', 'ST001', 'SV001', 'SVD001', 'SVS013', 'SS001', null, '10600000', 1 )
insert into [Studio_Service]
values('STSV014', 'ST001', 'SV001', 'SVD001', 'SVS014', 'SS001', null, '5200000', 1 )
insert into [Studio_Service]
values('STSV015', 'ST001', 'SV001', 'SVD002', 'SVS001', 'SS001', null, '620000', 1 )
insert into [Studio_Service]
values('STSV016', 'ST001', 'SV001', 'SVD002', 'SVS002', 'SS001', null, '810000', 1 )
insert into [Studio_Service]
values('STSV017', 'ST001', 'SV001', 'SVD002', 'SVS003', 'SS001', null, '1030000', 1 )
insert into [Studio_Service]
values('STSV018', 'ST001', 'SV001', 'SVD002', 'SVS004', 'SS001', null, '1250000', 1 )
insert into [Studio_Service]
values('STSV019', 'ST001', 'SV001', 'SVD002', 'SVS005', 'SS001', null, '1520000', 1 )
insert into [Studio_Service]
values('STSV020', 'ST001', 'SV001', 'SVD002', 'SVS006', 'SS001', null, '3400000', 1 )
insert into [Studio_Service]
values('STSV021', 'ST001', 'SV001', 'SVD002', 'SVS007', 'SS001', null, '1910000', 1 )
insert into [Studio_Service]
values('STSV022', 'ST001', 'SV001', 'SVD002', 'SVS008', 'SS001', null, '14300000', 1 )
insert into [Studio_Service]
values('STSV023', 'ST001', 'SV001', 'SVD002', 'SVS009', 'SS001', null, '16900000', 1 )
insert into [Studio_Service]
values('STSV024', 'ST001', 'SV001', 'SVD002', 'SVS010', 'SS001', null, '13100000', 1 )
insert into [Studio_Service]
values('STSV025', 'ST001', 'SV001', 'SVD002', 'SVS011', 'SS001', null, '18900000', 1 )
insert into [Studio_Service]
values('STSV026', 'ST001', 'SV001', 'SVD002', 'SVS012', 'SS001', null, '14900000', 1 )
insert into [Studio_Service]
values('STSV027', 'ST001', 'SV001', 'SVD002', 'SVS013', 'SS001', null, '14500000', 1 )
insert into [Studio_Service]
values('STSV028', 'ST001', 'SV001', 'SVD002', 'SVS014', 'SS001', null, '9300000', 1 )
insert into [Studio_Service]
values('STSV029', 'ST001', 'SV001', 'SVD003', 'SVS001', 'SS001', null, '440000', 1 )
insert into [Studio_Service]
values('STSV030', 'ST001', 'SV001', 'SVD003', 'SVS002', 'SS001', null, '510000', 1 )
insert into [Studio_Service]
values('STSV031', 'ST001', 'SV001', 'SVD003', 'SVS003', 'SS001', null, '730000', 1 )
insert into [Studio_Service]
values('STSV032', 'ST001', 'SV001', 'SVD003', 'SVS004', 'SS001', null, '1100000', 1 )
insert into [Studio_Service]
values('STSV033', 'ST001', 'SV001', 'SVD003', 'SVS005', 'SS001', null, '1400000', 1 )
insert into [Studio_Service]
values('STSV034', 'ST001', 'SV001', 'SVD003', 'SVS006', 'SS001', null, '3100000', 1 )
insert into [Studio_Service]
values('STSV035', 'ST001', 'SV001', 'SVD003', 'SVS007', 'SS001', null, '17800000', 1 )
insert into [Studio_Service]
values('STSV036', 'ST001', 'SV001', 'SVD003', 'SVS008', 'SS001', null, '13300000', 1 )
insert into [Studio_Service]
values('STSV037', 'ST001', 'SV001', 'SVD003', 'SVS009', 'SS001', null, '14900000', 1 )
insert into [Studio_Service]
values('STSV038', 'ST001', 'SV001', 'SVD003', 'SVS010', 'SS001', null, '11900000', 1 )
insert into [Studio_Service]
values('STSV039', 'ST001', 'SV001', 'SVD003', 'SVS011', 'SS001', null, '16200000', 1 )
insert into [Studio_Service]
values('STSV040', 'ST001', 'SV001', 'SVD003', 'SVS012', 'SS001', null, '13100000', 1 )
insert into [Studio_Service]
values('STSV041', 'ST001', 'SV001', 'SVD003', 'SVS013', 'SS001', null, '13600000', 1 )
insert into [Studio_Service]
values('STSV042', 'ST001', 'SV001', 'SVD003', 'SVS014', 'SS001', null, '8200000', 1 )
insert into [Studio_Service]
values('STSV043', 'ST001', 'SV001', 'SVD004', 'SVS001', 'SS001', null, '280000', 1 )
insert into [Studio_Service]
values('STSV044', 'ST001', 'SV001', 'SVD004', 'SVS002', 'SS001', null, '480000', 1 )
insert into [Studio_Service]
values('STSV045', 'ST001', 'SV001', 'SVD004', 'SVS003', 'SS001', null, '650000', 1 )
insert into [Studio_Service]
values('STSV046', 'ST001', 'SV001', 'SVD004', 'SVS004', 'SS001', null, '700000', 1 )
insert into [Studio_Service]
values('STSV047', 'ST001', 'SV001', 'SVD004', 'SVS005', 'SS001', null, '900000', 1 )
insert into [Studio_Service]
values('STSV048', 'ST001', 'SV001', 'SVD004', 'SVS006', 'SS001', null, '2200000', 1 )
insert into [Studio_Service]
values('STSV049', 'ST001', 'SV001', 'SVD004', 'SVS007', 'SS001', null, '12900000', 1 )
insert into [Studio_Service]
values('STSV050', 'ST001', 'SV001', 'SVD004', 'SVS008', 'SS001', null, '8300000', 1 )
insert into [Studio_Service]
values('STSV051', 'ST001', 'SV001', 'SVD004', 'SVS009', 'SS001', null, '8500000', 1 )
insert into [Studio_Service]
values('STSV052', 'ST001', 'SV001', 'SVD004', 'SVS010', 'SS001', null, '3500000', 1 )
insert into [Studio_Service]
values('STSV053', 'ST001', 'SV001', 'SVD004', 'SVS011', 'SS001', null, '12400000', 1 )
insert into [Studio_Service]
values('STSV054', 'ST001', 'SV001', 'SVD004', 'SVS012', 'SS001', null, '8900000', 1 )
insert into [Studio_Service]
values('STSV055', 'ST001', 'SV001', 'SVD004', 'SVS013', 'SS001', null, '8100000', 1 )
insert into [Studio_Service]
values('STSV056', 'ST001', 'SV001', 'SVD004', 'SVS014', 'SS001', null, '3500000', 1 )
insert into [Studio_Service]
values('STSV057', 'ST001', 'SV001', 'SVD005', 'SVS001', 'SS001', null, '150000', 1 )
insert into [Studio_Service]
values('STSV058', 'ST001', 'SV001', 'SVD005', 'SVS002', 'SS001', null, '320000', 1 )
insert into [Studio_Service]
values('STSV059', 'ST001', 'SV001', 'SVD005', 'SVS003', 'SS001', null, '430000', 1 )
insert into [Studio_Service]
values('STSV060', 'ST001', 'SV001', 'SVD005', 'SVS004', 'SS001', null, '600000', 1 )
insert into [Studio_Service]
values('STSV061', 'ST001', 'SV001', 'SVD005', 'SVS005', 'SS001', null, '720000', 1 )
insert into [Studio_Service]
values('STSV062', 'ST001', 'SV001', 'SVD005', 'SVS006', 'SS001', null, '1700000', 1 )
insert into [Studio_Service]
values('STSV063', 'ST001', 'SV001', 'SVD005', 'SVS007', 'SS001', null, '9800000', 1 )
insert into [Studio_Service]
values('STSV064', 'ST001', 'SV001', 'SVD005', 'SVS008', 'SS001', null, '5400000', 1 )
insert into [Studio_Service]
values('STSV065', 'ST001', 'SV001', 'SVD005', 'SVS009', 'SS001', null, '5600000', 1 )
insert into [Studio_Service]
values('STSV066', 'ST001', 'SV001', 'SVD005', 'SVS010', 'SS001', null, '2500000', 1 )
insert into [Studio_Service]
values('STSV067', 'ST001', 'SV001', 'SVD005', 'SVS011', 'SS001', null, '9000000', 1 )
insert into [Studio_Service]
values('STSV068', 'ST001', 'SV001', 'SVD005', 'SVS012', 'SS001', null, '6800000', 1 )
insert into [Studio_Service]
values('STSV069', 'ST001', 'SV001', 'SVD005', 'SVS013', 'SS001', null, '5100000', 1 )
insert into [Studio_Service]
values('STSV070', 'ST001', 'SV001', 'SVD005', 'SVS014', 'SS001', null, '2100000', 1 )
insert into [Studio_Service]
values('STSV071', 'ST001', 'SV002', 'SVD001', 'SVS001', 'SS002', null, '420000', 1 )
insert into [Studio_Service]
values('STSV072', 'ST001', 'SV002', 'SVD001', 'SVS002', 'SS002', null, '610000', 1 )
insert into [Studio_Service]
values('STSV073', 'ST001', 'SV002', 'SVD001', 'SVS003', 'SS002', null, '820000', 1 )
insert into [Studio_Service]
values('STSV074', 'ST001', 'SV002', 'SVD001', 'SVS004', 'SS002', null, '1100000', 1 )
insert into [Studio_Service]
values('STSV075', 'ST001', 'SV002', 'SVD001', 'SVS005', 'SS002', null, '1400000', 1 )
insert into [Studio_Service]
values('STSV076', 'ST001', 'SV002', 'SVD001', 'SVS006', 'SS002', null, '3200000', 1 )
insert into [Studio_Service]
values('STSV077', 'ST001', 'SV002', 'SVD001', 'SVS007', 'SS002', null, '20800000', 1 )
insert into [Studio_Service]
values('STSV078', 'ST001', 'SV002', 'SVD001', 'SVS008', 'SS002', null, '15300000', 1 )
insert into [Studio_Service]
values('STSV079', 'ST001', 'SV002', 'SVD001', 'SVS009', 'SS002', null, '15900000', 1 )
insert into [Studio_Service]
values('STSV080', 'ST001', 'SV002', 'SVD001', 'SVS010', 'SS002', null, '10400000', 1 )
insert into [Studio_Service]
values('STSV081', 'ST001', 'SV002', 'SVD001', 'SVS011', 'SS002', null, '20200000', 1 )
insert into [Studio_Service]
values('STSV082', 'ST001', 'SV002', 'SVD001', 'SVS012', 'SS002', null, '15100000', 1 )
insert into [Studio_Service]
values('STSV083', 'ST001', 'SV002', 'SVD001', 'SVS013', 'SS002', null, '15600000', 1 )
insert into [Studio_Service]
values('STSV084', 'ST001', 'SV002', 'SVD001', 'SVS014', 'SS002', null, '10200000', 1 )
insert into [Studio_Service]
values('STSV085', 'ST001', 'SV002', 'SVD002', 'SVS001', 'SS002', null, '700000', 1 )
insert into [Studio_Service]
values('STSV086', 'ST001', 'SV002', 'SVD002', 'SVS002', 'SS002', null, '970000', 1 )
insert into [Studio_Service]
values('STSV087', 'ST001', 'SV002', 'SVD002', 'SVS003', 'SS002', null, '1100000', 1 )
insert into [Studio_Service]
values('STSV088', 'ST001', 'SV002', 'SVD002', 'SVS004', 'SS002', null, '1700000', 1 )
insert into [Studio_Service]
values('STSV089', 'ST001', 'SV002', 'SVD002', 'SVS005', 'SS002', null, '3100000', 1 )
insert into [Studio_Service]
values('STSV090', 'ST001', 'SV002', 'SVD002', 'SVS006', 'SS002', null, '4900000', 1 )
insert into [Studio_Service]
values('STSV091', 'ST001', 'SV002', 'SVD002', 'SVS007', 'SS002', null, '23100000', 1 )
insert into [Studio_Service]
values('STSV092', 'ST001', 'SV002', 'SVD002', 'SVS008', 'SS002', null, '17900000', 1 )
insert into [Studio_Service]
values('STSV093', 'ST001', 'SV002', 'SVD002', 'SVS009', 'SS002', null, '17950000', 1 )
insert into [Studio_Service]
values('STSV094', 'ST001', 'SV002', 'SVD002', 'SVS010', 'SS002', null, '13500000', 1 )
insert into [Studio_Service]
values('STSV095', 'ST001', 'SV002', 'SVD002', 'SVS011', 'SS002', null, '23000000', 1 )
insert into [Studio_Service]
values('STSV096', 'ST001', 'SV002', 'SVD002', 'SVS012', 'SS002', null, '18500000', 1 )
insert into [Studio_Service]
values('STSV097', 'ST001', 'SV002', 'SVD002', 'SVS013', 'SS002', null, '17800000', 1 )
insert into [Studio_Service]
values('STSV098', 'ST001', 'SV002', 'SVD002', 'SVS014', 'SS002', null, '13200000', 1 )
insert into [Studio_Service]
values('STSV099', 'ST001', 'SV002', 'SVD003', 'SVS001', 'SS002', null, '600000', 1 )
insert into [Studio_Service]
values('STSV100', 'ST001', 'SV002', 'SVD003', 'SVS002', 'SS002', null, '710000', 1 )
insert into [Studio_Service]
values('STSV101', 'ST001', 'SV002', 'SVD003', 'SVS003', 'SS002', null, '920000', 1 )
insert into [Studio_Service]
values('STSV102', 'ST001', 'SV002', 'SVD003', 'SVS004', 'SS002', null, '1200000', 1 )
insert into [Studio_Service]
values('STSV103', 'ST001', 'SV002', 'SVD003', 'SVS005', 'SS002', null, '2500000', 1 )
insert into [Studio_Service]
values('STSV104', 'ST001', 'SV002', 'SVD003', 'SVS006', 'SS002', null, '3200000', 1 )
insert into [Studio_Service]
values('STSV105', 'ST001', 'SV002', 'SVD003', 'SVS007', 'SS002', null, '21800000', 1 )
insert into [Studio_Service]
values('STSV106', 'ST001', 'SV002', 'SVD003', 'SVS008', 'SS002', null, '15700000', 1 )
insert into [Studio_Service]
values('STSV107', 'ST001', 'SV002', 'SVD003', 'SVS009', 'SS002', null, '15900000', 1 )
insert into [Studio_Service]
values('STSV108', 'ST001', 'SV002', 'SVD003', 'SVS010', 'SS002', null, '11400000', 1 )
insert into [Studio_Service]
values('STSV109', 'ST001', 'SV002', 'SVD003', 'SVS011', 'SS002', null, '21900000', 1 )
insert into [Studio_Service]
values('STSV110', 'ST001', 'SV002', 'SVD003', 'SVS012', 'SS002', null, '17100000', 1 )
insert into [Studio_Service]
values('STSV111', 'ST001', 'SV002', 'SVD003', 'SVS013', 'SS002', null, '16600000', 1 )
insert into [Studio_Service]
values('STSV112', 'ST001', 'SV002', 'SVD003', 'SVS014', 'SS002', null, '11900000', 1 )
insert into [Studio_Service]
values('STSV113', 'ST001', 'SV002', 'SVD004', 'SVS001', 'SS002', null, '320000', 1 )
insert into [Studio_Service]
values('STSV114', 'ST001', 'SV002', 'SVD004', 'SVS002', 'SS002', null, '510000', 1 )
insert into [Studio_Service]
values('STSV115', 'ST001', 'SV002', 'SVD004', 'SVS003', 'SS002', null, '820000', 1 )
insert into [Studio_Service]
values('STSV116', 'ST001', 'SV002', 'SVD004', 'SVS004', 'SS002', null, '900000', 1 )
insert into [Studio_Service]
values('STSV117', 'ST001', 'SV002', 'SVD004', 'SVS005', 'SS002', null, '1100000', 1 )
insert into [Studio_Service]
values('STSV118', 'ST001', 'SV002', 'SVD004', 'SVS006', 'SS002', null, '2500000', 1 )
insert into [Studio_Service]
values('STSV119', 'ST001', 'SV002', 'SVD004', 'SVS007', 'SS002', null, '18800000', 1 )
insert into [Studio_Service]
values('STSV120', 'ST001', 'SV002', 'SVD004', 'SVS008', 'SS002', null, '14400000', 1 )
insert into [Studio_Service]
values('STSV121', 'ST001', 'SV002', 'SVD004', 'SVS009', 'SS002', null, '14900000', 1 )
insert into [Studio_Service]
values('STSV122', 'ST001', 'SV002', 'SVD004', 'SVS010', 'SS002', null, '8700000', 1 )
insert into [Studio_Service]
values('STSV123', 'ST001', 'SV002', 'SVD004', 'SVS011', 'SS002', null, '18800000', 1 )
insert into [Studio_Service]
values('STSV124', 'ST001', 'SV002', 'SVD004', 'SVS012', 'SS002', null, '13500000', 1 )
insert into [Studio_Service]
values('STSV125', 'ST001', 'SV002', 'SVD004', 'SVS013', 'SS002', null, '12200000', 1 )
insert into [Studio_Service]
values('STSV126', 'ST001', 'SV002', 'SVD004', 'SVS014', 'SS002', null, '9500000', 1 )
insert into [Studio_Service]
values('STSV127', 'ST001', 'SV002', 'SVD005', 'SVS001', 'SS002', null, '230000', 1 )
insert into [Studio_Service]
values('STSV128', 'ST001', 'SV002', 'SVD005', 'SVS002', 'SS002', null, '350000', 1 )
insert into [Studio_Service]
values('STSV129', 'ST001', 'SV002', 'SVD005', 'SVS003', 'SS002', null, '520000', 1 )
insert into [Studio_Service]
values('STSV130', 'ST001', 'SV002', 'SVD005', 'SVS004', 'SS002', null, '700000', 1 )
insert into [Studio_Service]
values('STSV131', 'ST001', 'SV002', 'SVD005', 'SVS005', 'SS002', null, '900000', 1 )
insert into [Studio_Service]
values('STSV132', 'ST001', 'SV002', 'SVD005', 'SVS006', 'SS002', null, '1900000', 1 )
insert into [Studio_Service]
values('STSV133', 'ST001', 'SV002', 'SVD005', 'SVS007', 'SS002', null, '14100000', 1 )
insert into [Studio_Service]
values('STSV134', 'ST001', 'SV002', 'SVD005', 'SVS008', 'SS002', null, '10900000', 1 )
insert into [Studio_Service]
values('STSV135', 'ST001', 'SV002', 'SVD005', 'SVS009', 'SS002', null, '10950000', 1 )
insert into [Studio_Service]
values('STSV136', 'ST001', 'SV002', 'SVD005', 'SVS010', 'SS002', null, '4900000', 1 )
insert into [Studio_Service]
values('STSV137', 'ST001', 'SV002', 'SVD005', 'SVS011', 'SS002', null, '14100000', 1 )
insert into [Studio_Service]
values('STSV138', 'ST001', 'SV002', 'SVD005', 'SVS012', 'SS002', null, '9500000', 1 )
insert into [Studio_Service]
values('STSV139', 'ST001', 'SV002', 'SVD005', 'SVS013', 'SS002', null, '9100000', 1 )
insert into [Studio_Service]
values('STSV140', 'ST001', 'SV002', 'SVD005', 'SVS014', 'SS002', null, '4200000', 1 )
/*Studio 2*/
insert into [Studio_Service]
values ('STSV141', 'ST002', 'SV001', 'SVD001', 'SVS001', 'SS003', null, '300000', 1 )
insert into [Studio_Service]
values('STSV142', 'ST002', 'SV001', 'SVD001', 'SVS002', 'SS003', null, '490000', 1 )
insert into [Studio_Service]
values('STSV143', 'ST002', 'SV001', 'SVD001', 'SVS003', 'SS003', null, '680000', 1 )
insert into [Studio_Service]
values('STSV144', 'ST002', 'SV001', 'SVD001', 'SVS004', 'SS003', null, '880000', 1 )
insert into [Studio_Service]
values('STSV145', 'ST002', 'SV001', 'SVD001', 'SVS005', 'SS003', null, '1000000', 1 )
insert into [Studio_Service]
values('STSV146', 'ST001', 'SV001', 'SVD001', 'SVS006', 'SS003', null, '2600000', 1 )
insert into [Studio_Service]
values('STSV147', 'ST002', 'SV001', 'SVD001', 'SVS007', 'SS003', null, '15200000', 1 )
insert into [Studio_Service]
values('STSV148', 'ST002', 'SV001', 'SVD001', 'SVS008', 'SS003', null, '10100000', 1 )
insert into [Studio_Service]
values('STSV149', 'ST002', 'SV001', 'SVD001', 'SVS009', 'SS003', null, '10100000', 1 )
insert into [Studio_Service]
values('STSV150', 'ST002', 'SV001', 'SVD001', 'SVS010', 'SS003', null, '4800000', 1 )
insert into [Studio_Service]
values('STSV151', 'ST002', 'SV001', 'SVD001', 'SVS011', 'SS003', null, '14800000', 1 )
insert into [Studio_Service]
values('STSV152', 'ST002', 'SV001', 'SVD001', 'SVS012', 'SS003', null, '9300000', 1 )
insert into [Studio_Service]
values('STSV153', 'ST002', 'SV001', 'SVD001', 'SVS013', 'SS003', null, '9400000', 1 )
insert into [Studio_Service]
values('STSV154', 'ST002', 'SV001', 'SVD001', 'SVS014', 'SS003', null, '4200000', 1 )
insert into [Studio_Service]
values('STSV155', 'ST002', 'SV001', 'SVD002', 'SVS001', 'SS003', null, '580000', 1 )
insert into [Studio_Service]
values('STSV156', 'ST002', 'SV001', 'SVD002', 'SVS002', 'SS003', null, '800000', 1 )

/*data bảng Slot*/

insert [Slot]([slotID], [studioID], [timeStart], [timeEnd])
values('SL001', 'ST001', '11:00', '14:00')
insert into [Slot]
values('SL002', 'ST001', '14:00', '16:30')
insert into [Slot]
values('SL003', 'ST001', '16:30', '19:00')
insert into [Slot]
values('SL004', 'ST002', '9:00', '12:00')
insert into [Slot]
values('SL005', 'ST002', '12:00', '15:00')
insert into [Slot]
values('SL006', 'ST002', '15:00', '18:00')
insert into [Slot]
values('SL007', 'ST002', '18:00', '22:00')

/*data bảng Booking*/
insert [Booking]([bookingID], [userID], [studioID], [studioStaffID], [slotID], [totalPrice], [description], [currentDate], [bookingDate], [rating], [commentation], [status])
values ('B001',  'TL001', 'ST001', null, 'SL002', '15920000', N'1.Hình xăm con mèo, màu đen, mặt bự, chân ngắn, đuôi dài, đang vừa đi vừa cười 2.Hình con rồng to đùng màu xanh đỏ',
'2023-10-10', '2023-10-30', null, null, N'Đang xử lý')
insert into [Booking]
values ('B002', 'TL001', 'ST001', 'SS001', 'SL001', '1100000', N'Hình con chó corgi màu vàng và màu trắng',
'2023-05-12', '2023-12-28', null, null, N'Đã duyệt')
insert into [Booking]
values ('B003', 'TL001', 'ST001', 'SS001', 'SL001', '1100000', N'Hình con hổ màu trắng dễ thương',
'2022-01-15', '2022-02-25', 5, N'Hình xăm đẹp, tiệm xăm sạch sẽ', N'Hoàn thành')

/*data bảng Booking_StudioService*/

insert [Booking_StudioService] ([bookingID], [studioServiceID], [artistID], amount)
values ('B001', 'STSV015', null, 1)
insert [Booking_StudioService]
values ('B001', 'STSV078', null, 1)
insert [Booking_StudioService]
values ('B002', 'STSV074', 'SA001', 1)
insert [Booking_StudioService]
values ('B003', 'STSV074', 'SA002', 1)