use kayreshemdya;

select*from loans;

select loanID, customerID, loanamount, rank() over(order by loanamount desc) as loanrank from loans;

select loanID, customerID, loanamount, dense_rank() over(order by loanamount desc) as denserank from loans;

select loanID, customerID, loanamount, row_number() over(order by loanamount desc) as rownumber from loans;

select loanID, customerID, loanamount, row_number() over(partition by customerID order by loanamount desc) as rownum from loans;

select loanID, customerID, loanamount, sum(loanamount) over(order  by loanamount desc) as runningtotal from loans;

select loanID, customerID, loanamount, lag(loanamount) over(order by loanamount desc) as PreviousLaonamount from loans;

select loanID,customerID,loanamount, lead(loanamount) over(order by loanamount desc) as nextloanamount from loans;

-- lab 6 completed by me 
