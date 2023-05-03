select * from manager1;

-- finding second maximum salary from manager1
select name, salary from manager1 order by salary desc limit 2,1;
-- -----------------------join--------------

 create table order1(order_id int,order_datae date,customer_id int);
 create table customer1(cus_id int,cus_name varchar(29),contact_name varchar(20),country varchar(30));
 
 insert into order1 values(110,'2023-5-1',200),(111,'2023-5-2',205),
 (123,'2023-4-25',204), (153,'2023-1-24',207), (124,'2023-3-5',231);
 select * from order1;
 insert into customer1 values(200,"Dileep","Kumar",'India'),
 (220,"Surya","Zubair",'Uk'),(205,"Nandini","Viggu",'Russia'),
 (231,"Sudhrashan","Shanthan",'China');
  select * from customer1;
  
  select * from order1;
  
  -- join
  select order1.order_id, customer1.cus_name, order1.order_datae from order1 
  inner join customer1 on order1.customer_id=customer1.cus_id;
  
  
  create table staff(
  id int,
  name varchar(30),
  age int,
  package int);
  
  create table payment(
  id int,
  date date,
  staff_id int,
  amount int);
  
  insert into staff values(201, "vinay", 20, 200000),(202, "vamsi", 20, 200000),
  (203, "chaintnya", 18, 200000), (204, "ram", 22, 240000), (204,"sohail",23, 340000);
  
  insert into payment values(900, '2023-05-12', 204, 200000), (901, '2023-05-13', 201, 200000),
  (902, '2023-05-15', 203, 240000);
  
  select s.id, name,age,amount from staff s, payment p where s.id=p.staff_id;
  
  select * from orders;
  ALTER TABLE ORDER1 ADD SHIPPING_ID INT;
UPDATE ORDER1 SET SHIPPING_ID=1234 WHERE ORDER_ID=110;
UPDATE ORDER1 SET SHIPPING_ID=8888 WHERE ORDER_ID=111;
UPDATE ORDER1 SET SHIPPING_ID=7777 WHERE ORDER_ID=123;
UPDATE ORDER1 SET SHIPPING_ID=8589 WHERE ORDER_ID=153;
UPDATE ORDER1 SET SHIPPING_ID=4444 WHERE ORDER_ID=124;
UPDATE ORDER1 SET SHIPPING_ID=5555 WHERE ORDER_ID=115;
  create table shipping(
  shipping_id int,name varchar(30));
  
  insert into shipping values(1234, "xxx"),(8888,"Express"),(7777,"zzzz"),(8598,"sss");
  
  select order1.order_id,customer1.cus_name,shipping.name from
  ((order1 inner join customer1 on order1.customer_id=customer1.cus_id)
  inner join shipping on order1.shipping_id = shipping.shipping_id);
  
  
  -- left join of order1 and customer tables
  select customer1.cus_name,order1.order_id from customer1 left join order1 on customer1.cus_id=order1.customer_id;
