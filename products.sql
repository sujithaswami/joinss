use zomato;
create table zomato.product(
id int not null,
pname varchar(30) null,
pprice int primary key
);

create table zomato.productspec(
id int primary key auto_increment,
pgst int not null,
pquality varchar(30) null,
total int not null
);
alter table zomato.productspec
add constraint fk_total_productspec foreign key productspec(total) references  zomato.product(pprice);
alter table zomato.productspec 
drop foreign key fk_total_productspec;

select * from zomato.product;
select * from zomato.productspec;



insert into zomato.product(id, pname, pprice) values(1, 'sunscreen', 350), (2, 'lipstick', 3000), (3, 'eyeliner', 2000);

insert into zomato.productspec(pgst, pquality, total) values(2, 'good', 3000), (5, 'nice', 300),(3, 'bad', 200);

select * from zomato.product as prod
inner join zomato.productspec as prosp on prod.pprice = prosp.total;


select * from zomato.product as prod
left join zomato.productspec as prosp on prod.pprice = prosp.total;


select * from zomato.product as prod
right join zomato.productspec as prosp on prod.pprice = prosp.total;
