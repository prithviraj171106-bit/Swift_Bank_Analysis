use kayreshemdya;

desc accounts;

select*from branches;

desc branches;

alter table branches add constraint primary key (branchID);

select *from accounts;

update accounts set branchID = 501 where accountID = 201;

update accounts set branchID = 502 where accountID = 202;

update accounts set branchID = 503 where accountID = 203;

update accounts set branchID = 504 where accountID = 204;

update accounts set branchID = 505 where accountID = 205;

alter table accounts add constraint FK_account_branches foreign key (branchID) references branches(branchID);

desc accounts;

desc branches;

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiondate, t.transactiontype, t.amount from accounts a inner join transactions t on a.accountID = t.accountId;

select *from customers;

select*from accounts;

insert into accounts (accountID, accounttype, balance, customerID, branchID) values('202','savings','50000','102','502');

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiondate, t.transactiontype, t.amount from accounts a left join transactions t on a.accountID = t.accountId;

select*from transactions;

insert into transactions(transactionID, transactiondate, amount, transactiontype, accountID) values('302','2025-05-02','10000','cash','202');

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiondate, t.transactiontype, t.amount from accounts a inner join transactions t on a.accountID = t.accountID where t.transactiontype = 'card';

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiondate, t.transactiontype, t.amount from accounts a inner join transactions t on a.accountID = t.accountID where t.transactiontype = 'cash';

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiondate, t.transactiontype, t.amount from accounts a inner join transactions t on a.accountID = t.accountID where t.transactiontype = 'online';

select a.accountID, a.accounttype, a.balance, t.transactionId, t.transactiondate, t.transactiontype, t.amount from accounts a inner join transactions t on a.accountID = t. accountID where a.balance > 30000 order by a.balance desc;

-- lab 7 completed by mee