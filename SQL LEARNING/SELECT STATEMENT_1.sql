/* SELECT STATEMENT */



-- 1. Create the table 
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL, 
	last_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),                  
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10,2)
);

-- 2. Add the last_name column
-- ALTER TABLE employee 
-- ADD COLUMN last_name VARCHAR(50);

-- 3. (Optional) If you still have the old 'name' column, rename it
-- ALTER TABLE employee RENAME COLUMN name TO first_name;

-- 4. Insert data 
INSERT INTO employee (first_name, position, department, hire_date, salary, last_name)
VALUES
('JOHN', 'HR', 'HUMAN RESOURCES', '2020-01-15', 50000.00, 'DOE'),
('JANE', 'FINANCE', 'FINANCE DEPARTMENT', '2019-03-23', 60000.00, 'SMITH'),
('ALICE', 'IT', 'IT DEPARTMENT', '2021-07-10', 75000.00, 'JOHNSON'),
('BOB', 'MARKETING', 'MARKETING DEPARTMENT', '2018-09-30', 55000.00, 'BROWN'),
('CHARLIE', 'IT', 'IT DEPARTMENT', '2022-02-20', 70000.00, 'DAVIS');

-- 5. View the full table
SELECT * FROM employee;

-- 6. View specific columns
SELECT first_name, last_name, salary 
FROM employee;

-- 7. IF YOU WANT TO ADD TO COLUMN NAMES TOGETHER THEN YOU CNA DO 
SELECT employee_id,CONCAT (first_name,' ',last_name) from employee

-- 8. IF YOU WANT TO CHANGE THE NAME OF THE COLUMN AS WELL THEN 
SELECT employee_id,CONCAT (first_name,' ',last_name) AS full_name from employee


