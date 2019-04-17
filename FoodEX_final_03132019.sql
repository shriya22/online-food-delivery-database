ALTER TABLE `Address` DROP FOREIGN KEY `has`;
ALTER TABLE `Payment` DROP FOREIGN KEY `makes`;
ALTER TABLE `Order` DROP FOREIGN KEY `pays`;
ALTER TABLE `Order` DROP FOREIGN KEY `places`;
ALTER TABLE `Free_Delivery_Pass_FDP` DROP FOREIGN KEY `subscribes`;
ALTER TABLE `Feedback` DROP FOREIGN KEY `provides`;
ALTER TABLE `Items_ordered` DROP FOREIGN KEY `contains`;
ALTER TABLE `Order` DROP FOREIGN KEY `delivers`;
ALTER TABLE `Items_ordered` DROP FOREIGN KEY `ordered from`;
ALTER TABLE `Menu_items` DROP FOREIGN KEY `consists`;



DROP TABLE `Address`;
DROP TABLE `Customer`;
DROP TABLE `Payment`;
DROP TABLE `Free_Delivery_Pass_FDP`;
DROP TABLE `Delivery_Exec`;
DROP TABLE `Feedback`;
DROP TABLE `Restaurant`;
DROP TABLE `Menu_items`;
DROP TABLE `Items_ordered`;
DROP TABLE `Order`;

CREATE TABLE `Address` (
`address_id` varchar(255) NOT NULL,
`cust_id (FK)` integer(11) NOT NULL,
`address_label` char(20) NULL,
`address_line1` varchar(255) NOT NULL,
`city` char(20) NOT NULL,
`state` char(20) NOT NULL,
`pincode` integer(10) NOT NULL,
PRIMARY KEY (`address_id`)
);

Select * from Address;

CREATE TABLE `Customer` (
`cust_id` integer(11) NOT NULL,
`cust_name` char(20) NOT NULL,
`cust_phone` numeric(22,0) NOT NULL,
`cust_birthdate` date NULL,
`cust_email` varchar(255) NULL,
`registration_date` datetime NOT NULL,
`cust_type` boolean NULL,
`cust_user` boolean NOT NULL,
`cust_anniversary` date NULL,
`cust_overall_rating` float(10,2) NULL,
`fdp_id (FK)` varchar(11) NULL,
PRIMARY KEY (`cust_id`)
);

Select * from Customer;

CREATE TABLE `Payment` (
`payment_id` varchar(255) NOT NULL,
`cust_id (FK)` integer(11) NOT NULL,
`payment_method_type` char(20) NULL,
PRIMARY KEY (`payment_id`)
);

Select * from Payment;

CREATE TABLE `Free_Delivery_Pass_FDP` (
`fdp_id` varchar(255) NOT NULL,
`status_id` boolean NOT NULL,
`cust_id` integer(11) NOT NULL,
`fdp_status_time` datetime NOT NULL,
`fdp_reg_time` datetime NOT NULL,
PRIMARY KEY (`fdp_id`)
);

Select * from Free_Delivery_Pass_FDP;

CREATE TABLE `Delivery_Exec` (
`delivery_exec_id` varchar(255) NOT NULL,
`name` char(50) NOT NULL,
`designation` char(50) NOT NULL,
`vehicle_type` varchar(50) NOT NULL,
`vehicle_details` varchar(50) NOT NULL,
`SSN` varchar(20) NOT NULL,
`age` integer(3) NULL,
`years_of_service` float(10,2) NULL,
`deliv_exec_overall_rating` float(10,2) NULL,
PRIMARY KEY (`delivery_exec_id`)
);

Select * from Delivery_Exec;

CREATE TABLE `Feedback` (
`feedback_id` varchar(255) NOT NULL,
`order_id (FK)` varchar(255) NOT NULL,
`rated_person` char(20) NULL,
`rating` integer(10) NULL,
`comments` varchar(255) NULL,
PRIMARY KEY (`feedback_id`)
);

Select * from Feedback;

CREATE TABLE `Restaurant` (
`rest_id` varchar(255) NOT NULL,
`restaurant_name` char(50) NOT NULL,
`address` varchar(255) NOT NULL,
`price_min` float(20,2) NULL,
`price_max` float(20,2) NULL,
`rest_overall_rating` float(20,2) NULL,
`type` char(50) NULL,
`opening_time` time NULL,
`closing_time` time NULL,
PRIMARY KEY (`rest_id`)
);
Select * from Restaurant;

CREATE TABLE `Menu_items` (
`item_id` varchar(255) NOT NULL,
`rest_id (FK)` varchar(255) NOT NULL,
`cusine_type` varchar(255) NULL,
`menu_section_type` varchar(255) NULL,
`item_name` varchar(255) NOT NULL,
`price` float(10,2) NOT NULL,
`menu_id` varchar(255) NOT NULL,
`menu_section_id` varchar(255) NOT NULL,
PRIMARY KEY (`item_id`)
);

Select * from Menu_items;

CREATE TABLE `Items_ordered` (
`item_id (FK)` varchar(255) NOT NULL,
`order_id (FK)` varchar(255) NOT NULL,
`quantity` integer(11) NULL,
`amount` float(20,2) NULL
);

Select * from Menu_items;

CREATE TABLE `Order` (
`order_id` varchar(255) NOT NULL,
`cust_id(FK)` integer(11) NOT NULL,
`number_of_items` integer(50) NULL,
`location` varchar(255) NOT NULL,
`address_id (FK)` varchar(255) NOT NULL,
`total_amount` float(10,2) NULL,
`order_instructions` varchar(255) NULL,
`order_type` boolean NULL,
`order_source` boolean NULL,
`order_start_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`delivery_exec_id(FK)` varchar(255) NOT NULL,
`payment_id(FK)` varchar(255) NOT NULL,
`order_placed` boolean NULL,
`order_placed_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`order_confirmed` boolean NULL,
`order_confirmed_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`order_picked` boolean NULL,
`order_picked_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`order_delivered` boolean NULL,
`order_delivered_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`expected_delivery_time` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`order_id`)
);

Select * from FOODEX.Items_ordered;

Insert into FOODEX.Items_ordered values ("I001","A001",2,19.9),
("I002","A001",1,6.95),
("I010","A002",1,9.99),
("I012","A002",1,7.99),
("I013","A002",2,23.98),
("I014","A003",2,25.9),
("I015","A003",2,23.9),
("I017","A003",1,19.95),
("I017","A004",1,19.95),
("I018","A004",1,12.95),
("I027","A005",1,10.5),
("I029","A005",1,12.5),
("I027","A006",1,10.5),
("I029","A006",1,12.5),
("I030","A006",1,8.5),
("I005","A007",2,11.9),
("I008","A007",2,27.98),
("I058","A008",2,31.98),
("I060","A008",1,14.99),
("I063","A008",1,13.99),
("I064","A008",1,12.99),
("I007","A018",1,15),
("I020","A017",2,15.9),
("I021","A017",1,8.95),
("I011","A016",1,20.99),
("I001","A015",1,9.95),
("I002","A015",1,6.95),
("I003","A015",1,7.95),
("I065","A014",15,299.85),
("I071","A013",3,20.85),
("I072","A013",2,15.9),
("I050","A012",2,15.98),
("I052","A012",2,39.98),
("I058","A009",2,31.98),
("I059","A009",2,33.98),
("I060","A009",1,14.99),
("I064","A009",1,12.99),
("I069","A010",15,269.25),
("I070","A010",20,439),
("I059","A011",1,16.99),
("I060","A011",1,14.99),
("I010","A019",1,9.99),
("I011","A019",1,20.99),
("I012","A019",1,7.99),
("I014","A020",1,11.99),
("I015","A020",1,12.95),
("I016","A020",1,11.95),
("I009","A021",1,7.99),
("I010","A021",1,9.99),
("I011","A021",1,20.99),
("I012","A021",1,7.99),
("I013","A021",1,11.99),
("I001","A022",2,19.9),
("I002","A023",2,13.9),
("I007","A024",3,45),
("I028","A025",2,17.98),
("I029","A025",2,25),
("I066","A026",5,99.95),
("I052","A027",2,39.98),
("I053","A027",2,45.98),
("I054","A027",2,17.9),
("I066","A028",45,899.55),
("I060","A029",2,29.98),
("I058","A030",1,15.99),
("I059","A030",1,16.99),
("I060","A030",1,14.99),
("I061","A030",1,14.99),
("I048","A031",5,44.5),
("I070","A032",15,329.25),
("I009","A033",3,23.97),
("I059","A034",1,16.99),
("I034","A035",10,150),
("I069","A036",20,359),
("I070","A037",15,329.25),
("I069","A038",10,179.5),
("I070","A039",30,658.5),
("I023","A040",2,31.9),
("I024","A041",1,17.95),
("I002","A042",2,19.9),
("I003","A042",2,13.9),
("I007","A043",1,15),
("I008","A043",1,13.99),
("I009","A044",1,7.99),
("I069","A045",10,179.5),
("I009","A046",3,23.97),
("I007","A047",1,15),
("I008","A047",1,13.99),
("I007","A048",1,15),
("I002","A049",2,19.9),
("I003","A049",2,13.9),
("I020","A050",5,39.75),
("I021","A051",1,8.95),
("I022","A052",4,47.8),
("I023","A053",4,63.8),
("I033","A054",3,36),
("I034","A054",3,45),
("I040","A055",2,51),
("I041","A056",2,40),
("I042","A057",1,20.99),
("I043","A058",2,31),
("I044","A059",3,32.97),
("I048","A060",4,35.6),
("I049","A061",1,10.5),
("I050","A062",3,23.97),
("I051","A063",2,25.98),
("I052","A064",4,79.96),
("I053","A065",6,137.94),
("I069","A066",20,359),
("I021","A067",7,62.65),
("I022","A068",2,23.9),
("I023","A069",4,63.8),
("I024","A070",1,17.95),
("I025","A071",4,71.8),
("I026","A072",3,62.85),
("I027","A073",3,31.5),
("I028","A074",3,26.97),
("I029","A075",2,25),
("I058","A076",2,31.98),
("I059","A077",4,67.96),
("I060","A078",5,74.95),
("I061","A079",4,59.96),
("I062","A080",2,27.98),
("I024","A018",1,17.95);




ALTER TABLE `Address` ADD CONSTRAINT `has` FOREIGN KEY (`cust_id (FK)`) REFERENCES `Customer` (`cust_id`);
ALTER TABLE `Order` ADD CONSTRAINT `places` FOREIGN KEY (`cust_id(FK)`) REFERENCES `Customer` (`cust_id`);
ALTER TABLE `Free_Delivery_Pass_FDP` ADD CONSTRAINT `subscribes` FOREIGN KEY (`cust_id`) REFERENCES `Customer` (`cust_id`);
ALTER TABLE `Feedback` ADD CONSTRAINT `provides` FOREIGN KEY (`order_id (FK)`) REFERENCES `Order` (`order_id`);
ALTER TABLE `Items_ordered` ADD CONSTRAINT `contains` FOREIGN KEY (`order_id (FK)`) REFERENCES `Order` (`order_id`);
ALTER TABLE `Order` ADD CONSTRAINT `delivers` FOREIGN KEY (`delivery_exec_id(FK)`) REFERENCES `Delivery_Exec` (`delivery_exec_id`);
ALTER TABLE `Items_ordered` ADD CONSTRAINT `ordered from` FOREIGN KEY (`item_id (FK)`) REFERENCES `Menu_items` (`item_id`);
ALTER TABLE `Menu_items` ADD CONSTRAINT `consists` FOREIGN KEY (`rest_id (FK)`) REFERENCES `Restaurant` (`rest_id`);




#	ANALYSIS OF ORDERS:
Select * from FOODEX.ORDER;

#What are the most frequently ordered cuisines?

Select M.cusine_type,count(I.`order_id (FK)`) as `count` 
from Items_ordered I inner join Menu_items M
on I.`item_id (FK)` = M.item_id 
group by M.cusine_type order by `count`  ;

#Identifying 5 locations with greatest number of orders ? 

Select a.pincode,a.city,avg(o.total_amount) AS 'AVERAGE AMOUNT', count(o.order_id) AS 'NUMBER OF ORDERS' 
from Address a inner join `Order` o
on a.address_id = o.`address_id (FK)`
group by a.city,a.pincode
order by 2 asc,1 desc
LIMIT 5;


#What is the distribution of orders based on day of week ?
Select DAYOFWEEK(order_start_time),count(order_id) from `Order` group by DAYOFWEEK(order_start_time)
order by DAYOFWEEK(order_start_time);



#What is the distribution of orders based on day of week ?
Select DAYOFWEEK(order_start_time),count(order_id) from `Order` group by DAYOFWEEK(order_start_time)
order by DAYOFWEEK(order_start_time);

#What is the proportion of orders based on source?
Select AVG(order_source) from `Order`;

#What is the proportion of orders based on payment type?
Create view Prop_orders_new AS 
select count(case when `payment_id(FK)` not in ('P-COD') then 1 else NULL end) as Online_Payments,
count(case when `payment_id(FK)` IN ('P-COD') then 1 else NULL end) as Cash_On_Delivery
from `Order`;

Select Online_Payments,Cash_On_Delivery,(Online_Payments / (Online_Payments + Cash_On_Delivery )) AS Prop_OL,  
(Cash_On_Delivery / (Online_Payments + Cash_On_Delivery )) AS Cash_OL from Prop_orders_new;


## ANALYSIS OF CUSTOMERS:


#What is the customer acquisition per month?
Select month(registration_date) as monthly_cust,replace(replace(cust_type,1,'INDIVIDUAL'),0,'BUSINESS')as cust_type,
count(cust_id) from Customer where cust_user = 1 
group by monthly_cust,cust_type order by 1 asc;


#Identifying inactive customers 
Create view Cust_activity as
Select c.cust_id, max(order_placed_time) as Latest_order_time , max(c.registration_date ) AS reg_date
from Customer c Left join `Order` o 
On c.cust_id = o.`cust_id(FK)`
Group by (c.cust_id);


Create table Inactive_customers (cust_id int(11));

DELIMITER $$
Create Procedure cust_inactive2 ()
Insert into Inactive_customers select cust_id from Customer where cust_id In
(Select cust_id from  Cust_activity where Latest_order_time is null and (Year(SYSDATE()) - Year(reg_date)) > 2);
Insert into Inactive_customers select cust_id from Customer where cust_id In
(Select cust_id from Cust_activity where Latest_order_time is not null and Year(SYSDATE())-Year(Latest_order_time)  > 2);
$$

DELIMITER $$
Call cust_inactive2();
$$

## Creating a back-up for the records updated in customer master table:


DELIMITER $$
Create table Customer_updated (Inactive_cust_id integer(11) NOT  NULL,
inactive_cust_name char(20)  NULL,
inactive_cust_phone numeric(22,0)  NULL,
inactive_cust_birthdate date NULL,
inactive_cust_email varchar(255) NULL,
inactive_registration_date datetime  NULL,
inactive_cust_type boolean NULL,
inactive_cust_user boolean  NULL,
inactive_cust_anniversary date NULL,
inactive_cust_overall_rating float(10,2) NULL,
`inactive_fdp_id (FK)` varchar(11) NULL
);
$$

DELIMITER $$ 
Create trigger update_cust_trig After Update on Customer for each row 
begin
insert into Customer_updated values (old.cust_id,old.cust_name,old.cust_phone,old.cust_birthdate,old.cust_email,
old.registration_date,old.cust_type,old.cust_user,old.cust_anniversary,old.cust_overall_rating,old.`fdp_id (FK)`);
end$$
DELIMITER ;

set SQL_SAFE_UPDATES =0;
Update Customer 
set cust_name = 'Rachel'
where cust_id = 2;


# To find bounced rate of current customers: Ratio of inactive customers to total customers
select
(((select count(c.cust_id) as inactive_customers
from customer c
where c.cust_user = 1 and c.cust_id not in (
select o.`cust_id(FK)`
from `order` O
))/
(select count(c.cust_id) from customer c))*100) as bounced_rate_in_percent
from dual;

# To identify the list of inactive customers with their phone numbers to send any targeted marketing messages
select distinct c.cust_name as customer_name , c.cust_phone as customer_phone_number
from customer c
where c.cust_user = 1 and c.cust_id not in (
select o.`cust_id(FK)`
from `order` O
);


## Analysis on Performance of Delivery executives

drop view orderfeedback;

create view orderfeedback as 
select  o.`delivery_exec_id(FK)`,order_start_time,order_placed_time,order_confirmed_time,
order_picked_time,order_delivered_time,expected_delivery_time,f.rated_person,f.rating from `order` o
inner join feedback f on o.order_id=f.`order_id (FK)` and f.rated_person='D';


create table deliv_timeline as 
select `delivery_exec_id(FK)`,sec_to_time(avg(time_to_sec(TIMEDIFF(expected_delivery_time,order_delivered_time))))as 
timedif,rating,'performance' as Description
from orderfeedback group by 1,3
union
select `delivery_exec_id(FK)`,sec_to_time(avg(time_to_sec(TIMEDIFF(order_picked_time,order_confirmed_time))))as timedif,rating,
'restaurant prep time'
from orderfeedback group by 1,3
union 
select `delivery_exec_id(FK)`,sec_to_time(avg(time_to_sec(TIMEDIFF(order_delivered_time,order_picked_time))))as timedif,rating,
'actual deliv time'
from orderfeedback group by 1,3
order by 1
;


alter table deliv_timeline add column `rate` float(20,2);

SET SQL_SAFE_UPDATES = 0;

update  deliv_timeline set rate = (case when timedif>0 then 1 else 0 end)where description='performance';

#select * from deliv_timeline1 ;#where description='performance';

create table deliv_timeline1 select * from deliv_timeline  where Description='performance' ;
alter table deliv_timeline1 add column `performance_rating` float(20,2);

select * from deliv_timeline1;

update deliv_timeline1 set `performance_rating`=
if(rate=0,if(minute(timedif)>20 ,1,
if(minute(timedif) between 15 and 20,2,
if(minute(timedif) between 10 and 15,3,4))),5) ;


