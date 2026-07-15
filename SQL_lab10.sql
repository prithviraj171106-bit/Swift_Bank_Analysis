create view High_balance_Accounts as select accountID, accounttype, balance, customerId from accounts where balance > 30000;

select*from accounts;

select*from High_Balance_Accounts;

create or replace view High_balance_Accounts as select a.accountId, a.accounttype, a.balance, a.customerId, t.transactionId, t.transactiondate, t.transactiontype, t.amount from accounts a inner join transactions t on a.accountId=t.accountId where a.balance > 30000;

use bankingdb;

select accountID, accounttype, balance cutomerID, transactionID,transactiondate, transactionType,amount from High_Balance_Accounts order by balance desc; 
 