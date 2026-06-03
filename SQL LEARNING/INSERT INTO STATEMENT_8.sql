/* INSERT INTO OPERATOR */

Select * from public.employee

-- HOW TO INSERT INTO THE TABLE 
insert into public.employee (employee_id,first_name,last_name,position,department,salary,hire_date)
values (6,'Raj','Ambani','IT','IT DEPARTMENT',67000,'2023-04-20')

INSERT INTO public.employee (employee_id,first_name,last_name)
VALUES (7,'Rohit','Mehera')

INSERT INTO public.employee 
    (employee_id,first_name, last_name, position, department, salary, hire_date)
VALUES 
    (8,'Mahesh', 'Narang', 'HR', 'HR DEPARTMENT', 73000, '2024-02-22');

SELECT * FROM public.employee

select * from INFORMATION_SCHEMA.COLUMNS
where table_name = 'employee'
