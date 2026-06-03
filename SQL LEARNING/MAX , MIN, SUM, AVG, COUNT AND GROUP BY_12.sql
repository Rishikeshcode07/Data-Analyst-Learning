/* MAX ,MIN,SUM, AVERAGE, COUNT AND GROUP BY */

-- Creating a table with more columns, including a varchar column
CREATE TABLE sales_db (
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    StoreID INT,
    SalespersonID INT,
    PaymentMethod VARCHAR(50)  -- New varchar column for payment method
);

-- Inserting more sample data (10 records), including NULL values
INSERT INTO sales_db (ProductID, SaleDate, Quantity, TotalAmount, CustomerID, StoreID, SalespersonID, PaymentMethod)
VALUES 
(1, '2023-08-01', 10, 200.00, 101, 1, 201, 'Credit Card'),
(2, '2023-08-01', 5, 150.00, 102, 1, 202, 'Cash'),
(1, '2023-08-02', 8, 160.00, 103, 2, 203, 'Credit Card'),
(2, '2023-08-02', 7, 210.00, 104, 2, 204, 'Cash'),
(1, '2023-08-03', 6, 120.00, 105, 1, 201, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-04', 12, 300.00, 106, 3, 205, 'Credit Card'),
(1, '2023-08-04', 5, 100.00, 107, 3, 206, 'Debit Card'),
(2, '2023-08-05', 9, 270.00, 108, 1, 202, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-05', 15, 375.00, 109, 3, 207, 'Cash'),
(1, '2023-08-06', 7, 140.00, 110, 2, 203, 'Credit Card');

Select * from sales_db

-- HOW TO CHECK THE MAX VALUES IN TOTAL AMOUNT COLUMN
Select max(totalamount) "Maximum Amount" from public.sales_db

-- HOW TO KNOW MAX SALES ON A PERTICULAR DATE 
Select max(Saledate) "Max SalesDate" from public.sales_db

/*
Note --> If there is any null values in the column then 'MAX'
         will ignore the value.
*/


-- HOW TO FIND THE MAXIMUM QUANTITY SOLD ON EACH PRODUCT ID 
SELECT productid,max(quantity) "Maximum Qunatity" from public.sales_db
group by productid

/* 
Note --> Group By is used when you have distinct values in the dataset
         and you have to bifercate it according to any specific group only.
*/

-- HOW TO KNOW MAXIMUM TOTAL AMOUNT FOR ALL DISTINCT DATES IN SALEDATE COLUMN
Select saledate, max(totalamount) "Maximum Total Amount" from public.sales_db
group by saledate

/* MIN FUNCTION */


select min(quantity) "Minimum Quantity" from public.sales_db

select min(saledate) "Minimum Sales Date" from public.sales_db

select min(paymentmethod) "Minimum Pay Method" from public.sales_db

--Show minimum totalamount for each storeid
select storeid, min(totalamount) "Minimum Total Amount" from public.sales_db
group by storeid


/* SUM, AVG, COUNT */


select sum(quantity) "Total Quantity" from public.sales_db

select sum(quantity) "Total Quantity",sum(totalamount) "Sum of Amount" from public.sales_db

select avg(quantity) "Average Quantity" from public.sales_db

select avg(quantity) "Avg Quantity",avg(totalamount) "Avg Amount" from public.sales_db

select * from public.sales_db

--Sum of Quantity, sum of totalamount, avg of quantity, avg of total amount for each distinct product

select 
ProductID,
sum(Quantity) as "Total Quantity",
sum(TotalAmount) as "Sum of Amount",
avg(Quantity) "Average Quantity Sold",
avg(TotalAmount) "Average Amount"
from public.sales_db
group by ProductID

select * from public.sales_db

--Sum of Quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of ProductID & storeid
select
productid,
storeid,
sum(Quantity) "Total Quantity",
sum(totalamount) "Sum of Amount",
avg(quantity) "Avg of Quantity",
avg(totalamount) "Avg of Amount"
from public.sales_db
group by ProductID,StoreID

select * from public.sales_db



select count(*) "Number of Rows" from public.sales_db

select count(paymentmethod) "No of Records" from public.sales_db

select count(distinct productid) "Distinct Products" from public.sales_db

select PaymentMethod,count(distinct paymentmethod) "Distinct Pay Mode" from public.sales_db
group by PaymentMethod

select PaymentMethod,count(paymentmethod) "Pay Mode" from public.sales_db
group by PaymentMethod

select PaymentMethod,count(*) "Pay Mode" from public.sales_db
group by PaymentMethod