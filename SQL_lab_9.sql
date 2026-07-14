select*from transactions;

select avg(amount) from transactions;

select*from transactions where amount > ( select avg(amount) from transactions);

select*from accounts;

select avg(balance) from accounts;

select accountId,accounttype,balance,customerId from accounts where balance > (select avg(balance) from accounts ) order by balance desc;

select*from accounts; 

select accountID, accounttype, balance, customerId from accounts where accountId in(select accountId from transactions where transactiontype='deposit');
     
 select accountId, accounttype , balance customerId from accounts where balance = (select max(balance) from accounts);    

