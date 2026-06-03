/* SELECT DISTINCT */


CREATE TABLE EmployeeRecords (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Miller', 'HR', 60000),
(2, 'Jane', 'Smith', 'Finance', 75000),
(3, 'John', 'Miller', 'HR', 60000),
(4, 'Emily', 'Davis', 'IT', 85000),
(5, 'Michael', 'Brown', 'Finance', 75000),
(6, 'Jane', 'Smith', 'Finance', 75000);

Select * from EmployeeRecords

--IF YOU WANT OT THE DISTINCT RECORDS
Select Distinct firstname From EmployeeRecords

--IF YOU WANT TO KNOW THE FIRST AND LAST NAME COMBINATION
Select Distinct firstname,lastname From EmployeeRecords

