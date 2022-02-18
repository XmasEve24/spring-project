select * from all_tables;

create table boardS(
	bid int primary key,
	title varchar(20),
	writer varchar(10),
	content varchar(50),
	bdate date default sysdate,
	cnt int default 0,
	
);

ALTER TABLE boardS ADD filepath varchar(100);

select * from boardS;
select * from memberS;
drop table boardS1;
create table memberS(
	mid varchar(10) primary key,
	password varchar(10),
	name varchar(10),
	role varchar(10)
);

insert into memberS values('ko','1520','이즈','USER');
insert into memberS values('go','1234','ruby','USER');