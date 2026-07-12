use bankingdb;

select*from accounts;

select*from transactions;

describe transactions;

insert into transactions(transactionID, accountId, transactiondate, amount, transactiontype) values(101,203,'2025-05-09',50000.36,'card'),(102,203,'2025-08-09',40000.56,'deposit'),(103,205,'2025-05-07',30000.36,'card'),(104,206,'2024-09-08',70000.57,'deposit');

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiontype, t.transactiondate, t.amount from accounts a inner join transactions t on a.accountId=t.accountID; 

insert into accounts values(207,108,'sallary',30000);

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiontype, t.transactiondate, t.amount from accounts a left join transactions t on a.accountId=t.accountID; 

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiondate, t.amount from accounts a inner join transactions t on a.accountID=t.accountID where t.transactiontype = "deposit";

select a.accountID, a.accounttype, a.balance, t.transactionID, t.transactiontype, t.transactiondate, t.amount from accounts a left join transactions t on a.accountId=t.accountID where a.balance > 30000 order by a.balance desc;

update transactions set transactiontype = "withdrawl" where transactionID = 101;

update transactions set transactiontype = "withdrawl" where transactionID = 103;
 



