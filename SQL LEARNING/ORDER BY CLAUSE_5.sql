/* ORDER BY CLAUSE */

Select * from public.employee

--Sort the table in accending order from the salary
Select * from public.employee
order by Salary

--In decending order
Select * from public.employee
order by Salary desc

-- Sort name in accending order and salary in decensding order
Select * from public.employee
order by first_name asc, Salary desc

