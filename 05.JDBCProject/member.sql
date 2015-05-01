create user jspuserc identified by jsp1234;

create table member
(
	id				varchar2(15)			primary key,
	password		varchar2(10),
	name			varchar2(20),
	age				number,
	gender			char(1),
	addr			varchar2(100),
	regdate 		date					default sysdate
)

select *from member

insert into member values('test1','1234','홍길동',20,'1','서울시','2015-04-07')

update member 
set addr = '경기도'
where id = 'test1'

delete member
where id = 'test1'

drop table member