/* WHERE CLAUSE */

Select * from public.employeerecords


--Now if you want ot filter the records then 
Select * from public.employeerecords
where EmployeeID = 2

--If you want to view only if and the first name of the employee
Select EmployeeID,FirstName from public.employeerecords
where EmployeeID = 2

-- If you want to see the salary greater then or equal to 80000
Select Salary from public.employeerecords
where Salary >=80000

--If we want to see only distinct records where salary is <75000
Select distinct * from public.employeerecords
where Salary <=750000


