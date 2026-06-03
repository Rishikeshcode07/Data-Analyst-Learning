/* NOT, BETWEEN & IN OPERATORS */
Select * from public.employeerecords

-- Show data where first name is not equal to john
Select * from public.employeerecords
where not firstname ='John'

/* Show data wehre first name isnot equal to john and salary
   is not equal to 60000 **/
Select * from public.employeerecords
where not firstname ='John' and not Salary = 60000 

-- Last name not should be Miller and its department also not HR
Select * from public.employeerecords
where not lastname ='Miller' and not Department ='HR'

-- Show salary greater then 70000 and less then 85000
Select * from public.employeerecords
where Salary >= 75000 and Salary <=85000

--Show salary is not between 75000 and 85000
Select * from public.employeerecords
where not Salary between 75000 and 85000

/* If i want to see only those records in which only HR AND IT department */
-- Two ways to see the data
Select * from public.employeerecords
where Department ='HR' or Department ='IT'

Select * from public.employeerecords
where Department in ('HR','IT')

--If we want to see other departments only other than HR OR IT
Select * from public.employeerecords
where Department not in ('HR','IT')


