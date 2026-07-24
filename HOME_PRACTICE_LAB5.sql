use kayreshemdya;

select*from customers;

select firstname, upper(firstname) as uppercasename from customers;

select firstname, lower(firstname) as lowercasename from customers;

select firstname, length(firstname) as namelength from customers;

select firstname, left(firstname,3) as initials from customers;

select concat(firstname,'-',lastname) as fullname from customers;

 select round(1256.75) as rounded_value; --
 
 select ceil(1256.25) as ceiling_value; --  samllest integer value

 select floor(1256.75) as floor_value; -- largest integer value
 
 select abs(-2500) as absolute_value; -- returns absolute (positive) value of a number
 
 select mod(25,4) as remainder; -- returns the remainder
 
 select*from customers;
 
 select curdate(); -- displays current date only
 
 select now();  -- displays current date and time
 
 select customerID, year(dateofbirth) as birth_year from customers; -- displays birth year 
 
 select customerID, month(dateofbirth) as birth_month from customers; -- displays birth month
 
 select customerID, datediff(curdate(),dateofbirth) as days from customers; -- displays number of days since birth
 
 select firstname,dateofbirth, if(year(dateofbirth) <=1995, 'adult','young') as category from customers; -- categories customers as adult or young 
 
 select firstname, ifnull(phone,'not available') as phonenumber from customers; -- displays accounts with not available phone number
 
 select*from customers;
 
 select greatest('1998-04-15','2012-03-04','1997-08-07','1992-04-03','1991-02-03') as latestbirthdate; -- displays latest born person 
 
 select least('1998-04-15','2012-03-04','1997-08-07','1992-04-03','1991-02-03') as earliestbirthdate; -- displays the oldest born
 
 select firstname, nullif(firstname,"nishant") as result from customers; -- compare two customer names
 
 select sum(balance) as total_balance from accounts; -- displays total balance accross all customers
 
 select avg(balance) as average_balance from accounts;
 
 select max(balance) as hightest_balance from accounts; -- diplays hightest balance
 
 select min(balance) as lowest_balance from accounts; -- displays lowest balance from accounts
 
 select*from accounts;
 
 select count(*) as total_accounts from accounts; -- displays total accounts in the bank
 
 select*from accounts;
 
 select accounttype, sum(balance) as totalbalance from accounts group by accounttype; -- displays total account balnce for each account type by using group by 
 
 select accounttype, sum(balance) as totalbalance from accounts group by accounttype having sum(balance) > 25000; -- displays accounts whose accounttype sum of balance is greater than 25000
 
 -- lab 5 completed by me 