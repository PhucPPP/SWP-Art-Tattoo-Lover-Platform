select * from [Role]
select * from [City]
select * from [District]
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

insert [City] ([cityID], [cityName])
values ('CT001', N'TP.Hồ Chí Minh')
insert into [City]
values ('CT002', N'Hà Nội')

insert [District] ([districtID], [cityID], [districtName])
values ('DT001', 'CT001', N'TP.Thủ Đức')
insert into [District]
values ('DT002', 'CT001', N'Quận 1')
insert into [District]
values ('DT003', 'CT001', N'Quận 3')
insert into [District]
values ('DT004', 'CT001', N'Quận 4')
insert into [District]
values ('DT005', 'CT001', N'Quận 5')
insert into [District]
values ('DT006', 'CT001', N'Quận 6')
insert into [District]
values ('DT007', 'CT001', N'Quận 7')
insert into [District]
values ('DT008', 'CT001', N'Quận 8')
insert into [District]
values ('DT009', 'CT001', N'Quận 10')
insert into [District]
values ('DT010', 'CT001', N'Quận 11')
insert into [District]
values ('DT011', 'CT001', N'Quận 12')
insert into [District]
values ('DT012', 'CT001', N'Quận Bình Tân')
insert into [District]
values ('DT013', 'CT001', N'Quận Bình Thạnh')
insert into [District]
values ('DT014', 'CT001', N'Quận Gò Vấp')
insert into [District]
values ('DT015', 'CT001', N'Quận Phú Nhuận')
insert into [District]
values ('DT016', 'CT001', N'Quận Tân Bình')
insert into [District]
values ('DT017', 'CT001', N'Quận Tân Phú')
insert into [District]
values ('DT018', 'CT001', N'Huyện Bình Chánh')
insert into [District]
values ('DT019', 'CT001', N'Huyện Cần Giờ')
insert into [District]
values ('DT020', 'CT001', N'Huyện Củ Chi')
insert into [District]
values ('DT021', 'CT001', N'Huyện Hóc Môn')
insert into [District]
values ('DT022', 'CT001', N'Huyện Nhà Bè')
insert into [District]
values ('DT023', 'CT002', N'Quận Ba Đình')
insert into [District]
values ('DT024', 'CT002', N'Quận Hoàn Kiếm')
insert into [District]
values ('DT025', 'CT002', N'Quận Tây Hồ')
insert into [District]
values ('DT026', 'CT002', N'Quận Long Biên')
insert into [District]
values ('DT027', 'CT002', N'Quận Quận Cầu Giấy')
insert into [District]
values ('DT028', 'CT002', N'Quận Đống Đa')
insert into [District]
values ('DT029', 'CT002', N'Quận Hai Bà Trưng')
insert into [District]
values ('DT030', 'CT002', N'Quận Hoàng Mai')
insert into [District]
values ('DT031', 'CT002', N'Quận Thanh Xuân')
insert into [District]
values ('DT032', 'CT002', N'Quận Hà Đông')
insert into [District]
values ('DT033', 'CT002', N'Quận Bắc Từ Liêm')
insert into [District]
values ('DT034', 'CT002', N'Quận Nam Từ Liêm')
insert into [District]
values ('DT035', 'CT002', N'Thị xã Sơn Tây')
insert into [District]
values ('DT036', 'CT002', N'Huyện Ba Vì')
insert into [District]
values ('DT037', 'CT002', N'Huyện Ba Vì')
insert into [District]
values ('DT038', 'CT002', N'Huyện Chương Mỹ')
insert into [District]
values ('DT039', 'CT002', N'Huyện Đan Phượng')
insert into [District]
values ('DT040', 'CT002', N'Huyện Đông Anh')
insert into [District]
values ('DT041', 'CT002', N'Huyện Gia Lâm')
insert into [District]
values ('DT042', 'CT002', N'Huyện Hoài Đức')
insert into [District]
values ('DT043', 'CT002', N'Huyện Mê Linh')
insert into [District]
values ('DT044', 'CT002', N'Huyện Mỹ Đức')
insert into [District]
values ('DT045', 'CT002', N'Huyện Phú Xuyên')
insert into [District]
values ('DT046', 'CT002', N'Huyện Phúc Thọ')
insert into [District]
values ('DT047', 'CT002', N'Huyện Quốc Oai')
insert into [District]
values ('DT048', 'CT002', N'Huyện Sóc Sơn')
insert into [District]
values ('DT049', 'CT002', N'Huyện Thạch Thất')
insert into [District]
values ('DT050', 'CT002', N'Huyện Thanh Oai')
insert into [District]
values ('DT051', 'CT002', N'Huyện Thanh Trì')
insert into [District]
values ('DT052', 'CT002', N'Huyện Thường Tín')
insert into [District]
values ('DT053', 'CT002', N'Huyện Ứng Hòa')



/*data bảng User*/
/*Lưu ý nè: Tạo user cho Studio Manger thì phải để studioID = null trước -> Xuống tạo Studio bằng userID của
Studio Manager -> Update studioID của StudioManager trong bảng user bằng studioID mới tạo*/

insert [User] ([userID], [userAcccount], [password], [roleID], [fullname], [birthday], [gender], [phoneNumber], [email], [cityID], [districtID], [status], [studioID])
values ('TL001', 'hung3123', 'hung123456789', 'TL', N'Nguyễn Việt Hùng', '2000-10-05', 'Male', '0569871253', 'nguyenhung@gmail.com', 'CT001', 'DT003', '1', null )
insert into [User]
values('SM001', 'toan3456', 'toan123456789', 'SM', N'Trần Văn Toàn', '1980-12-02', 'Male', '01236987546', 'trantoan@gmail.com', 'CT001', 'DT002', '1', null)
insert into [User]
values('SM002', 'linh3756', 'linh123456789', 'SM', N'Nguyễn Hoàng Linh', '1990-10-21', 'Female', '01698536212', 'linhnguyen@gmail.com', 'CT001', 'DT001', '1', null )
insert into [User]
values('SM003', 'theh1123', 'the123456789', 'SM', N'Nguyễn Hoàng Thế', '1995-11-21', 'Male', '0169853622', 'thenguyen@gmail.com', 'CT001', 'DT001', '1', null )
insert into [User]
values('SM004', 'vuminh3756', 'linh123456789', 'SM', N'Nguyễn Vũ Minh', '1996-05-01', 'Male', '0169853623', 'minhnguyen@gmail.com', 'CT001', 'DT007', '1', null )
insert into [User]
values('SS001', 'hien9856', 'hien123456789', 'SS', N'Nguyễn Thu Hiền', '2003-08-11', 'Female', '0512639874', 'nguyenhien@gmail.com', 'CT001', 'DT014', '1', 'ST001' )
insert into [User]
values('SS002', 'nam6356', 'nam123456789', 'SS', N'Nguyễn Hoàng Nam', '2003-08-19', 'Male', '0326587416', 'nguyennam@gmail.com', 'CT001', 'DT015', '1', 'ST001')
insert into [User]
values('SS003', 'vunam9856', 'vunam123456789', 'SS', N'Vũ Hoàng Nam', '2001-07-30', 'Male', '0239547862', 'vunam@gmail.com', 'CT001', 'DT004', '1', 'ST002' )
insert into [User]
values('SS004', 'phu12345', 'phu123456789', 'SS', N'Vũ Minh Phú', '2002-07-31', 'Male', '0239547814', 'vuophu@gmail.com', 'CT001', 'DT008', '1', 'ST003' )
insert into [User]
values('SS005', 'hoa62356', 'hoa123456789', 'SS', N'Trần Minh Hoa', '1999-07-25', 'Female', '0017852169', 'hoatran@gmail.com', 'CT001', 'DT004', '1', 'ST004')
insert into [User]
values('SA001', 'hoa7855', 'hoa123456789', 'SA', N'Nguyễn Thu Hoa', '2000-07-30', 'Female', '0987452879', 'nguyenhoa@gmail.com', 'CT001', 'DT021', '1', 'ST001')
insert into [User]
values('SA002', 'huy7855', 'huy123456789', 'SA', N'Nguyễn Gia Huy', '1999-03-28', 'Male', '018965782', 'nguyenhuy@gmail.com', 'CT001', 'DT017', '1', 'ST001')
insert into [User]
values('SA003', 'minh7855', 'minh123456789', 'SA', N'Trần Gia Minh', '1994-06-25', 'Male', '018965783', 'minhtran@gmail.com', 'CT001', 'DT015', '1', 'ST001')
insert into [User]
values('SA004', 'hang7875', 'hang123456789', 'SA', N'Trần Gia Hằng', '1994-06-10', 'Female', '018965483', 'hang@gmail.com', 'CT001', 'DT010', '1', 'ST002')
insert into [User]
values('SST001', 'trung7856', 'trung123456789', 'SST', N'Vũ Đức Trung', '2003-07-05', 'Male', '0369874569', 'trungduc@gmail.com', 'CT001', 'DT012', '1', null )
insert into [User]
values('SST002', 'hoang7856', 'hoang123456789', 'SST', N'Nguyễn Trung Hoàng', '2000-09-18', 'Male', '0346798156', 'hoangnguyen@gmail.com', 'CT001', 'DT011', '1', null )
insert into [User]
values('AD001', 'trang8795', 'trang123456789', 'AD', N'Trần Thị Thu Trang', '1990-11-25', 'Female', '0265879631', 'thutrang@gmail.com', 'CT001', 'DT010', '1', null )
/*data bảng Studio*/
insert [Studio] ([studioID], [managerID], [studioName], [studioAddress], [cityID], [districtID], [studioPhoneNumber], [studioEmail], [status], [timeStart], [timeEnd], [description], [studioSlotTime])
values ('ST001', 'SM001', 'Tadashi Tattoo', N'96/6 Lê Thị Riêng, phường Phạm Ngũ Lão', 'CT001', 'DT002', N'0917775885', 'tadashitattoovn78@gmail.com', '1', '11:00', '19:00', N'Tadachi Studio là một tiệm xăm nổi tiếng ở Sài Gòn, nơi bạn có thể thỏa sức sáng tạo với những họa tiết xăm độc đáo và chất lượng. Tại Tadachi Studio, bạn sẽ được phục vụ bởi những nghệ sĩ xăm chuyên nghiệp, tận tâm và vui vẻ. Bạn có thể yêu cầu thiết kế riêng theo ý muốn của bạn. Hãy đến với Tadachi Studio để trải nghiệm một dịch vụ xăm hình tuyệt vời nhất!', '3')

update [User]
SET studioID = 'ST001'
WHERE userID = 'SM001'

insert into [Studio]
values('ST002', 'SM002', 'Minh Tú Tattoo', N'20 Tô Hiến Thành, phường 13', 'CT001', 'DT009', N'0886337177', 'xamnghethuatminhtu@gmail.com', '1', '9:00', '22:00', null, '2')

update [User]
SET studioID = 'ST002'
WHERE userID = 'SM002'

insert into [Studio]
values('ST003', 'SM003', 'Saigon INK', N'26 Đ. Trần Hưng Đạo, Phường Phạm Ngũ Lão', 'CT001', 'DT002', N'02838361090', 'saigonINK@gmail.com', '1', '10:00', '20:00', N'Lấy cảm hứng từ những ý nghĩa tâm linh trù tượng sâu sắc và thế giới nghệ thuật thấm đẫm sự hoa mỹ tinh tế, tiệm xăm Saigon Ink gần đây cũng rất được lòng nhiều khách hàng. Được thành lập với mong muốn xây dựng một nơi xăm mình đẹp, mang nghệ thuật điêu khắc hình ảnh chân chính và phát triển dịch vụ phun xăm chuyên nghiệp tại Việt Nam.', '3')

update [User]
SET studioID = 'ST003'
WHERE userID = 'SM003'

insert into [Studio]
values('ST004', 'SM004', N'Tattoo Phi Dũng ', N'530 Trường Chinh, Phường 13', 'CT001', 'DT016', N'0924789879', 'phidung@gmail.com', '1', '10:00', '20:00', N'Tiệm xăm nghệ thuật Phi Dũng khai trương từ năm 2010 và phát triển đến nay, nổi danh là quán xăm ở TPHCM có chất lượng và chính sách ưu đãi nổi bật nhất. Nghệ nhân Ray, người đã mang đến cho tín đồ của bộ môn xăm hình những sản phẩm hình ảnh thiết kế đầy nghệ thuật một cách hoàn mỹ nhất bằng 6 năm kinh nghiệm của mình trong lĩnh vực tattoo hình ảnh trên cơ thể.', '3')

	
update [User]
SET studioID = 'ST004'
WHERE userID = 'SM004'
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

insert [Studio_Service] ([studioServiceID], [studioID], [serviceID], [serviceDetailID], [serviceSizeID], [studioStaffID], [price], [status])
values ('STSV001', 'ST001', 'SV001', 'SVD001', 'SVS001', 'SS001', '320000', 1 )
insert into [Studio_Service]
values('STSV002', 'ST001', 'SV001', 'SVD001', 'SVS002', 'SS001', '510000', 1 )
insert into [Studio_Service]
values('STSV003', 'ST001', 'SV001', 'SVD001', 'SVS003', 'SS001', '720000', 1 )
insert into [Studio_Service]
values('STSV004', 'ST001', 'SV001', 'SVD001', 'SVS004', 'SS001', '900000', 1 )
insert into [Studio_Service]
values('STSV005', 'ST001', 'SV001', 'SVD001', 'SVS005', 'SS001', '1100000', 1 )
insert into [Studio_Service]
values('STSV006', 'ST001', 'SV001', 'SVD001', 'SVS006', 'SS001', '2800000', 1 )
insert into [Studio_Service]
values('STSV007', 'ST001', 'SV001', 'SVD001', 'SVS007', 'SS001', '15800000', 1 )
insert into [Studio_Service]
values('STSV008', 'ST001', 'SV001', 'SVD001', 'SVS008', 'SS001', '10300000', 1 )
insert into [Studio_Service]
values('STSV009', 'ST001', 'SV001', 'SVD001', 'SVS009', 'SS001', '10900000', 1 )
insert into [Studio_Service]
values('STSV010', 'ST001', 'SV001', 'SVD001', 'SVS010', 'SS001', '5400000', 1 )
insert into [Studio_Service]
values('STSV011', 'ST001', 'SV001', 'SVD001', 'SVS011', 'SS001', '15200000', 1 )
insert into [Studio_Service]
values('STSV012', 'ST001', 'SV001', 'SVD001', 'SVS012', 'SS001', '10100000', 1 )
insert into [Studio_Service]
values('STSV013', 'ST001', 'SV001', 'SVD001', 'SVS013', 'SS001', '10600000', 1 )
insert into [Studio_Service]
values('STSV014', 'ST001', 'SV001', 'SVD001', 'SVS014', 'SS001', '5200000', 1 )
insert into [Studio_Service]
values('STSV015', 'ST001', 'SV001', 'SVD002', 'SVS001', 'SS001', '620000', 1 )
insert into [Studio_Service]
values('STSV016', 'ST001', 'SV001', 'SVD002', 'SVS002', 'SS001', '810000', 1 )
insert into [Studio_Service]
values('STSV017', 'ST001', 'SV001', 'SVD002', 'SVS003', 'SS001', '1030000', 1 )
insert into [Studio_Service]
values('STSV018', 'ST001', 'SV001', 'SVD002', 'SVS004', 'SS001', '1250000', 1 )
insert into [Studio_Service]
values('STSV019', 'ST001', 'SV001', 'SVD002', 'SVS005', 'SS001', '1520000', 1 )
insert into [Studio_Service]
values('STSV020', 'ST001', 'SV001', 'SVD002', 'SVS006', 'SS001', '3400000', 1 )
insert into [Studio_Service]
values('STSV021', 'ST001', 'SV001', 'SVD002', 'SVS007', 'SS001', '1910000', 1 )
insert into [Studio_Service]
values('STSV022', 'ST001', 'SV001', 'SVD002', 'SVS008', 'SS001', '14300000', 1 )
insert into [Studio_Service]
values('STSV023', 'ST001', 'SV001', 'SVD002', 'SVS009', 'SS001', '16900000', 1 )
insert into [Studio_Service]
values('STSV024', 'ST001', 'SV001', 'SVD002', 'SVS010', 'SS001', '13100000', 1 )
insert into [Studio_Service]
values('STSV025', 'ST001', 'SV001', 'SVD002', 'SVS011', 'SS001', '18900000', 1 )
insert into [Studio_Service]
values('STSV026', 'ST001', 'SV001', 'SVD002', 'SVS012', 'SS001', '14900000', 1 )
insert into [Studio_Service]
values('STSV027', 'ST001', 'SV001', 'SVD002', 'SVS013', 'SS001', '14500000', 1 )
insert into [Studio_Service]
values('STSV028', 'ST001', 'SV001', 'SVD002', 'SVS014', 'SS001', '9300000', 1 )
insert into [Studio_Service]
values('STSV029', 'ST001', 'SV001', 'SVD003', 'SVS001', 'SS001', '440000', 1 )
insert into [Studio_Service]
values('STSV030', 'ST001', 'SV001', 'SVD003', 'SVS002', 'SS001', '510000', 1 )
insert into [Studio_Service]
values('STSV031', 'ST001', 'SV001', 'SVD003', 'SVS003', 'SS001', '730000', 1 )
insert into [Studio_Service]
values('STSV032', 'ST001', 'SV001', 'SVD003', 'SVS004', 'SS001', '1100000', 1 )
insert into [Studio_Service]
values('STSV033', 'ST001', 'SV001', 'SVD003', 'SVS005', 'SS001', '1400000', 1 )
insert into [Studio_Service]
values('STSV034', 'ST001', 'SV001', 'SVD003', 'SVS006', 'SS001', '3100000', 1 )
insert into [Studio_Service]
values('STSV035', 'ST001', 'SV001', 'SVD003', 'SVS007', 'SS001', '17800000', 1 )
insert into [Studio_Service]
values('STSV036', 'ST001', 'SV001', 'SVD003', 'SVS008', 'SS001', '13300000', 1 )
insert into [Studio_Service]
values('STSV037', 'ST001', 'SV001', 'SVD003', 'SVS009', 'SS001', '14900000', 1 )
insert into [Studio_Service]
values('STSV038', 'ST001', 'SV001', 'SVD003', 'SVS010', 'SS001', '11900000', 1 )
insert into [Studio_Service]
values('STSV039', 'ST001', 'SV001', 'SVD003', 'SVS011', 'SS001', '16200000', 1 )
insert into [Studio_Service]
values('STSV040', 'ST001', 'SV001', 'SVD003', 'SVS012', 'SS001', '13100000', 1 )
insert into [Studio_Service]
values('STSV041', 'ST001', 'SV001', 'SVD003', 'SVS013', 'SS001', '13600000', 1 )
insert into [Studio_Service]
values('STSV042', 'ST001', 'SV001', 'SVD003', 'SVS014', 'SS001', '8200000', 1 )
insert into [Studio_Service]
values('STSV043', 'ST001', 'SV001', 'SVD004', 'SVS001', 'SS001', '280000', 1 )
insert into [Studio_Service]
values('STSV044', 'ST001', 'SV001', 'SVD004', 'SVS002', 'SS001', '480000', 1 )
insert into [Studio_Service]
values('STSV045', 'ST001', 'SV001', 'SVD004', 'SVS003', 'SS001', '650000', 1 )
insert into [Studio_Service]
values('STSV046', 'ST001', 'SV001', 'SVD004', 'SVS004', 'SS001', '700000', 1 )
insert into [Studio_Service]
values('STSV047', 'ST001', 'SV001', 'SVD004', 'SVS005', 'SS001', '900000', 1 )
insert into [Studio_Service]
values('STSV048', 'ST001', 'SV001', 'SVD004', 'SVS006', 'SS001', '2200000', 1 )
insert into [Studio_Service]
values('STSV049', 'ST001', 'SV001', 'SVD004', 'SVS007', 'SS001', '12900000', 1 )
insert into [Studio_Service]
values('STSV050', 'ST001', 'SV001', 'SVD004', 'SVS008', 'SS001', '8300000', 1 )
insert into [Studio_Service]
values('STSV051', 'ST001', 'SV001', 'SVD004', 'SVS009', 'SS001', '8500000', 1 )
insert into [Studio_Service]
values('STSV052', 'ST001', 'SV001', 'SVD004', 'SVS010', 'SS001', '3500000', 1 )
insert into [Studio_Service]
values('STSV053', 'ST001', 'SV001', 'SVD004', 'SVS011', 'SS001', '12400000', 1 )
insert into [Studio_Service]
values('STSV054', 'ST001', 'SV001', 'SVD004', 'SVS012', 'SS001', '8900000', 1 )
insert into [Studio_Service]
values('STSV055', 'ST001', 'SV001', 'SVD004', 'SVS013', 'SS001', '8100000', 1 )
insert into [Studio_Service]
values('STSV056', 'ST001', 'SV001', 'SVD004', 'SVS014', 'SS001', '3500000', 1 )
insert into [Studio_Service]
values('STSV057', 'ST001', 'SV001', 'SVD005', 'SVS001', 'SS001', '150000', 1 )
insert into [Studio_Service]
values('STSV058', 'ST001', 'SV001', 'SVD005', 'SVS002', 'SS001', '320000', 1 )
insert into [Studio_Service]
values('STSV059', 'ST001', 'SV001', 'SVD005', 'SVS003', 'SS001', '430000', 1 )
insert into [Studio_Service]
values('STSV060', 'ST001', 'SV001', 'SVD005', 'SVS004', 'SS001', '600000', 1 )
insert into [Studio_Service]
values('STSV061', 'ST001', 'SV001', 'SVD005', 'SVS005', 'SS001', '720000', 1 )
insert into [Studio_Service]
values('STSV062', 'ST001', 'SV001', 'SVD005', 'SVS006', 'SS001', '1700000', 1 )
insert into [Studio_Service]
values('STSV063', 'ST001', 'SV001', 'SVD005', 'SVS007', 'SS001', '9800000', 1 )
insert into [Studio_Service]
values('STSV064', 'ST001', 'SV001', 'SVD005', 'SVS008', 'SS001', '5400000', 1 )
insert into [Studio_Service]
values('STSV065', 'ST001', 'SV001', 'SVD005', 'SVS009', 'SS001', '5600000', 1 )
insert into [Studio_Service]
values('STSV066', 'ST001', 'SV001', 'SVD005', 'SVS010', 'SS001', '2500000', 1 )
insert into [Studio_Service]
values('STSV067', 'ST001', 'SV001', 'SVD005', 'SVS011', 'SS001', '9000000', 1 )
insert into [Studio_Service]
values('STSV068', 'ST001', 'SV001', 'SVD005', 'SVS012', 'SS001', '6800000', 1 )
insert into [Studio_Service]
values('STSV069', 'ST001', 'SV001', 'SVD005', 'SVS013', 'SS001', '5100000', 1 )
insert into [Studio_Service]
values('STSV070', 'ST001', 'SV001', 'SVD005', 'SVS014', 'SS001', '2100000', 1 )
insert into [Studio_Service]
values('STSV071', 'ST001', 'SV002', 'SVD001', 'SVS001', 'SS002', '420000', 1 )
insert into [Studio_Service]
values('STSV072', 'ST001', 'SV002', 'SVD001', 'SVS002', 'SS002', '610000', 1 )
insert into [Studio_Service]
values('STSV073', 'ST001', 'SV002', 'SVD001', 'SVS003', 'SS002', '820000', 1 )
insert into [Studio_Service]
values('STSV074', 'ST001', 'SV002', 'SVD001', 'SVS004', 'SS002', '1100000', 1 )
insert into [Studio_Service]
values('STSV075', 'ST001', 'SV002', 'SVD001', 'SVS005', 'SS002', '1400000', 1 )
insert into [Studio_Service]
values('STSV076', 'ST001', 'SV002', 'SVD001', 'SVS006', 'SS002', '3200000', 1 )
insert into [Studio_Service]
values('STSV077', 'ST001', 'SV002', 'SVD001', 'SVS007', 'SS002', '20800000', 1 )
insert into [Studio_Service]
values('STSV078', 'ST001', 'SV002', 'SVD001', 'SVS008', 'SS002', '15300000', 1 )
insert into [Studio_Service]
values('STSV079', 'ST001', 'SV002', 'SVD001', 'SVS009', 'SS002', '15900000', 1 )
insert into [Studio_Service]
values('STSV080', 'ST001', 'SV002', 'SVD001', 'SVS010', 'SS002',  '10400000', 1 )
insert into [Studio_Service]
values('STSV081', 'ST001', 'SV002', 'SVD001', 'SVS011', 'SS002', '20200000', 1 )
insert into [Studio_Service]
values('STSV082', 'ST001', 'SV002', 'SVD001', 'SVS012', 'SS002', '15100000', 1 )
insert into [Studio_Service]
values('STSV083', 'ST001', 'SV002', 'SVD001', 'SVS013', 'SS002', '15600000', 1 )
insert into [Studio_Service]
values('STSV084', 'ST001', 'SV002', 'SVD001', 'SVS014', 'SS002', '10200000', 1 )
insert into [Studio_Service]
values('STSV085', 'ST001', 'SV002', 'SVD002', 'SVS001', 'SS002', '700000', 1 )
insert into [Studio_Service]
values('STSV086', 'ST001', 'SV002', 'SVD002', 'SVS002', 'SS002', '970000', 1 )
insert into [Studio_Service]
values('STSV087', 'ST001', 'SV002', 'SVD002', 'SVS003', 'SS002', '1100000', 1 )
insert into [Studio_Service]
values('STSV088', 'ST001', 'SV002', 'SVD002', 'SVS004', 'SS002', '1700000', 1 )
insert into [Studio_Service]
values('STSV089', 'ST001', 'SV002', 'SVD002', 'SVS005', 'SS002', '3100000', 1 )
insert into [Studio_Service]
values('STSV090', 'ST001', 'SV002', 'SVD002', 'SVS006', 'SS002', '4900000', 1 )
insert into [Studio_Service]
values('STSV091', 'ST001', 'SV002', 'SVD002', 'SVS007', 'SS002', '23100000', 1 )
insert into [Studio_Service]
values('STSV092', 'ST001', 'SV002', 'SVD002', 'SVS008', 'SS002', '17900000', 1 )
insert into [Studio_Service]
values('STSV093', 'ST001', 'SV002', 'SVD002', 'SVS009', 'SS002', '17950000', 1 )
insert into [Studio_Service]
values('STSV094', 'ST001', 'SV002', 'SVD002', 'SVS010', 'SS002', '13500000', 1 )
insert into [Studio_Service]
values('STSV095', 'ST001', 'SV002', 'SVD002', 'SVS011', 'SS002', '23000000', 1 )
insert into [Studio_Service]
values('STSV096', 'ST001', 'SV002', 'SVD002', 'SVS012', 'SS002', '18500000', 1 )
insert into [Studio_Service]
values('STSV097', 'ST001', 'SV002', 'SVD002', 'SVS013', 'SS002', '17800000', 1 )
insert into [Studio_Service]
values('STSV098', 'ST001', 'SV002', 'SVD002', 'SVS014', 'SS002', '13200000', 1 )
insert into [Studio_Service]
values('STSV099', 'ST001', 'SV002', 'SVD003', 'SVS001', 'SS002', '600000', 1 )
insert into [Studio_Service]
values('STSV100', 'ST001', 'SV002', 'SVD003', 'SVS002', 'SS002', '710000', 1 )
insert into [Studio_Service]
values('STSV101', 'ST001', 'SV002', 'SVD003', 'SVS003', 'SS002', '920000', 1 )
insert into [Studio_Service]
values('STSV102', 'ST001', 'SV002', 'SVD003', 'SVS004', 'SS002', '1200000', 1 )
insert into [Studio_Service]
values('STSV103', 'ST001', 'SV002', 'SVD003', 'SVS005', 'SS002', '2500000', 1 )
insert into [Studio_Service]
values('STSV104', 'ST001', 'SV002', 'SVD003', 'SVS006', 'SS002', '3200000', 1 )
insert into [Studio_Service]
values('STSV105', 'ST001', 'SV002', 'SVD003', 'SVS007', 'SS002', '21800000', 1 )
insert into [Studio_Service]
values('STSV106', 'ST001', 'SV002', 'SVD003', 'SVS008', 'SS002', '15700000', 1 )
insert into [Studio_Service]
values('STSV107', 'ST001', 'SV002', 'SVD003', 'SVS009', 'SS002', '15900000', 1 )
insert into [Studio_Service]
values('STSV108', 'ST001', 'SV002', 'SVD003', 'SVS010', 'SS002', '11400000', 1 )
insert into [Studio_Service]
values('STSV109', 'ST001', 'SV002', 'SVD003', 'SVS011', 'SS002', '21900000', 1 )
insert into [Studio_Service]
values('STSV110', 'ST001', 'SV002', 'SVD003', 'SVS012', 'SS002', '17100000', 1 )
insert into [Studio_Service]
values('STSV111', 'ST001', 'SV002', 'SVD003', 'SVS013', 'SS002', '16600000', 1 )
insert into [Studio_Service]
values('STSV112', 'ST001', 'SV002', 'SVD003', 'SVS014', 'SS002', '11900000', 1 )
insert into [Studio_Service]
values('STSV113', 'ST001', 'SV002', 'SVD004', 'SVS001', 'SS002', '320000', 1 )
insert into [Studio_Service]
values('STSV114', 'ST001', 'SV002', 'SVD004', 'SVS002', 'SS002', '510000', 1 )
insert into [Studio_Service]
values('STSV115', 'ST001', 'SV002', 'SVD004', 'SVS003', 'SS002', '820000', 1 )
insert into [Studio_Service]
values('STSV116', 'ST001', 'SV002', 'SVD004', 'SVS004', 'SS002', '900000', 1 )
insert into [Studio_Service]
values('STSV117', 'ST001', 'SV002', 'SVD004', 'SVS005', 'SS002', '1100000', 1 )
insert into [Studio_Service]
values('STSV118', 'ST001', 'SV002', 'SVD004', 'SVS006', 'SS002', '2500000', 1 )
insert into [Studio_Service]
values('STSV119', 'ST001', 'SV002', 'SVD004', 'SVS007', 'SS002', '18800000', 1 )
insert into [Studio_Service]
values('STSV120', 'ST001', 'SV002', 'SVD004', 'SVS008', 'SS002', '14400000', 1 )
insert into [Studio_Service]
values('STSV121', 'ST001', 'SV002', 'SVD004', 'SVS009', 'SS002', '14900000', 1 )
insert into [Studio_Service]
values('STSV122', 'ST001', 'SV002', 'SVD004', 'SVS010', 'SS002', '8700000', 1 )
insert into [Studio_Service]
values('STSV123', 'ST001', 'SV002', 'SVD004', 'SVS011', 'SS002', '18800000', 1 )
insert into [Studio_Service]
values('STSV124', 'ST001', 'SV002', 'SVD004', 'SVS012', 'SS002', '13500000', 1 )
insert into [Studio_Service]
values('STSV125', 'ST001', 'SV002', 'SVD004', 'SVS013', 'SS002', '12200000', 1 )
insert into [Studio_Service]
values('STSV126', 'ST001', 'SV002', 'SVD004', 'SVS014', 'SS002', '9500000', 1 )
insert into [Studio_Service]
values('STSV127', 'ST001', 'SV002', 'SVD005', 'SVS001', 'SS002', '230000', 1 )
insert into [Studio_Service]
values('STSV128', 'ST001', 'SV002', 'SVD005', 'SVS002', 'SS002', '350000', 1 )
insert into [Studio_Service]
values('STSV129', 'ST001', 'SV002', 'SVD005', 'SVS003', 'SS002', '520000', 1 )
insert into [Studio_Service]
values('STSV130', 'ST001', 'SV002', 'SVD005', 'SVS004', 'SS002', '700000', 1 )
insert into [Studio_Service]
values('STSV131', 'ST001', 'SV002', 'SVD005', 'SVS005', 'SS002', '900000', 1 )
insert into [Studio_Service]
values('STSV132', 'ST001', 'SV002', 'SVD005', 'SVS006', 'SS002', '1900000', 1 )
insert into [Studio_Service]
values('STSV133', 'ST001', 'SV002', 'SVD005', 'SVS007', 'SS002', '14100000', 1 )
insert into [Studio_Service]
values('STSV134', 'ST001', 'SV002', 'SVD005', 'SVS008', 'SS002', '10900000', 1 )
insert into [Studio_Service]
values('STSV135', 'ST001', 'SV002', 'SVD005', 'SVS009', 'SS002', '10950000', 1 )
insert into [Studio_Service]
values('STSV136', 'ST001', 'SV002', 'SVD005', 'SVS010', 'SS002', '4900000', 1 )
insert into [Studio_Service]
values('STSV137', 'ST001', 'SV002', 'SVD005', 'SVS011', 'SS002', '14100000', 1 )
insert into [Studio_Service]
values('STSV138', 'ST001', 'SV002', 'SVD005', 'SVS012', 'SS002', '9500000', 1 )
insert into [Studio_Service]
values('STSV139', 'ST001', 'SV002', 'SVD005', 'SVS013', 'SS002', '9100000', 1 )
insert into [Studio_Service]
values('STSV140', 'ST001', 'SV002', 'SVD005', 'SVS014', 'SS002', '4200000', 1 )
/*Studio 2*/
insert into [Studio_Service]
values ('STSV141', 'ST002', 'SV001', 'SVD001', 'SVS001', 'SS003', '300000', 1 )
insert into [Studio_Service]
values('STSV142', 'ST002', 'SV001', 'SVD001', 'SVS002', 'SS003', '490000', 1 )
insert into [Studio_Service]
values('STSV143', 'ST002', 'SV001', 'SVD001', 'SVS003', 'SS003', '680000', 1 )
insert into [Studio_Service]
values('STSV144', 'ST002', 'SV001', 'SVD001', 'SVS004', 'SS003', '880000', 1 )
insert into [Studio_Service]
values('STSV145', 'ST002', 'SV001', 'SVD001', 'SVS005', 'SS003', '1000000', 1 )
insert into [Studio_Service]
values('STSV146', 'ST001', 'SV001', 'SVD001', 'SVS006', 'SS003', '2600000', 1 )
insert into [Studio_Service]
values('STSV147', 'ST002', 'SV001', 'SVD001', 'SVS007', 'SS003', '15200000', 1 )
insert into [Studio_Service]
values('STSV148', 'ST002', 'SV001', 'SVD001', 'SVS008', 'SS003', '10100000', 1 )
insert into [Studio_Service]
values('STSV149', 'ST002', 'SV001', 'SVD001', 'SVS009', 'SS003', '10100000', 1 )
insert into [Studio_Service]
values('STSV150', 'ST002', 'SV001', 'SVD001', 'SVS010', 'SS003', '4800000', 1 )
insert into [Studio_Service]
values('STSV151', 'ST002', 'SV001', 'SVD001', 'SVS011', 'SS003', '14800000', 1 )
insert into [Studio_Service]
values('STSV152', 'ST002', 'SV001', 'SVD001', 'SVS012', 'SS003', '9300000', 1 )
insert into [Studio_Service]
values('STSV153', 'ST002', 'SV001', 'SVD001', 'SVS013', 'SS003', '9400000', 1 )
insert into [Studio_Service]
values('STSV154', 'ST002', 'SV001', 'SVD001', 'SVS014', 'SS003', '4200000', 1 )

/*Studio 3*/ 

insert into [Studio_Service]
values('STSV155', 'ST003', 'SV002', 'SVD003', 'SVS001', 'SS004', '480000', 1 )
insert into [Studio_Service]
values('STSV156', 'ST003', 'SV002', 'SVD003', 'SVS002', 'SS004', '710000', 1 )
insert into [Studio_Service]
values('STSV157', 'ST003', 'SV002', 'SVD003', 'SVS003', 'SS004', '920000', 1 )
insert into [Studio_Service]
values('STSV158', 'ST003', 'SV002', 'SVD003', 'SVS004', 'SS004', '1200000', 1 )
insert into [Studio_Service]
values('STSV159', 'ST003', 'SV002', 'SVD003', 'SVS005', 'SS004', '2500000', 1 )
insert into [Studio_Service]
values('STSV160', 'ST003', 'SV002', 'SVD003', 'SVS006', 'SS004', '3200000', 1 )
insert into [Studio_Service]
values('STSV161', 'ST003', 'SV002', 'SVD003', 'SVS007', 'SS004', '21800000', 1 )
insert into [Studio_Service]
values('STSV162', 'ST003', 'SV002', 'SVD003', 'SVS008', 'SS004', '15700000', 1 )
insert into [Studio_Service]
values('STSV163', 'ST003', 'SV002', 'SVD003', 'SVS009', 'SS004', '15900000', 1 )
insert into [Studio_Service]
values('STSV164', 'ST003', 'SV002', 'SVD003', 'SVS010', 'SS004', '11400000', 1 )
insert into [Studio_Service]
values('STSV165', 'ST003', 'SV002', 'SVD003', 'SVS011', 'SS004', '21900000', 1 )
insert into [Studio_Service]
values('STSV166', 'ST003', 'SV002', 'SVD003', 'SVS012', 'SS004', '17100000', 1 )
insert into [Studio_Service]
values('STSV167', 'ST003', 'SV002', 'SVD003', 'SVS013', 'SS004', '16600000', 1 )
insert into [Studio_Service]
values('STSV168', 'ST003', 'SV002', 'SVD003', 'SVS014', 'SS004', '11600000', 1 )

/*Studio 4*/

insert into [Studio_Service]
values('STSV169', 'ST004', 'SV001', 'SVD004', 'SVS001', 'SS005', '290000', 1 )
insert into [Studio_Service]
values('STSV170', 'ST004', 'SV001', 'SVD004', 'SVS002', 'SS005', '450000', 1 )
insert into [Studio_Service]
values('STSV171', 'ST004', 'SV001', 'SVD004', 'SVS003', 'SS005', '650000', 1 )
insert into [Studio_Service]
values('STSV172', 'ST004', 'SV001', 'SVD004', 'SVS004', 'SS005', '700000', 1 )
insert into [Studio_Service]
values('STSV173', 'ST004', 'SV001', 'SVD004', 'SVS005', 'SS005', '900000', 1 )
insert into [Studio_Service]
values('STSV174', 'ST004', 'SV001', 'SVD004', 'SVS006', 'SS005', '2200000', 1 )
insert into [Studio_Service]
values('STSV175', 'ST004', 'SV001', 'SVD004', 'SVS007', 'SS005', '12400000', 1 )
insert into [Studio_Service]
values('STSV176', 'ST004', 'SV001', 'SVD004', 'SVS008', 'SS005', '8300000', 1 )
insert into [Studio_Service]
values('STSV177', 'ST004', 'SV001', 'SVD004', 'SVS009', 'SS005', '8500000', 1 )
insert into [Studio_Service]
values('STSV178', 'ST004', 'SV001', 'SVD004', 'SVS010', 'SS005', '3500000', 1 )
insert into [Studio_Service]
values('STSV179', 'ST004', 'SV001', 'SVD004', 'SVS011', 'SS005', '12400000', 1 )
insert into [Studio_Service]
values('STSV180', 'ST004', 'SV001', 'SVD004', 'SVS012', 'SS005', '8900000', 1 )
insert into [Studio_Service]
values('STSV181', 'ST004', 'SV001', 'SVD004', 'SVS013', 'SS005', '8100000', 1 )
insert into [Studio_Service]
values('STSV182', 'ST004', 'SV001', 'SVD004', 'SVS014', 'SS005', '3200000', 1 )
insert into [Studio_Service]

values('STSV183', 'ST004', 'SV002', 'SVD003', 'SVS001', 'SS005', '480000', 1 )
insert into [Studio_Service]
values('STSV184', 'ST004', 'SV002', 'SVD003', 'SVS002', 'SS005', '710000', 1 )
insert into [Studio_Service]
values('STSV185', 'ST004', 'SV002', 'SVD003', 'SVS003', 'SS005', '920000', 1 )
insert into [Studio_Service]
values('STSV186', 'ST004', 'SV002', 'SVD003', 'SVS004', 'SS005', '1200000', 1 )
insert into [Studio_Service]
values('STSV187', 'ST004', 'SV002', 'SVD003', 'SVS005', 'SS005', '2500000', 1 )
insert into [Studio_Service]
values('STSV188', 'ST004', 'SV002', 'SVD003', 'SVS006', 'SS005', '3200000', 1 )
insert into [Studio_Service]
values('STSV189', 'ST004', 'SV002', 'SVD003', 'SVS007', 'SS005', '21800000', 1 )
insert into [Studio_Service]
values('STSV190', 'ST004', 'SV002', 'SVD003', 'SVS008', 'SS005', '15700000', 1 )
insert into [Studio_Service]
values('STSV191', 'ST004', 'SV002', 'SVD003', 'SVS009', 'SS005', '15900000', 1 )
insert into [Studio_Service]
values('STSV192', 'ST004', 'SV002', 'SVD003', 'SVS010', 'SS005', '11400000', 1 )
insert into [Studio_Service]
values('STSV193', 'ST004', 'SV002', 'SVD003', 'SVS011', 'SS005', '21900000', 1 )
insert into [Studio_Service]
values('STSV194', 'ST004', 'SV002', 'SVD003', 'SVS012', 'SS005', '17100000', 1 )
insert into [Studio_Service]
values('STSV195', 'ST004', 'SV002', 'SVD003', 'SVS013', 'SS005', '16600000', 1 )
insert into [Studio_Service]
values('STSV196', 'ST004', 'SV002', 'SVD003', 'SVS014', 'SS005', '11600000', 1 )


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
'2023-10-10 3:02', '2023-10-30', 0, null, N'Đang xử lý')
insert into [Booking]
values ('B002', 'TL001', 'ST001', 'SS001', 'SL001', '1100000', N'Hình con chó corgi màu vàng và màu trắng',
'2023-05-12 19:58', '2023-12-28', 0, null, N'Đã duyệt')
insert into [Booking]
values ('B003', 'TL001', 'ST001', 'SS001', 'SL001', '1100000', N'Hình con hổ màu trắng dễ thương',
'2022-01-15 8:09', '2022-02-25', 5, N'Hình xăm đẹp, tiệm xăm sạch sẽ', N'Hoàn thành')

insert into [Booking]
values ('B006', 'TL001', 'ST002', 'SS003', 'SL006', '300000', N'Hình con hổ màu trắng dễ thương',
'2022-01-14 7:33', '2022-02-27', 4, N'Hình xăm đẹp, tiệm xăm sạch sẽ', N'Hoàn thành')
insert into [Booking]
values ('B005', 'TL001', 'ST002', 'SS003', 'SL006', '300000', N'Hình con hổ màu trắng dễ thương',
'2022-01-13 14:33', '2022-02-28', 3, N'Hình xăm đẹp, tiệm xăm sạch sẽ', N'Hoàn thành')

/*data bảng Booking_StudioService*/

insert [Booking_StudioService] ([bookingID], [studioServiceID], [artistID], amount)
values ('B001', 'STSV015', null, 1)
insert [Booking_StudioService]
values ('B001', 'STSV078', null, 1)
insert [Booking_StudioService]
values ('B002', 'STSV074', 'SA001', 1)
insert [Booking_StudioService]
values ('B003', 'STSV074', 'SA002', 1)
insert [Booking_StudioService]
values ('B005', 'STSV141', 'SA004', 1)
insert [Booking_StudioService]
values ('B006', 'STSV141', 'SA004', 1)
/*data bảng IMG */

insert Image ([imgId], [imgName], [imgLink], [role], [studioID], [userID], [serviceID], [serviceDetailID])
values ('IMG001', N'Avatar Tadashi', N'Resource/img/TadashiTattooAvatar.png', 'AVA', 'ST001', null, null, null )
insert into Image
values ('IMG002', N'Avatar Minh Tu', N'Resource/img/MinhTuTattooAvatar.png', 'AVA', 'ST002', null, null, null )
insert into Image
values ('IMG003', N'Avatar Sai Gon INK', N'Resource/img/SaiGonInkTattooAvatar.png', 'AVA', 'ST003', null, null, null )
insert into Image
values ('IMG004', N'Avatar Phi Dung', N'Resource/img/PhiDungTattooAvatar.png', 'AVA', 'ST004', null, null, null )
insert into Image
values ('IMG005', N'Avatar Xam don sac', N'Resource/img/xam don sac.png', 'AVA', null, null, 'SV001', null )
insert into Image
values ('IMG006', N'Avatar Xam don sac', N'Resource/img/Xam mau.png', 'AVA', null, null, 'SV002', null )
insert into Image
values ('IMG007',  N'Avatar Xam mau', N'Resource/img/xam don sac.png', 'AVA', null, null, null, 'SVD001' )
insert into Image
values ('IMG008', N'Avatar xam che seo', N'Resource/img/xam che seo.png', 'AVA',  null, null, null, 'SVD002' )
insert into Image
values ('IMG009', N'Avatar cover hinh', N'Resource/img/cover hinh.png', 'AVA',  null, null, null, 'SVD003' )
insert into Image
values ('IMG010', N'Avatar dam hinh', N'Resource/img/dam hinh.png', 'AVA',  null, null, null, 'SVD004' )
insert into Image
values ('IMG011', N'Avatar thiet ke', N'Resource/img/thiet ke.png', 'AVA', null, null, null, 'SVD005' )
insert into Image
values ('IMG012', N'Hinh service studio ST001', N'Resource/img/1.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG013', N'Hinh service studio ST001', N'Resource/img/2.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG014', N'Hinh service studio ST001', N'Resource/img/3.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG015', N'Hinh service studio ST001', N'Resource/img/4.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG016', N'Hinh service studio ST001', N'Resource/img/5.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG017', N'Hinh service studio ST001', N'Resource/img/6.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG018', N'Hinh service studio ST001', N'Resource/img/7.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG019', N'Hinh service studio ST001', N'Resource/img/8.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG020', N'Hinh service studio ST001', N'Resource/img/9.jpg', 'SV', 'ST001', null, null, null )
insert into Image
values ('IMG021', N'Hinh service studio ST001', N'Resource/img/10.jpg', 'SV', 'ST001', null, null, null )

insert into Image
values ('IMG022', N'Hinh service studio ST002', N'Resource/img/11.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG023', N'Hinh service studio ST002', N'Resource/img/12.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG024', N'Hinh service studio ST002', N'Resource/img/13.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG025', N'Hinh service studio ST002', N'Resource/img/14.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG026', N'Hinh service studio ST002', N'Resource/img/15.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG027', N'Hinh service studio ST002', N'Resource/img/16.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG028', N'Hinh service studio ST002', N'Resource/img/17.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG029', N'Hinh service studio ST002', N'Resource/img/18.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG030', N'Hinh service studio ST002', N'Resource/img/19.jpg', 'SV', 'ST002', null, null, null )
insert into Image
values ('IMG031', N'Hinh service studio ST002', N'Resource/img/20.jpg', 'SV', 'ST002', null, null, null )

insert into Image
values ('IMG032', N'Hinh service studio ST003', N'Resource/img/21.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG033', N'Hinh service studio ST003', N'Resource/img/22.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG034', N'Hinh service studio ST003', N'Resource/img/23.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG035', N'Hinh service studio ST003', N'Resource/img/24.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG036', N'Hinh service studio ST003', N'Resource/img/25.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG037', N'Hinh service studio ST003', N'Resource/img/27.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG038', N'Hinh service studio ST003', N'Resource/img/28.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG039', N'Hinh service studio ST003', N'Resource/img/29.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG040', N'Hinh service studio ST003', N'Resource/img/30.jpg', 'SV', 'ST003', null, null, null )
insert into Image
values ('IMG041', N'Hinh service studio ST003', N'Resource/img/31.jpg', 'SV', 'ST003', null, null, null )

insert into Image
values ('IMG042', N'Hinh service studio ST004', N'Resource/img/32.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG043', N'Hinh service studio ST004', N'Resource/img/33.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG044', N'Hinh service studio ST004', N'Resource/img/34.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG045', N'Hinh service studio ST004', N'Resource/img/35.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG046', N'Hinh service studio ST004', N'Resource/img/36.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG047', N'Hinh service studio ST004', N'Resource/img/37.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG048', N'Hinh service studio ST004', N'Resource/img/39.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG049', N'Hinh service studio ST004', N'Resource/img/40.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG050', N'Hinh service studio ST004', N'Resource/img/41.jpg', 'SV', 'ST004', null, null, null )
insert into Image
values ('IMG051', N'Hinh service studio ST004', N'Resource/img/42.jpg', 'SV', 'ST004', null, null, null )
