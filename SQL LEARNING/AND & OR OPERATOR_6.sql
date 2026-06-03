/* AND & OR OPERATOR */

Select * from public.employeerecords

-- Find the person with last name with miller
Select * from public.employeerecords
where lastname ='Miller'

/* Display all the records of the employee with last name miller 
   and it should also contian the id 3 */
Select * from public.employeerecords
where lastname ='Miller' AND employeeid = 3


-- Want to see the data either from HR departmenet or Finance departmenet
Select * from public.employeerecords
where department = 'HR' OR department = 'Finance'

-- Want to see the data either from finance or hr and salary should be more then 60000
Select * from public.employeerecords
where (department = 'HR' OR department = 'Finance') and salary >= 60000

