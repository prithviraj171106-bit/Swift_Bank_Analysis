use kayreshemdya;

select*from customers;

select firstname, lastname, email, phone from customers;

select *from accounts;

-- Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance.
select accountID, accounttype, balance from accounts;

select*from accounts where accounttype ='savings';

select*from accounts where balance > 25000;

select*from transactions;

select*from transactions where amount between 5000 and 20000;

select*from customers where customerID in (101,102,103);

select*from customers where firstname like 'r%';

-- Retrieve all current account records
select*from accounts;

-- Find accounts with balance less than 15000
select*from accounts where balance <15000;

-- Display transactions between 1000 and 10000
select*from transactions where amount between 1000 and 10000;

-- Retrieve customer records for CustomerID 104 and 105
select*from customers where customerId ='101';
select*from customers where CustomerID='105';

select*from customers where customerID in ('104','105');

-- Display customers whose last name starts with S
select*from customers;

select*from customers where lastname like's%';

use kayreshemdya;

select*from customers order by firstname asc;

select*from accounts order by balance desc;

select distinct accounttype from accounts;

select*from accounts order by balance desc limit 3;

select*from transactions limit 5 offset 2;

select*from customers  order by LastName;

select*from customers order by lastname asc;

select*from transactions order by amount asc;

select*from transactions order by amount desc limit 5;

select*from transactions;

select distinct transactiontype from transactions;

select *from transactions order by amount desc limit 4 offset 3;

select*from customers where phone is null;

select *from customers where email is not null;

select*from customers order by CustomerID asc;

select*from customers where email is null;

select*from accounts where balance is not null;

show tables;

select*from branches;

select*from accounts;

select accountId, balance, case when balance >=50000 then 'premium account' when balance >=25000 then 'standard account' else 'basic account' end as accountcategory from accounts;

select*from transactions;

select transactionId, amount, case when amount >=50000 then 'high transactions' when amount>= 20000 then 'medium transaction' else 'low transaction' end as transactioncategory from transactions;

select*from accounts;

select accountID,balance, rank() over( order by balance desc) as balancerank from accounts;

select*from transactions;

select transactionID, amount, sum(amount) over(order by transactiondate) as runningtotal from transactions;

select*from transactions;

select transactionID, amount, avg(amount) over() as avgtransaction from transactions;

select*from accounts;

select accountID,balance, rank() over( order by balance desc) as accountbalancerank from accounts;

select accountId, balance, sum(balance) over(order by accountID) as running_total from accounts;

select transactionId, amount, max(amount) over() as maximum_transaction_amount from transactions;

-- end of lab 3  

 




