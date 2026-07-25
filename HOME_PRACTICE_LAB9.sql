use kayreshemdya;

-- create view
create view High_Balance_Accounts as select accountID, accounttype,balance, customerID from accounts where balance > 30000;

select*from High_Balance_Accounts;

-- create or replace view
create or replace view High_Balance_Accounts as select a.accountID, a.accounttype, a.balance, a.customerID, t.transactionID, t.transactiondate, t.transactiontype, t.amount from accounts a inner join transactions t on a.accountID = t.accountID where a.balance > 30000; 

select accountID, accounttype, balance, customerID, transactionID, transactiondate, transactiontype, amount from High_Balance_Accounts order by balance desc;

-- lab 9(lab 10) completed by mee.