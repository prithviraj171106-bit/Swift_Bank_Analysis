create table customers(customerID int, Firstname varchar(50), lastname varchar(50), email varchar(100), phone varchar (15));

drop table customers;

create table customers(customerID int primary key, Firstname varchar(50), lastname varchar(50), email varchar(100), phone varchar (15));

select*from customers;

describe table	customers;

create table accounts(accountID int, accounttype varchar(20), balance decimal(10, 2));

create table accounts(accountID int, accounttype varchar(20), balance decimal(10, 2));

create table transactions(transactionID int, transactiondate date, amount decimal(10, 2), transactiontype varchar(20));

create table branches(branchID int, branchname varchar(100), branchaddress varchar(200), branchphone varchar(15));

create table loans(loanID int, loanamount decimal(10, 2), interestrate decimal(5, 2));

create table transactions(transactionID int, transactiondate date, amount decimal(10, 2), transactiontype varchar(20));

create table accountbranches(assignmentdate date);

drop table loans;

create table loans(loanID int, loanamount decimal(10, 2), interestrate decimal(5, 2), startdate date, enddate date);

-- alter table loans drop column startdate 
alter table loans drop column startdate;

alter table loans drop column enddate;

-- alter table loans add colunn startdate datatype( date /not null/null)
alter table loans add column startdate date;

alter table loans add column enddate date;

alter table customers add column dateofbirth date;

alter table customers modify phone varchar(20);

alter table accounts add constraint chk_minibalance check(balance >= 1000);

drop table accountbranches;

alter table customers add primary key (customerID);

alter table customers drop primary key (customersID);

alter table customers drop column customerID;

alter table customers add column customerID int;

alter table customers add primary key (customerID);

alter table accounts add customerID int;

alter table accounts add constraint FK_Accounts_Customers foreign key (customerID) references customers(customerId);

select*from customers;

describe customers;

select*from accounts;

describe accounts;

alter table customers modify firstname varchar(50) not null;

alter table customers add constraint uq_email unique(email);

select*from branches;

describe branches;

-- 1. Accounts → Connect with Customers
-- Add a foreign key on CustomerID that references Customers(CustomerID).
alter table accounts add constraint ak_accounts_customers foreign key (customerID) references customers(customerID); 

-- 2. Accounts → Connect with Branches
-- Add a foreign key on BranchID that references Branches(BranchID).
alter table accounts add constraint ak_accounts_branches foreign key(branchID) references branches(branchID);

select*from branches;

alter table branches drop column branchID;

alter table branches add column branchID int;

describe accounts;

alter table accounts add column branchID int;

alter table branches add primary key (branchID);

-- 3. Transactions → Connect with Accounts
--  Add a foreign key on AccountID that references Accounts(AccountID).
describe transactions;

alter table transactions add column accountID int primary key;

alter table transactions add constraint vj_transaction_accounts foreign key(accountID) references accounts(accountId);

alter table accounts add primary key(accountId); 

-- 4.Loans → Connect with Customers
-- Add a foreign key on CustomerID that references Customers(CustomerID).

describe customers;

alter table loans add column customerID  int primary key;

alter table loans add constraint st_loans_customers foreign key(customerID) references customers(customerID);






