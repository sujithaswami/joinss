create database practice;
use practice;
create table practice.student(
id int primary key auto_increment,
rollno int unique,
name varchar(30)null
);

create table practice.teacher(
id int primary key auto_increment,
name varchar(20) null,
subject varchar(30) not null,
student_id int not null
);

alter table practice.student
modify column name varchar(25) null;

alter table practice.teacher
modify column subject varchar(20) not null;

alter table practice.teacher
add constraint fk_student_id_teacher foreign key(student_id) references practice.student(id);

insert into practice.student(rollno, name) values(65, 'sujitha'),(66, 'sri'),(23, 'navya');

insert into practice.teacher(name, subject, student_id) values('anu', 'maths', 1);
insert into practice.teacher(name, subject, student_id) values('madhu', 'phy', 2);
insert into practice.teacher(name, subject, student_id) values('kasivi', 'eng', 1), ('durga', 'gk', 4);


select * from practice.teacher;
select * from practice.student;

drop table practice.student;
drop table practice.teacher;

alter table practice.teacher
drop foreign key fk_student_id_teacher;
select * from practice.student as stu
join practice.teacher as tech on stu.id = tech.student_id;

select * from practice.student
cross join practice.teacher;

select stu.id, tech.student_id from practice.student as stu
join practice.teacher as tech on stu.id = tech.student_id;

select * from practice.student as stu
left join practice.teacher as tech on stu.id = tech.student_id;

select * from practice.student as stu
right join practice.teacher as tech on stu.id = tech.student_id;



