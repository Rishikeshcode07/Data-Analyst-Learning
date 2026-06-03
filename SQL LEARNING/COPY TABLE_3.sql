/* IF I WANT TO COPY ONE TABLE DATA INTO ANOTHER TABLE */

Create Temp table temp1 AS
Select * from public.employeerecords

SELECT * FROM temp1;

Create Temp table temp2 AS
Select * from public.employee

SELECT * FROM temp2;

