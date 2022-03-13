create database Manager_Product
go
use Manager_Product
go
create table Account
(
	idName	varchar(30) primary key not null,
	passWords nchar(11)  not null,
	hoTen nvarchar(50),
	sDT varchar(11)

)
go
create table Product
(
	idName varchar(30) not null foreign key (idName) references Account (idName)
				On update 
				Cascade
				On delete 
				Cascade,
	idProduct	varchar(30) not null,
	tenSP    nvarchar(50)  not null,
	soLuong int ,
	giatien money,
	primary key(idName,idProduct)
)


insert into Account
values	('TK01', '111','Lê Văn Anh Tuấn','012346789'),
		('TK02', '222','Nguyễn Minh Quân','016789234'),
		('TK03','333','Phan Nguyên Phương','016789234'),
		('TK04','444','Phan Phương Nguyên','013467892'),
		('TK05','555','Nguyễn Ngọc','013678924');

insert into Product
values	('TK01','SP01', 'Bàn',5,200000),
		('TK02','SP02', 'Ghế',15,35000),
		('TK02','SP03', 'Bút',15,5000),
		('TK03','SP03', 'Bút',25,5000),
		('TK04','SP04','Tủ',9,500000);
		


