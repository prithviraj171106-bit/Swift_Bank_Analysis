use kayreshemdya;

select*from transactions;

select avg(balance) from accounts;

select avg(amount) from transactions;

-- single row subquery
select*from transactions where amount > (select avg(amount) from transactions);

select accountID, accounttype, balance, customerID from accounts where balance > (select avg(balance) from accounts) order by balance desc;

-- multi-row subquery
select accountID, accounttype, balance, customerID from accounts where accountID in (select accountID from transactions where transactiontype = 'cash');

-- single row subquery with max() function
select accountID, accounttype,balance, customerID from accounts where balance =(select max(balance) from accounts);

-- lab 8 complited by me