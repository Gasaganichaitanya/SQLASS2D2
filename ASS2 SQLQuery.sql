create database ExerciseDb
use ExerciseDb

create table CompanyInfo
(CId int primary key,
CName nvarchar(100) not null
)
insert into CompanyInfo values (1,'Samsung'),(2,'HP'),(3,'Apple'),(4,'Dell'),(5,'Toshiba'),(6,'Redmi')

select * from CompanyInfo

create table ProductInfo
(PId int primary key identity(101,1),
PName nvarchar(100) not null,
PPrice float not null,
PMDate date ,
CId int foreign key references CompanyInfo(CId)
)
insert into ProductInfo values ('Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values ('Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values ('Mobile',150000.90,'12/03/2012',2)
insert into ProductInfo values ('Laptop',135000.90,'12/12/2012',3)
insert into ProductInfo values ('Mobile',65000.90,'12/12/2012',3)
insert into ProductInfo values ('Laptop',35000.90,'12/12/2012',5)
insert into ProductInfo values ('Mobile',35000.90,'12/01/2012',5)
insert into ProductInfo values ('EarPod',1000.90,'12/01/2022',3)
insert into ProductInfo values ('Laptop',85000.90,'12/12/2021',6)
insert into ProductInfo values ('Mobile',55000.90,'12/12/2020',1)


select * from ProductInfo
--Q:1
select c.CId,c.CName,p.PId,p.PName,p.PPrice,p.PMDate from CompanyInfo c  left outer join ProductInfo p on c.CId=p.CId

--Q:2
select c.CName,p.PName from CompanyInfo c right outer join ProductInfo p on c.CId=p.CId

--Q:3
select CName,PName,PPrice,PMDate from CompanyInfo cross join ProductInfo







