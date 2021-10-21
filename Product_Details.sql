--create table Product_Details
--(
--product_id int primary key not null,
--product_name varchar(25) not null,
--qty_per_unit int not null,
--price int not null,
--stock int not null,
--manufacture_date date,
--weight_in_grams float not null,
--discount int,
--store_id int FOREIGN KEY REFERENCES store(store_id),
--country_currency varchar(25) not null
--)


--put values in store table first

--insert into Product_Details values(201,'abc',10,2500,	100,'2021-02-02',800,20,		100,'USA')
--insert into Product_Details values(202,'pqr',20,3000,	80,'2021-08-02',1000,15,		200,'Brazil')
--insert into Product_Details values(203,'xyz',30,5000,	65,'2021-06-21',1100,10,		300,'India')
--insert into Product_Details values(204,'efg',40,3400,	70,'2021-12-01',1200,08,		400,'China')
--insert into Product_Details values(205,'efg',40,3400,	70,'2021-12-01',1200,08,		100,'USA')
--insert into Product_Details values(206,'efg',40,400,	70,'2021-12-04',1200,08,		300,'USA')

select * from Product_Details