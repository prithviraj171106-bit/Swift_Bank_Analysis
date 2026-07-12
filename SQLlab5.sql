use bankingdb;

select * from customer where FirstName like "A%";

select*from customers where email like "%gmail%";

select*from customers where  lastname like "%kar";


select*from customers where firstname like "r%";


select*from customers where email like "%yahoo%";


select*from customers where lastname like "p%";


select*from customers where phone like "%99";


select*from accounts where accounttype in("savings","current");
desc accounts;

select*from transactions where transactiontype in ("deposite","withdrawl");
select*from transactions;

update transactions set TransactionType = "withdrawal" where transactiontype="online";
use bankingdb;
update transactions set transactiontype = "deposite" where transactiontype = "cash";
select * from customers;
select*from customers where CustomerID in (101,103,105);

select*from accounts where accounttype in ("savings","salary");

select*from transactions where transactiontype in ("payment","deposit");

select*from customers where customerID in (103,104);

select*from accounts where customerID in (103,104);
select*from accounts;

select*from accounts where accountID in (201,202,203);

select*from customers order by lastname asc;

select*from accounts order by balance desc;

select*from transactions order by transactiondate desc;

select*from customers order by firstname asc;

select*from accounts order by accounttype asc;

select * from transactions order  by amount desc;

select*from customers order by dateofbirth asc;

select*from accounts order by balance desc limit 4;

select * from customers limit 3;

select * from transactions limit 5 offset 3;

select* from transactions order by amount desc;

select* from transactions order by amount desc limit 3;

select*from accounts limit 3 offset 2;

select * from transactions order by transactiondate desc limit 5;

select * from accounts where accounttype = "savings" order by balance desc;

select*from customers where firstname like 's%' limit 5;

select*from transactions where transactiontype in ("deposit","withdrawal") order by transactiondate desc;

 select*from transactions;

