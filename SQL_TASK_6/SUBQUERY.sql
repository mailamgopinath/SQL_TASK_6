/*      SUBQUERY IN SELECT      */

/*Get all employees along with their department name using a subquery in the SELECT*/

SELECT 
    EmpName,
    JobTitle,
    Salary,
    (SELECT DeptName 
     FROM Department 
     WHERE Department.DeptID = Employee.DeptID) AS DepartmentName
FROM Employee;

/*                       SUBQUERY IN WHERE                        */

/*                get employees who earn more than the average salary.                    */

SELECT EmpName, Salary
FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

/*Subquery in FROM*/

/*            List departments with their average salary (using subquery as a temporary table).             */

SELECT DeptName, AvgSalary
FROM (
    SELECT DeptID, AVG(Salary) AS AvgSalary
    FROM Employee
    GROUP BY DeptID
) AS AvgTable
JOIN Department ON AvgTable.DeptID = Department.DeptID;


