/*Scalar Subquery*/

/*Show all employees and the highest salary in the company:*/

SELECT 
    EmpName,
    Salary,
    (SELECT MAX(Salary) FROM Employee) AS HighestSalary
FROM Employee;


/*Correlated Subquery*/

/*Show employees whose salary is above the average salary of their own*/

SELECT EmpName, Salary, DeptID
FROM Employee e
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
    WHERE DeptID = e.DeptID
);

