create table practice.country(
id int,
name varchar(30) null,
pincode int not null
);

create table practice.state(
id int ,
name varchar(30) unique,
district  varchar(30) not null,
country_id int not null
);
alter table practice.country
rename column pincode to code;

alter table practice.country
modify column id int primary key auto_increment;

alter table practice.country
modify column code int null;

alter table practice.state
modify column id int primary key auto_increment;

alter table practice.state
add constraint fk_state_country_id foreign key (country_id) references practice.country(id);

alter table practice.state
drop foreign key fk_state_country_id;


select * from practice.state;

select * from practice.country;
insert into practice.country(name, code)values('india', 91), ('usa', +1),('austrilia', 61),('uk', 23), ('africa', 32);

insert into practice.state(name, district, country_id) values('ap','guntur', 1),('ts', 'hyd', 1), ('texas','Lipscomb', 2),('sydney', 'ss', 3);
insert into practice.state(name, district, country_id)values('yn', 'ko', 6);


select * from practice.country as cou
inner join practice.state as sta on cou.id = sta.country_id;

select * from practice.country as cou
left join practice.state as sta on cou.id = sta.country_id;

select * from practice.country as cou
right join practice.state as sta on cou.id = sta.country_id;

select * from practice.country
cross join practice.state;

select cou.id, sta.name from practice.country as cou
join practice.state as sta on cou.id = sta.country_id;