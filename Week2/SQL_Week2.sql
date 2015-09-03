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
	col1 smallint identity (101,1) 

)