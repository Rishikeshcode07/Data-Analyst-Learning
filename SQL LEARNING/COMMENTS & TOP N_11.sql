/* COMMENTS & TOP N */


--Hi we are learning SQL Server

select * from public.employee

/*
Hi
we 
are 
learning
sql
server
*/


-- View all records
SELECT * FROM public.employee;

-- View top 2 rows 
SELECT * FROM public.employee
ORDER BY employee_id 
LIMIT 2;

-- Top 2 rows with specific columns
SELECT employee_id, salary 
FROM public.employee
ORDER BY employee_id 
LIMIT 2;

-- Top 5 first_name and last_name
SELECT first_name, last_name 
FROM public.employee
ORDER BY employee_id 
LIMIT 5;


-- OTHR WAY TO DO THE SAME IS 


-- Top 2 rows
SELECT * FROM public.employee
ORDER BY employee_id 
FETCH FIRST 2 ROWS ONLY;

-- Top 2 with specific columns
SELECT employee_id, salary 
FROM public.employee
ORDER BY employee_id 
FETCH FIRST 2 ROWS ONLY;

-- Top 5 first and last name
SELECT first_name, last_name 
FROM public.employee
ORDER BY employee_id 
FETCH FIRST 5 ROWS ONLY;
