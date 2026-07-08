use bankingDB;

select * from customers;

select firstname, lastname, email, phone from customers;

select * from accounts;

select*from Accounts where AccountType = "savings";

desc accounts;


select * from accounts where balance > 25000;

select*from accounts where balance Between 5000 and 20000;


select * from customers 
where CustomerID in (101,102,103);

select * from customers where 
firstname like 'r%';

select * from accounts where accountType = 'current';

select*from accounts where balance > 1500;

select* from transactions where amount between 1000 and 10000;

select * from customers where customerID in (104,106);

select * from customers where lastname like "s%";

select*from customers order by firstname asc;

select*from accounts order by balance desc;

select distinct accounttype from accounts;

select*from accounts order by balance desc limit 3;

select*from transactions limit 4 offset 1;

-- 1. Display customers sorted by LastName
select * from customers order by lastname ;

-- 2. Retrieve top 5 transactions with highest amount
select*from transactions order by amount asc limit 5;




-- 3. Display unique transaction types
select distinct transactiontype from transactions;

-- 4. Skip the first 3 transaction records and display the next 4 records
select*from transactions limit 4 offset 3;


select*from customers 
where phone is null;

select*from customers
where email is not null;


select*from customers 
where email is null;

select * from 
accounts where balance is not null;

SELECT AccountID, balance, case when balance >=50000 then "premium account" when balance >= 25000 then "Standard Account" else "basic Account" end as "account_category" from Accounts;

select transactionID, amount, case when amount >= 50000 then " High transaction" when amount >= 30000 then "medium transactions" else "low transaction" end as "Transaction category" from transactions;

select*from transactions;

insert into transactions values(203, 101, "2026-5-3",24000,"online"),(204,103, "2026-1-3",12000,"cash");
-- select accountID, balance, rank() over (order by balance desc) as balancerank from accounts;  

select accountid, balance, rank() over(order by balance desc) as balancerank from accounts;

select transactionID, Amount, sum(amount) over ( order by transactionDate ) as RunnigTotal from Transactions;

select transactionID, Amount, Avg(amount) over () as averagetransaction from Transactions;

select*from accounts;

select customerID, balance, rank() over(order by balance desc) as balance_rnk from Accounts;