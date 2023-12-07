use practice;

create table practice.user(
id int unique,
name varchar(30),
email varchar(20) not null
);
create table practice.useraddress(
id int primary key auto_increment,
name varchar(20),
state varchar(30) null
);
alter table practice.user
add constraint pk_name_user primary key(name);


alter table practice.useraddress
add constraint fk_useraddress_name foreign key(name) references practice.user(name);

alter table practice.useraddress
drop foreign key fk_useraddress_name;

insert into practice.user(id, name, email) values(1, 'sujitha', 's@gmail.com'), (2, 'maha', 'm@gmail.com'), (3, 'amar', 'a@gmail.com');

insert into practice.useraddress(name, state) values('amar', 'ap'), ('durga','ts'), ('anu', 'ka'), ('maha', 'pune');

select * from practice.user;
select * from practice.useraddress;

select * from practice.user as usr
inner join practice.useraddress as usadd on usr.name = usadd.name;

select * from practice.user as usr
left join practice.useraddress as usadd on usr.name = usadd.name;

select * from practice.user as usr
right join practice.useraddress as usadd on usr.name = usadd.name;

select * from practice.user
cross join practice.useraddress;

select usr.name, usr.id from practice.user as usr
 join practice.useraddress as usadd on usr.name = usadd.name;
