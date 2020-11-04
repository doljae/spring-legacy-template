use scott;
create table country (
    ccode char(20) primary key,	# ���� �ڵ�
    cname varchar(20) not null  # ���� ��
);

create table patient(
    pno varchar(30)  primary key,  # ���� �ڵ�
    name varchar(20) not null,      # ���� ��
    age int not null,            # Ȯ���� ��
    ccode char(20),                  # ���� �ڵ�
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