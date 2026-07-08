use bankingdb;

select firstname, upper(firstname) as upper_case from customers;

select firstname, lower(firstname) as lower_case from customers;

select firstname, length(firstname) as length_name from customers;

select firstname, left(firstname,3) as initials from customers;

select firstname, right(firstname,3) as ending_3 from customers;

select concat(firstname,"-",lastname) as full_name from customers;

select round(3434.23) as rounded;

select ceil(1256.25) as ceiling_values;

select floor(1256.98) as floor_value;

select abs(-2500) as absolute_values;

select mod(25,4) as remainder;

select*from customers;

select curdate();

select now();

select dateofbirth, year(dateofbirth) as birth_year from customers;

select dateofbirth, month(dateofbirth) as month_year from customers;

select dateofbirth, datediff(curdate(), dateofbirth) as days from customers;

select firstname,dateofbirth,if( year(dateofbirth) <=1995, "adult", "young") as age_category from customers;

select firstname, ifnull(phone,"not available") as phone_number from customers;

select*from customers;

insert into customers(customerID, firstname, lastname,email, accountcreationdate, dateofbirth) values(110,"sukha", "patil", "motarakis@gmail.com","2000-04-03","1978-08-07");

select*from customers;

select greatest(1999-02-09,
"1999-02-09",
"1978-08-05",
"1947-08-23",
"2002-03-30",
"2001-04-09",
"1999-02-09",
"2001-02-11",
"1978-08-07") as latest_date; 

select least(1999-02-09,
"1999-02-09",
"1978-08-05",
"1947-08-23",
"2002-03-30",
"2001-04-09",
"1999-02-09",
"2001-02-11",
"1978-08-07") as latest_date; 

select firstname, nullif(firstname, "Priya") as result from customers;

select firstname, nullif(firstname, "nishant") as result from customers;

select sum(balance) as total_balance from accounts;

select avg(balance) as average_balance from accounts;

select max(balance) as highest_balance from accounts;

select min(balance) as lowest_balance from accounts;

select count(*) as total_accounts from accounts;

select* from accounts where balance = ( select max(balance) from accounts);

 select accounttype, sum(balance) as type_balance from accounts group by accounttype;
  
  select * from customers;
   
   select*from accounts;
   
    select accounttype, sum(balance) as type_balance from accounts group by accounttype having sum(balance) > 25000; 

   
  

