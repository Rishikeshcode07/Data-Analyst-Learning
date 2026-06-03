/* JOINS */

/* 1. INNNER JOIN / JOIN --> AN INNER JOIN RETURNS ONLY THE ROWS WHERE 
                             THERE IS A MATCH IN BOTH TABLES BASED 
*/


Select * from public.sales_db


-- Drop tables if they already exist (safe)
DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;

-- Create Table1
CREATE TABLE table1 (
    C1 INT,
    C2 TEXT
);

-- Insert data into Table1
INSERT INTO table1 (C1, C2)
VALUES 
(1, 'A'),
(1, 'B'),
(2, 'C'),
(NULL, 'D'),
(3, 'E'),
(7, 'DA');

-- Create Table2
CREATE TABLE table2 (
    C1 INT,
    C3 TEXT
);

-- Insert data into Table2
INSERT INTO table2 (C1, C3)
VALUES 
(1, 'XA'),
(2, 'MB'),
(2, 'NX'),
(NULL, 'MO'),
(4, 'XY'),
(5, 'TF');

-- Check the data
SELECT * FROM table1;
SELECT * FROM table2;


Select * from table1 inner join table2 
on table1.C1 = table2.C1

/* If i only want to see c1 from table1, column two from table
   one and column three from table two should be present in the
   output. */
Select table1.C1, table1.C2,table2.C3 from table1 inner join table2 
on table1.C1 = table2.C1

-- If you want to have the aliase name then you can write 
Select a.C1, a.C2,b.C3 from table1 a inner join table2 b
on a.C1 = b.C1





/* 2. LEFT JOIN / L.OUTTER JOIN -->  IT RETURNS ALL RECORDS FROM THE
                LEFT TABLE AND ONLY MACTHING RECORDS FROM HE RIGHT
				TABLE. IF NO MATCH EXIXTS IN THE RIGTH TABLE, NULL
				VALUES WILL BE RETURNED FOR THE RIGHT TABLE'S COLUMNS.
								   
*/

Select a.C1, a.C2,b.C3 from table1 a LEFT join table2 b
on a.C1 = b.C1

Select * from table1 LEFT join table2 
on table1.C1 = table2.C1







/* 3. RIGHT JOIN / R. OUTTER JOIN -->  IT RETURNS ALL RECORDS FROM THE
                RIGT TABLE AND ONLY MACTHING RECORDS FROM THE LEFT
				TABLE. IF NO MATCH EXIXTS IN THE LEFT TABLE, NULL
				VALUES WILL BE RETURNED FOR THE LEFT TABLE'S COLUMNS.
								   
*/
Select a.C1, a.C2,b.C3 from table1 a RIGHT join table2 b
on a.C1 = b.C1

Select * from table1 A RIGHT join table2 B
on A.C1 = B.C1


/* NOTE --> LEFT AND RIGHT ANTI JOIN 
THESE ARE THE JOINS THAT WILL ONLY GIVE NULL VLAEUS IN THE 
OUTPUT. THERE IS ONLY THING TO DO IN ANY OF THE JOIN IS THAT 
YOU HAVE TO PUT THE WHERE CLAUSE AT THE END , E.G., :-

Select * from table1 LEFT join table2 
on table1.C1 = table2.C1 WHERE TABLES1.C2 IS NULL */







/* 4. FULL JOIN / F.OUTTER JOIN --> IT WILL RETURN ALL MATCHING 
           ROWS FROM TABLES WHERE THE JOIN CONDITIONS IS MET.
		   IT WILL ALSO RETURN ALL NON-MATCHING ROWS FROM THE 
		   LEFT TABLE AND THE RIGHT TABLE WITH NULL VALUES.

		   IN SHORT, IT COMBINES THE RESULTS OF BOTH LEFT AND 
		   RIGHT JOIN, INCLUDING ALL RECORDS FROM BOTH TABLES
		   AND MATCHING RECORDS FROM BOTH SIDES WHERE AVAILABLE.

*/
Select a.C1, a.C2,b.C3 from table1 a FULL join table2 b
on a.C1 = b.C1

Select * from table1 A FULL join table2 B
on A.C1 = B.C1






/* 5. SELF JOIN --> JOINING THE TABLES ITSELF IS CALLED 
                    SELF JOIN.
*/
Select * from table1 as a inner join table1 as b 
on a.c1 = b.c1


--UNION JOIN IN THE SECOND PART