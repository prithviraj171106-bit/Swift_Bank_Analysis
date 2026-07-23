use kayreshemdya;

select*from customers where firstname like "A%";

select*from customers where email like "%Gmail%";

select*from customers where lastname like "%kar";

-- ACTIVITYS

-- 1 Display customers whose first name starts with R
select*from customers where firstname like "R%";

-- 2 Find customers whose email contains yahoo
select*from customers where email like "%yahoo%";

select*from customers;
-- 3 Display customers whose last name starts with P
select*from customers where lastname like"P%";

-- 4 Search customers whose phone number ends with 99
select*from customers where phone like "%99";

select*from accounts where accounttype in ("savings","current");

select*from transactions where transactiontype in ('cash','online');

select*from transactions;

select*from customers where customerID in ('101','102','103');

-- ACTIVITYS

-- 1 Display accounts belonging to Salary and Savings account types
select*from accounts;
select*from accounts where accounttype in ('salary','savings');

-- 2 Retrieve transactions for Payment and Deposit categories
select*from transactions;
select*from transactions where TransactionType in ('card','online');

-- 3 Display customer records for CustomerID 103 and 104
select*from customers;
select*from customers where customerID in ('103','104');

-- 4 Retrieve selected account records using AccountID values
select*from accounts;
select*from accounts where AccountID in ('201','204');

select*from customers order by lastname asc;

select*from accounts order by balance desc;

select*from transactions order by transactiondate desc;

-- ACTIVITY

-- 1 Display customers sorted by FirstName
select*from customers;
select*from customers order by firstname;

-- 2 Display accounts sorted by AccountType
select*from accounts;
select*from accounts order by AccountType;

-- 3 Display transactions sorted by Amount in descending order
select*from transactions;
select*from transactions order by amount desc;

-- 4 Display customers sorted by DateOfBirth
select*from customers;
select*from customers order by DateOfBirth desc;

select*from accounts order by Balance desc limit 5;

select*from customers limit 3;

select*from transactions limit 5 offset 3;

select*from transactions;

select*from accounts;

select*from transactions order by amount desc limit 3;

select*from customers limit 4;

select*from accounts limit 5 offset 2;

select*from transactions ;
select*from transactions order by transactiondate desc limit 5;

select*from accounts where accounttype = 'savings' order by balance desc;

select*from customers where firstname like 'S%' limit 5;

select*from transactions where transactiontype in ('card','cash') order by TransactionDate desc;

-- lab4 completed by me