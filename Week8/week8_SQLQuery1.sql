CREATE DATABASE dbVUstore

ON PRIMARY

(

 NAME=dbVUstore_DAT,

 FILENAME='D:\56110177\dbVUstore.mdf',

 SIZE=4,

 MAXSIZE=20,

 FILEGROWTH=1

)

LOG ON

(

 NAME= dbVUstore_LOG,

 FILENAME='D:\56110177\dbVUstore.ldf',

 SIZE=2,

 MAXSIZE=5,

 FILEGROWTH=1

)

CREATE TABLE CUSTOMER(
custID char(4) NOT NULL,

custName nvarchar(50) NOT NULL,

cusAddress nvarchar(50) NOT NULL,

cusZipCode char(5) NOT NULL,

cusTel char(13) NOT NULL,

constraint CUSTOMER_custID_pk primary key (custID)

)

CREATE TABLE PRODUCT

(

proID char(4) NOT NULL,

ProName nchar(30) NOT NULL,

proPrice int NOT NULL,

proDes ntext NULL,

constraint PRODUCT_proID_pk primary key (proID)

)

CREATE TABLE EMPLOYEE

(

emID char(4) NOT NULL,

emName nvarchar(50) NOT NULL,

emPosition varchar(50) NOT NULL,

emAddress nvarchar(50) NOT NULL,

emZipCode char(5) NOT NULL,

emTel char(13) NOT NULL,

emSalary int NOT NULL,

constraint EMPLOYEE_emID_pk primary key (emID)
)

CREATE TABLE ORDERS

(

proID char(4) NOT NULL,

proName nchar(30) NOT NULL,

proPrice int NOT NULL,

proCount int not null,

sumPrice int NOT NULL,

constraint proID_fk foreign key (proID)references product(proID)

)


insert into customer(custID,custName,cusAddress,cusZipCode,cusTel) 

values('0001','aree','213 maung nakhorn-ratsrima','30000','044224597')

insert into customer(custID,custName,cusAddress,cusZipCode,cusTel) 

values('0002','somchai','123 vang nam keaw','31000','0854789999')


insert into customer(custID,custName,cusAddress,cusZipCode,cusTel) 

values('0003','nakhon','99 phayathai bangkok','10110','0814789652')

insert into customer(custID,custName,cusAddress,cusZipCode,cusTel) 

values('0004','satidchock','123 silom bangrak bangkok','10500','0894567899')

insert into customer(custID,custName,cusAddress,cusZipCode,cusTel) 

values('0005','varinth','455 maung nakhorn-ratsrima','30000','0874123654')


insert into product(proID,proName,proPrice,proDes)

values ('100','tata young mai ',' 600','hot concert very sexy')

insert into product(proID,proName,proPrice,proDes)

values ('200','academy fantasia3',' 500','mix all af3')

insert into product(proID,proName,proPrice,proDes)

values ('300','princess hours ','1200','very cute')

insert into product(proID,proName,proPrice,proDes)

values ('400','clash clash clash ',' 300','new album')

insert into employee(emID,emName,emPosition,emAddress,emZipCode,emTel,emSalary)

values ('1111','vasanchai','salesman','145 maung nakhorn-ratsrima','30000','0845253322','12000')

insert into employee(emID,emName,emPosition,emAddress,emZipCode,emTel,emSalary)

values ('2222','pattra','salesman','123 maung khonkan','40000','0877745687','18000')

insert into employee(emID,emName,emPosition,emAddress,emZipCode,emTel,emSalary)

values ('3333','sutthida','manager','11 sukumvit bangkok','10200','0811145622','35000')

/*--*/

select * from ORDERS  