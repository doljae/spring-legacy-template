use scott;
create table country (
    ccode char(20) primary key,	# 지역 코드
    cname varchar(20) not null  # 지역 명
);

create table patient(
    pno varchar(30)  primary key,  # 국가 코드
    name varchar(20) not null,      # 국가 명
    age int not null,            # 확진자 수
    ccode char(20),                  # 지역 코드
    constraint fk_country foreign key(ccode) references country(ccode)
);

insert into country values(1,'us');
insert into country values(2,'korea');
insert into country values(3,'italy');

insert into patient values(100,'tommy',35,1);
insert into patient values(200,'jane',32,1);
insert into patient values(300,'bill',12,3);
insert into patient values(400,'harry',35,3);
insert into patient values(500,'kim',45,2);