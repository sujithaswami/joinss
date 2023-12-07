use practice;
create table practice.employee(
id int primary key auto_increment,
name varchar(30) null,
email varchar(30) not null
);

create table practice.employeaddress(
id int primary key auto_increment,
state varchar(20) null,
country varchar(20) default ('india'),
emp_id int not null,
constraint pk_employeaddress_employee_emp_id foreign key(emp_id) references practice.employee(id)
);


insert into practice.employee(name, email)values('suji', 's@gmail.com'), ('anu', 'a@gmail.com'), ('madhu', 'm@gmail.com');

insert into practice.employeaddress(state,  emp_id) values('ap', 1),('ts', 5), ('ka', 1),('tn', 8); 
insert into practice.employeaddress(state,  emp_id) values('null', 10);
select * from practice.employeaddress;

select * from practice.employee as emp
inner join practice.employeaddress as empad on emp.id = empad.emp_id;

select * from practice.employee as emp
left join practice.employeaddress as empad on emp.id = empad.emp_id;

select * from practice.employee as emp
right join practice.employeaddress as empad on emp.id = empad.emp_id;

select emp.name, empad.emp_id from practice.employee as emp
 join practice.employeaddress as empad on emp.id = empad.emp_id;