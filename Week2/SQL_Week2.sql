/*drop database TestLab2*/
CREATE DATABASE TestLab2
ON PRIMARY
(
	NAME = test_DAT,
	FILENAME = 'D:\56110177\TestLab2.mdf',
	SIZE = 4,
	MAXSIZE = 20,
	FILEGROWTH=1
)
LOG ON
(
	NAME = test_LOG,
	FILENAME = 'D:\56110177\TestLab2.ldf',
	SIZE=2,
	MAXSIZE=5,
	FILEGROWTH=1
)

create table table1
(
	col1 int primary key ,
	col2 varchar(30),
	col3 int
)

create table table2
(
	col1 int ,
	col2 varchar(30),
	constraint table2_pk primary key (col1)
)

create table table3
(
	col1 int not null,
	col2 varchar(30)
)

alter table table3
add constraint table3_pk primary key(col1);

create table table4
(
	col1 int  primary key,
	col2 varchar(30),
	col3 int references table2 (col1)
	
)

alter table table1
add constraint col3_fk foreign key (col3)
references table2(col1)

alter table table3
add constraint table3_un unique (col1);

create table table6
(
	col1 smallint identity (101,1) not null,
	col2 varchar(20) not null 

)

create table table7(
	col1 int primary key,
	col2 int,
	constraint limit_amount check (col2 between 0 and 1000),
	col3 varchar(30)
)

insert into table7(col1,col2,col3) 
	values (1,100,'test')
insert into table7(col1,col2,col3) 
	values (2,5,'test2')
insert into table7(col1,col2,col3) 
	values (3,100,'test3')
	
	select * from table7

sp_helpconstraint table7 /*ดูการกำหนดตาราง table7*/
sp_help  /* ดูลายละเอียดตาราง*/


insert into table6(col2) 
	values ('test2')
	insert into table6(col2) 
	values ('test3')
	insert into table6(col2) 
	values ('test4')
	insert into table6(col2) 
	values ('test5')
	
update table6 set col2='sumate' where col1=103
/*เปลียน col2 ที่col1 = 103 จาก test4 เป็น ชื่อเรา*/ 

delete from table6 where col1 = 102

alter table table7 add year datetime
	
alter table table7
add constraint limit_year check (year > 2001 )
