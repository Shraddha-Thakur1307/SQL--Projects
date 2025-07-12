create database cb;
use cb;
create table Customers (
CustomerID INT primary key,
Name varchar (100),
email varchar (100),
RegistrationDate Date
);
create table drivers (
DriverID int primary key,
Name varchar (100),
JoinDate Date
);
create table cabs (
CabID int primary key,
DriverID int,
VehicleType varchar(100),
PlateNumber varchar(100),
foreign key (DriverID) references drivers(DriverID)
);
create table Bookings (
BookingID int primary key,
CustomerID int,
CabId int,
BookingDate datetime,
Status varchar(20),
PickupLocation varchar(100),
DropoffLocation varchar(100),
foreign key (CustomerID) references Customers(CustomerID),
foreign key (CabID) references Cabs(CabID)
);



create table TripDetails (
TripID int primary key,
BookingID int,
StartTime DateTime,
EndTime DateTime,
DistanceKM Float,
Fare Float,
foreign key (BookingID) references Bookings(BookingID)
);
create table Feedback (
FeedbackID int primary key,
BookingID int,
Rating Float,
Comments text,
FeedbackDate Date,
foreign key (BookingID) references Bookings(BookingID)
);
----- Insert Customers
Insert into Customers (CustomerId, Name, Email, RegistrationDate) Values (1,'Alice Johnson','alice@gmail.com','2023-01-15'),
(2,'Bob Smith','bob@gmail.com','2023-02-20'),
(3,'Charlie Browm','charlie@gmail.com','2023-03-05'),
(4,'Diana Prince','diana@gmail.com','2023-04-10'),
(5,'Julia Anderson','julia5@gmail.com','2023-03-02'),
(6,'Ethan Miller','ethan6@gmail.com','2023-09-16'),
(7,'Hannah Walker','hannah7@gmail.com','2023-11-12'),
(8,'George White','george8@gmail.com','2023-06-08'),
(9,'Ian Walker','ian9@gmail.com','2023-04-17'),
(10,'Alice White','alice10@gmail.com','2023-10-20'),
(11,'George Taylor','george11@gmail.com','2023-01-07'),
(12,'Charlie Prince','charlie12@gmail.com','2023-02-26'),
(13,'Bob Prince','bob13@gmail.com','2023-04-03'),
(14,'Julia White','julia14@gmail.com','2023-12-05'),
(15,'Diana Walker','diana15@gmail.com','2023-08-18'),
(16,'Ethan Smith','ethan16@gmail.com','2023-03-14'),
(17,'Hannah Johnson','hannah17@gmail.com','2023-10-27'),
(18,'George Lee','george18@gmail.com','2023-11-30'),
(19,'Ian White','ian19@gmail.com','2023-07-19'),
(20,'Fiona Brown','fiona20@gmail.com','2023-05-11'),
(21,'Alice Taylor','alice21@gmail.com','2023-02-08'),
(22,'Bob Lee','bob22@gmail.com','2023-06-25'),
(23,'Julia Walker','julia23@gmail.com','2023-01-28'),
(24,'Charlie Johnson','charlie24@gmail.com','2023-03-09'),
(25,'Diana Brown','diana25@gmail.com','2023-04-15'),
(26,'Ian Taylor','ian26@gmail.com','2023-08-02'),
(27,'George Brown','george27@gmail.com','2023-07-03'),
(28,'Alice Anderson','alice28@gmail.com','2023-05-20'),
(29,'Fiona Miller','fiona29@gmail.com','2023-09-08'),
(30,'Charlie White','charlie30@gmail.com','2023-11-01'),
(31,'Diana Smith','diana31@gmail.com','2023-10-11'),
(32,'Hannah Taylor','hannah32@gmail.com','2023-02-24'),
(33,'George Johnson','george33@gmail.com','2023-01-03'),
(34,'Ian Prince','ian34@gmail.com','2023-03-27'),
(35,'Bob Brown','bob35@gmail.com','2023-04-07'),
(36,'Ethan Johnson','ethan36@gmail.com','2023-09-15'),
(37,'Julia Brown','julia37@gmail.com','2023-06-30'),
(38,'Fiona Taylor','fiona38@gmail.com','2023-08-28'),
(39,'Charlie Lee','charlie39@gmail.com','2023-05-19'),
(40,'Hannah Anderson','hannah40@gmail.com','2023-12-15'),
(41,'George White','george41@gmail.com','2023-04-26'),
(42,'Alice Walker','alice42@gmail.com','2023-10-13'),
(43,'Bob Johnson','bob43@gmail.com','2023-11-20'),
(44,'Ian Miller','ian44@gmail.com','2023-01-21'),
(45,'Diana Prince','diana45@gmail.com','2023-02-12'),
(46,'Julia Smith','julia46@gmail.com','2023-07-17'),
(47,'Charlie Brown','charlie47@gmail.com','2023-03-19'),
(48,'Fiona Anderson','fiona48@gmail.com','2023-09-24'),
(49,'Ethan White','ethan49@gmail.com','2023-06-10'),
(50,'Hannah Lee','hannah50@gmail.com','2023-12-03');


---- Insert Drivers
Insert into Drivers (DriverID, Name, JoinDate) Values (101,'John Driver','2022-05-10'),
(102,'Linda Miles','2022-07-25'),
(103,'Kevin Road','2023-01-01'),
(104,'Sandra Swift','2022-11-11'),
(105,'Fiona Johnson','2022-01-10'),
(106,'Julia Anderson','2023-04-03'),
(107,'George Lee','2023-10-29'),
(108,'Charlie White','2023-06-06'),
(109,'Hannah Prince','2022-12-14'),
(110,'Bob Walker','2022-05-21'),
(111,'Alice Smith','2022-09-12'),
(112,'Ian Brown','2023-03-23'),
(113,'Diana Anderson','2022-07-04'),
(114,'George Taylor','2023-01-30'),
(115,'Julia Lee','2023-06-18'),
(116,'Charlie Prince','2023-11-13'),
(117,'Hannah White','2022-08-16'),
(118,'George Brown','2022-11-09'),
(119,'Ian Smith','2023-02-20'),
(120,'Fiona Lee','2023-10-04'),
(121,'Alice Taylor','2022-04-15'),
(122,'Bob Johnson','2023-03-01'),
(123,'Charlie Anderson','2023-05-25'),
(124,'Diana Walker','2023-06-12'),
(125,'George Smith','2023-08-19'),
(126,'Julia Miller','2023-12-06'),
(127,'Ethan Prince','2022-10-30'),
(128,'Fiona White','2023-07-07'),
(129,'Ian Anderson','2022-06-03'),
(130,'Alice Lee','2023-01-17'),
(131,'George Walker','2023-09-14'),
(132,'Charlie Taylor','2022-02-25'),
(133,'Bob Miller','2023-05-04'),
(134,'Julia Brown','2022-03-27'),
(135,'Hannah Smith','2023-07-21'),
(136,'Diana Johnson','2023-10-09'),
(137,'George Anderson','2022-12-02'),
(138,'Fiona Smith','2023-08-26'),
(139,'Ian Prince','2022-03-14'),
(140,'Charlie Lee','2023-04-22'),
(141,'Alice Anderson','2023-09-03'),
(142,'Bob Taylor','2022-05-31'),
(143,'George Brown','2023-06-27'),
(144,'Diana Miller','2023-11-07'),
(145,'Ethan Johnson','2022-01-28'),
(146,'Hannah Walker','2023-03-15'),
(147,'Julia Prince','2023-12-10'),
(148,'Charlie Brown','2023-06-01'),
(149,'Fiona Johnson','2022-08-05'),
(150,'George White','2022-11-18');


---- Insert Cabs 
insert into cabs (CabID, DriverID, VehicleType, PlateNumber) Values 
(1001,101,'sedan','ABC1234'),
(1002,102,'suv','xyz5678'),
(1003,103,'sedan','lmn8901'),
(1004,104,'suv','PQR3456'),
(1005,105,'suv','SXQ4133'),
(1006,106,'hatchback','HZZ7514'),
(1007,107,'suv','FJB5637'),
(1008,108,'sedan','DQA8905'),
(1009,109,'suv','TRK1547'),
(1010,110,'hatchback','ZUA5623'),
(1011,111,'sedan','PLW7364'),
(1012,112,'suv','MBK2741'),
(1013,113,'sedan','XYN8394'),
(1014,114,'hatchback','TRN4532'),
(1015,115,'sedan','KJM9851'),
(1016,116,'suv','PQE2167'),
(1017,117,'hatchback','YUJ3589'),
(1018,118,'sedan','NMB6243'),
(1019,119,'suv','VKL4392'),
(1020,120,'hatchback','JQZ9871'),
(1021,121,'suv','TWA6723'),
(1022,122,'sedan','HGT2951'),
(1023,123,'suv','BNZ1537'),
(1024,124,'hatchback','MJH2846'),
(1025,125,'sedan','LGY6541'),
(1026,126,'suv','PAK3112'),
(1027,127,'hatchback','RWT8945'),
(1028,128,'sedan','CLD2673'),
(1029,129,'suv','ZXP8731'),
(1030,130,'hatchback','QRL7302'),
(1031,131,'suv','MSD8120'),
(1032,132,'sedan','YUK3594'),
(1033,133,'hatchback','VFN6543'),
(1034,134,'suv','DWR2469'),
(1035,135,'sedan','KMH9321'),
(1036,136,'hatchback','APO5417'),
(1037,137,'suv','TYN8320'),
(1038,138,'sedan','XCV3742'),
(1039,139,'hatchback','LMN2409'),
(1040,140,'suv','KOP6831'),
(1041,141,'sedan','RFG3927'),
(1042,142,'hatchback','TBV1945'),
(1043,143,'suv','NWU4751'),
(1044,144,'sedan','OLM8532'),
(1045,145,'hatchback','BRK1027'),
(1046,146,'suv','YLC2436'),
(1047,147,'sedan','JHT6719'),
(1048,148,'hatchback','URV8531'),
(1049,149,'suv','MZN4382'),
(1050,150,'sedan','XQE5627');


Insert into Bookings (BookingID, CustomerID, CabID, BookingDate, Status, PickupLocation, DropoffLocation) Values
(201,1,1001,'2024-10-01 08:30:00', 'Completed', 'Downtown','Airport'),
(202,2,1002, '2024-10-02 09:00:00','Completed','Mall', 'University'),
(203,3,1003,'2024-10-03 10:15:00', 'Canceled','Station','Downtown'),
(206,2,1001,'2024-10-06 07:20:00','Canceled','University','Mall'),
(207,25,1018,'2024-10-07 16:37:52','Completed','University','Airport'),
(208,14,1022,'2024-10-09 11:59:57','Completed','Downtown','Station'),
(209,50,1050,'2024-10-29 06:21:34','Completed','Mall','University'),
(210,46,1042,'2024-10-17 23:04:30','Completed','University','Station'), 
(211,18,1041,'2024-10-27 06:37:10','Completed','Station','Airport'),
(212,22,1042,'2024-10-19 04:33:05','Completed','Downtown','Airport'),
(213,9,1030,'2024-10-19 11:40:08','Completed','University','Downtown'),
(214,8,1043,'2024-10-22 07:19:27','Completed','University','Station'),
(215,33,1042,'2024-10-12 11:18:18','Canceled','Suburbs','University'),
(216,20,1036,'2024-10-29 15:19:06','Completed','University','Airport'),
(217,20,1007,'2024-10-15 11:19:36','Completed','Airport','Suburbs'),
(218,3,1014,'2024-10-08 07:31:13','Completed','Downtown','Mall'),
(219,6,1009,'2024-10-02 09:20:28','Completed','University','Mall'),
(220,37,1011,'2024-10-22 16:37:56','Completed','Mall','Downtown'),
(221,33,1026,'2024-10-08 03:11:57','Completed','University','Suburbs'),
(222,13,1005,'2024-10-23 17:15:02','Completed','Downtown','Mall'),
(223,9,1006,'2024-10-08 02:35:21','Completed','Downtown','Suburbs'),
(224,45,1018,'2024-10-17 04:48:07','Completed','Airport','Downtown'),
(225,25,1049,'2024-10-02 10:25:00','Completed','University','Station'),
(226,48,1050,'2024-10-26 11:54:42','Completed','Suburbs','Downtown'),
(227,27,1018,'2024-10-19 18:03:48','Completed','Suburbs','Station'),
(228,35,1018,'2024-10-17 10:00:11','Completed','Mall','Station'),
(229,26,1029,'2024-10-05 21:56:28','Completed','Mall','Airport'),
(230,34,1027,'2024-10-13 12:47:55','Completed','Mall','Station'),
(231,7,1044,'2024-10-16 05:43:57','Completed','Suburbs','Station'),
(232,50,1016,'2024-10-22 15:15:55','Completed','Downtown','University'),
(233,11,1004,'2024-10-08 05:14:01','Completed','Downtown','Airport'),
(234,42,1027,'2024-10-25 20:07:52','Completed','Mall','University'),
(235,45,1028,'2024-10-29 15:03:29','Completed','Suburbs','Downtown'),
(236,23,1022,'2024-10-20 08:59:42','Completed','University','Station'),
(237,24,1001,'2024-10-20 16:36:55','Completed','Mall','Suburbs'),
(238,4,1024,'2024-10-18 10:35:30','Completed','Airport','Station'),
(239,18,1047,'2024-10-17 11:16:08','Completed','University','Mall'),
(240,26,1048,'2024-10-11 16:35:57','Completed','Airport','University'),
(241,49,1003,'2024-10-11 15:51:51','Completed','Suburbs','Station'),
(242,16,1042,'2024-10-14 07:55:12','Canceled','Airport','Suburbs'),
(243,39,1004,'2024-10-10 04:26:12','Completed','Suburbs','Station'),
(244,30,1047,'2024-10-02 20:04:22','Canceled','Suburbs','Airport'),
(245,2,1049,'2024-10-02 20:51:58','Canceled','University','Suburbs'),
(246,7,1014,'2024-10-06 12:45:52','Completed','Station','Mall'),
(247,21,1040,'2024-10-10 22:02:52','Completed','University','Suburbs'),
(248,10,1040,'2024-10-24 10:37:00','Completed','Downtown','Station'),
(249,40,1028,'2024-10-25 00:58:25','Completed','Airport','Station'),
(250,37,1021,'2024-10-22 03:06:28','Completed','Suburbs','University'),
(251,13,1029,'2024-10-13 22:29:42','Completed','Station','Mall'),
(252,21,1010,'2024-10-08 04:09:14','Canceled','Airport','University'),
(253,50,1031,'2024-10-12 10:53:20','Completed','Station','University'),
(254,48,1040,'2024-10-12 10:49:44','Completed','Airport','Downtown'),
(255,35,1005,'2024-10-07 16:13:17','Completed','Downtown','Suburbs'),
(256,31,1014,'2024-10-23 19:10:23','Completed','Suburbs','Mall');


----- Insert Trip Details
Insert into TripDetails (TripID, BookingID, StartTime, EndTime, DistanceKM, Fare) Values
(301,201,'2024-10-01 08:45:00','2024-10-01 09:20:00',18.5,250.00),
(302,202,'2024-10-02 09:10:00','2024-10-02 09:40:00',12.0,180.00),
(303,204,'2024-10-04 14:10:00','2024-10-14 14:40:00',10.0,150.00),
(304,205,'2024-10-05 18:50:00','2024-10-05 19:30:00',20.0,270.00),
(305,207,'2024-10-07 16:47:52','2024-10-07 17:18:52',16.4,231.2),
(306,208,'2024-10-09 12:09:57','2024-10-09 12:37:57',16.4,231.2),
(307,209,'2024-10-29 06:31:34','2024-10-29 06:49:34',16.6,232.8),
(308,210,'2024-10-17 23:14:30','2024-10-17 23:25:30',23.8,290.4),
(309,211,'2024-10-27 06:47:10','2024-10-27 07:03:10',7.7,161.6),
(310,212,'2024-10-19 04:43:05','2024-10-19 05:08:05',20.5,264.0),
(311,213,'2024-10-19 11:50:08','2024-10-19 12:28:08',24.9,299.2),
(312,214,'2024-10-22 07:29:27','2024-10-22 08:10:27',9.1,172.8),
(313,216,'2024-10-29 15:29:06','2024-10-29 16:10:06',19.9,259.2),
(314,217,'2024-10-15 11:29:36','2024-10-15 11:52:36',8.8,170.4),
(315,218,'2024-10-08 07:41:13','2024-10-08 08:04:13',12.5,200.0),
(316,219,'2024-10-02 09:30:28','2024-10-02 09:56:28',8.2,165.6),
(317,220,'2024-10-22 16:47:56','2024-10-22 16:59:56',5.8,146.4),
(318,221,'2024-10-08 03:21:57','2024-10-08 03:42:57',24.0,292.0),
(319,222,'2024-10-23 17:25:02','2024-10-23 17:53:02',6.2,149.6),
(320,223,'2024-10-08 02:45:21','2024-10-08 03:29:21',15.7,225.6),
(321,224,'2024-10-17 04:58:07','2024-10-17 05:26:07',8.1,164.8),
(322,225,'2024-10-02 10:35:00','2024-10-02 10:50:00',8.9,171.2),
(323,226,'2024-10-26 12:04:42','2024-10-26 12:18:42',7.2,157.6),
(324,227,'2024-10-19 18:13:48','2024-10-19 18:38:48',20.9,267.2),
(325,228,'2024-10-17 10:10:11','2024-10-17 10:33:11',6.9,155.2),
(326,229,'2024-10-05 22:06:28','2024-10-05 22:30:28',22.9,283.2),
(327,230,'2024-10-13 12:57:55','2024-10-13 13:40:55',11.4,191.2),
(328,231,'2024-10-16 05:53:57','2024-10-16 06:18:57',13.6,208.8),
(329,232,'2024-10-22 15:25:55','2024-10-22 15:52:55',23.0,284.0),
(330,233,'2024-10-08 05:24:01','2024-10-08 05:44:01',24.2,293.6),
(331,234,'2024-10-25 20:17:52','2024-10-25 20:29:52',6.0,148.0),
(332,235,'2024-10-29 15:13:29','2024-10-29 15:30:29',15.9,227.2),
(333,236,'2024-10-20 09:09:42','2024-10-20 09:42:42',19.4,255.2),
(334,237,'2024-10-20 16:46:55','2024-10-20 17:24:55',21.9,275.2),
(335,238,'2024-10-18 10:45:30','2024-10-18 11:26:30',11.0,188.0),
(336,239,'2024-10-17 11:26:08','2024-10-17 11:51:08',5.5,144.0),
(337,240,'2024-10-11 16:45:57','2024-10-11 17:11:57',17.4,239.2),
(338,241,'2024-10-11 16:01:51','2024-10-11 16:24:51',13.5,208.0),
(339,243,'2024-10-10 04:36:12','2024-10-10 04:53:12',6.2,149.6),
(340,246,'2024-10-06 12:55:52','2024-10-06 13:23:52',12.3,198.4),
(341,247,'2024-10-10 22:12:52','2024-10-10 22:36:52',11.6,192.8),
(342,248,'2024-10-24 10:47:00','2024-10-24 11:25:00',6.3,150.4),
(343,249,'2024-10-25 01:08:25','2024-10-25 01:47:25',7.4,159.2),
(344,250,'2024-10-22 03:16:28','2024-10-22 03:53:28',16.5,232.0),
(345,251,'2024-10-13 22:39:42','2024-10-13 23:11:42',5.5,144.0),
(346,253,'2024-10-12 11:03:20','2024-10-12 11:14:20',18.3,246.4),
(347,254,'2024-10-12 10:59:44','2024-10-12 11:29:44',5.1,140.8),
(348,255,'2024-10-07 16:23:17','2024-10-07 17:03:17',17.5,240.0),
(349,256,'2024-10-23 19:20:23','2024-10-23 19:59:23',6.8,154.4);

---- Insert Feedback 
Insert into Feedback (FeedbackID, BookingID, Rating, Comments, FeedbackDate) Values 
(401, 201, 4.5, 'Smooth ride', '2024-10-01'),
(402, 202, 3.0, 'Driver was late', '2024-10-04'),
(403, 204, 5.0, 'Excellent service', '2024-10-04'),
(404, 205, 2.5, 'Cab was not clean', '2024-10-05'),
(405,207,4.2,'Smooth ride','2024-10-07'),
(406,208,2.4,'Cab was not clean','2024-10-09'),
(407,209,2.0,'Driver was late','2024-10-29'),
(408,210,4.1,'Driver was late','2024-10-17'),
(409,211,3.9,'Cab was not clean','2024-10-27'),
(410,212,4.2,'Average experience','2024-10-19'),
(411,213,3.3,'Driver was late','2024-10-19'),
(412,214,2.4,'Driver was late','2024-10-22'),
(413,216,3.1,'Cab was not clean','2024-10-29'),
(414,217,3.0,'Smooth ride','2024-10-15'),
(415,218,4.4,'Excellent service','2024-10-08'),
(416,219,4.4,'Driver was late','2024-10-02'),
(417,220,4.1,'Cab was not clean','2024-10-22'),
(418,221,4.5,'Cab was not clean','2024-10-08'),
(419,222,2.9,'Average experience','2024-10-23'),
(420,223,2.6,'Average experience','2024-10-08'),
(421,224,4.8,'Excellent service','2024-10-17'),
(422,225,2.3,'Smooth ride','2024-10-02'),
(423,226,2.8,'Cab was not clean','2024-10-26'),
(424,227,4.1,'Cab was not clean','2024-10-19'),
(425,228,4.1,'Average experience','2024-10-17'),
(426,229,4.6,'Smooth ride','2024-10-05'),
(427,230,3.6,'Cab was not clean','2024-10-13'),
(428,231,4.9,'Average experience','2024-10-16'),
(429,232,2.3,'Driver was late','2024-10-22'),
(430,233,2.7,'Driver was late','2024-10-08'),
(431,234,3.5,'Cab was not clean','2024-10-25'),
(432,235,3.6,'Driver was late','2024-10-29'),
(433,236,2.4,'Average experience','2024-10-20'),
(434,237,3.8,'Cab was not clean','2024-10-20'),
(435,238,2.7,'Excellent service','2024-10-18'),
(436,239,2.7,'Average experience','2024-10-17'),
(437,240,3.3,'Driver was late','2024-10-11'),
(438,241,4.3,'Driver was late','2024-10-11'),
(439,243,2.0,'Average experience','2024-10-10'),
(440,246,2.3,'Driver was late','2024-10-06'),
(441,247,2.6,'Excellent service','2024-10-10'),
(442,248,4.9,'Average experience','2024-10-24'),
(443,249,4.7,'Excellent service','2024-10-25'),
(444,250,2.2,'Smooth ride','2024-10-22'),
(445,251,3.6,'Cab was not clean','2024-10-13'),
(446,253,4.6,'Cab was not clean','2024-10-12'),
(447,254,5.0,'Excellent service','2024-10-12'),
(448,255,4.1,'Excellent service','2024-10-07'),
(449,256,2.9,'Excellent service','2024-10-23');

---- Customers and Booking Analysis
---- Identifiy Loyal and engaged customers who complete booking regularly 
select c.CustomerID, c.name, count(*) as CompletedBookings from Customers c 
join Bookings b 
on c.CustomerID = b.CustomerID
where b.status = 'Completed'
group by c.customerID, c.name Order by CompletedBookings desc;

--- Total spend per customer
select b.customerID, c.name,
sum(t.fare) as TotalSpend from Bookings b
join Tripdetails t on b.BookingID = t.BookingID
join Customers c on b.CustomerID = c.CustomerID
where b.status = 'Completed'
group by b.customerID, c.name
order by TotalSpend desc;

--- Repeat Customers
--- Customers with more than 5 Bookings 
select customerID, count(*) as TotalBookings from Bookings
group by CustomerID having count(*) > 5 
order by TotalBookings desc;


----- Customers with More than 30% Cancellations
----- Identifies customers with a high cancellation rate
select customerID,
sum(case when status = 'canceled' then 1 else 0 end) as cancelled,
count(*) as total,
round(100.0* sum(case when status = 'canceled' then 1 else 0 end) / count(*), 2) as cancellationrate 
from Bookings group by CustomerID having cancellationrate > 30;

---- Busiest dat of the week
---- reveals demand trends for resources and marketing planning.
select date_format(BookingDate, "%W") as DayofWeek, count(*) as TotalBookings from Bookings
group by date_Format(BookingDate, "%W") order by TotalBookings desc;

--- peak Booking hour
select hour(BookingDate) as HourofDay, count(*) as BookingCount from Bookings
group by hour(BookingDate) 
order by BookingCount desc;

---- Drivers with Average Rating <3 in last 3 months
--- spot underperforming drivers who might need traning or action
select d.DriverID, d.name, avg(f.rating) as AvgRating 
from Drivers d
join cabs c on d.driverID = c.DriverID
join Bookings b on c.CabID = b.CabID
join Feedback f on b.BookingID = f.BookingID
where f.Rating is not null and f.FeedbackDate >= Date_sub(curdate(), interval 3 month)
group by d.driverID, d.name
having avg(f.rating) < 3.0;

--- Top 5 Drivers by total distance covered 
--- Indentify highly active drivers and reward them.
select d.driverID, d.name, sum(t.DistanceKM) as TotalDistance from 
Drivers d
join cabs c on d.driverID = c.DriverID
join Bookings b on c.CabID = b.CabID
join TripDetails t on b.BookingID = t.BookingID
where b.status = 'completed'
group by d.DriverID, d.name
order by TotalDistance desc limit 5;

--- Drivers with high cancelation rate (>25%)
--- Recognize driver behavior issues early and improve service.
select d.driverID, d.name,
sum(case when b.status = 'canceled' then 1 else 0 end) * 100.0 / count(*) as cancellationrate
from Drivers d
join cabs c on d.DriverID = c.DriverID
join Bookings b on c.cabID = b.CabID
group by d.DriverID, d.name
having sum(case when b.status = 'canceled' then 1 else 0 end) * 100.0 / count(*) > 25;

--- Monthly Revenue in the last 6 months
--- Observe monthly income trends for financial forecasting
select month(t.EndTime) as month, sum(t.fare) as revenue from TripDetails t 
join Bookings b on t.BookingID = b.BookingID
where b.status = 'completed' and t.EndTime >= Date_sub(curdate(), interval 6 month)
group by month(t.EndTime)
Order by month;

--- cab Utilization Efficiency
--- Average trips per cab
select c.cabID, count(b.BookingID) as TotalTrips
from Cabs c
Left Join Bookings b on c.cabID = b.cabID and b.status = 'Completed'
group by c.cabID
order by TotalTrips desc;

--- Top 3 Routes by Booking Volume 
--- Popular routes help optimize pricing and fleet assignment.
select pickuplocation, dropofflocation, count(*) as BookingCount from Bookings
group by pickuplocation, dropofflocation order by BookingCount desc limit 3;


--- Most active pickup location
select pickuplocation, count(*) as TripCount from Bookings group by pickupLOcation
order by TripCount desc limit 2;

--- Driver Rating Earnings
--- analyze the relationship between earnings and customer satisfaction
select d.driverID, d.name, avg(f.rating) as avgRating, count(*) as 
TotalTrips, sum(t.fare) as TotalEarnings
from Drivers d 
join Cabs c on d.driverID = c.DriverID
join Bookings b on c.CabID = b.CabID
join Feedback f on b.bookingID = f.BookingID
join TripDetails t on b.BookingID = t.BookingID
where b.status = 'completed'
Group by d.driverID
order by AvgRating desc;

--- Drivers with no complete trips in the last 30 days
select d.driverID, d.name from Drivers d 
where d.driverID not in (select distinct c.driverID from Cabs c 
join Bookings b on c.cabID = b.cabID
where b.status = 'completed'
	and b.BookingDate >= curdate() - interval 30 day);

--- Average wait time per pickup location
select pickupLocation,
avg(timestampdiff(minute, b.bookingDate, t.StartTime)) as AvgWaitTimeMins
from Bookings b 
join TripDetails t on b.BookingID = t.BookingID 
where b.status = 'Completed'
group by PickupLocation
Order by avgWaitTimeMins desc;


--- revenue by trip type (short vs long)
--- Compare how much short and long trips contribute to business
select 
	case
		when DistanceKM < 5 then'short'
        else 'Long'
	end as TripType,
    count(*) as NumTrips,
    sum(fare) as TptalRevenue
from TripDetails
group by
	case
		when DistanceKM < 5 then 'short'
		else 'Long'
	end;

--- sedan vs suv revenue comparison
select c.vehicleType, sum(t.fare) as Revenue 
from cabs c 
join Bookings b on c.cabID = b.CabID
join Tripdetails t on b.BookingID = t.BookingID 
where b.status = 'Completed'
group by c.VehicleType;

--- Weekend vs Weekday Performance
--- Understand day-of-week trends for promotional planning
select
	case
		when datename(weekday, BookingDate) in ('saturday','sunday') then 'weekend'
        else 'weekday'
	end as DayType,
    count(*) as TotalBookings,
    sum(t.fare) as Totalrevenue
from Bookings b
join TripDetails t on b.BookingID = t.BookingID
group by 
	case 
		When datename(weekday,BookingDate) in ('saturday','sunday') then 'Weekend'
        else 'weekday'
	end;
    
    