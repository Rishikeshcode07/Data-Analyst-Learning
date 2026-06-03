/* HAVING CLAUSE */

Select * from sales_db

--Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product
select 
ProductID,
sum(TotalAmount) "Sum of Sales",
sum(Quantity) "Total Quantity",
avg(TotalAmount) "Avg Amount",
avg(Quantity) "Avg Quantity"
from public.sales_db
group by 
ProductID
having sum(TotalAmount)<700 and sum(Quantity) = 21


select * from public.sales_db
where TotalAmount>=161

select * from public.sales_db

select productid, sum(totalamount) "Sum of sales" from public.sales_db
group by ProductID
having sum(totalamount)<700

select productid,sum(totalamount) "Sum of sales" from public.sales_db
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCTid desc

select productid,sum(totalamount) "Sum of sales" from public.sales_db
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by sum(totalamount) asc