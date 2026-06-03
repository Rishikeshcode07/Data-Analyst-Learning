/* UPDATE STATEMENT */
select * from public.employee

/* AS WE DON'T WANT TO CHANGE THE ONRIGINAL TABLE , SO WHAT WE
   WILL DO IS THAT , WE WILL MAKE A COPY (# TABLE) OF A ORIGINAL
   TABLE AND MAKE CHANGES INTO THEM SO TAHT IT WILL NOT MAKE 
   ANY DIFFRENECE TO THE ORIGINAL TABLE. */
CREATE TEMP TABLE temp_employee AS 
SELECT * FROM public.employee;

select * from temp_employee

-- we need to remove the null values in the department column
/* NOTE --> UPDATE STATEMENT ALWAYS SHOULD BE USE WITH 'WHERE'
            CONDITION , OTHERWISE IT WILL UPDATE THE ENTIRE 
			TABLE. */
UPDATE temp_employee
set Department ='HR'
WHERE department is null

/* If there is moe column with null values for any perticular id ,
   then we can use a statement.  */
  
UPDATE temp_employee
set Salary = 89000,hire_date = '2023-01-01', position = 'HR'
where employee_id = 7



