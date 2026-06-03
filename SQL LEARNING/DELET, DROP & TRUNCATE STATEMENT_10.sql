/* DELET, DROP & TRUNCATE STATEMENT */
-- 1. Drop the temp table if it already exists (to avoid "already exists" error)
DROP TABLE IF EXISTS temp_employee_1;

-- 2. Create the temporary copy
CREATE TEMP TABLE temp_employee_1 AS 
SELECT * FROM public.employee;

-- 3. Now query it
SELECT * FROM temp_employee_1;

-- 4. How to delete the space or zero in the column
Delete from temp_employee_1
where last_name = '' or Department = '0'

CREATE TEMP TABLE temp_employee_2 AS 
SELECT * FROM public.employee;

SELECT * FROM temp_employee_2;

delete from temp_employee_2

select * from temp_employee_1

-- NOW WE WILL USE TRUNCATE 
truncate temp_employee_1

-- NOW WE WILL USE DROP TABLE
drop table temp_employee_1

--NOTE

/*

1. TRUNCATE --> It is used to delete all the data from the table,
                but the sturcture remain the same.
				   
2. DELETE --> It is use to remove any epesific data from the table,
              but we have to make sure that we are using 'WHERE' CLAUSE 
			  so that only that perticualr record delete , otherwise 
			  the enitre record will be deleted.
				 
3. DROP --> It is used to remove the enitre thing including all the
            sturcture also. 
			   
*/
