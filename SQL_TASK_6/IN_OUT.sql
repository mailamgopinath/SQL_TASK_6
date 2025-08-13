/*Subquery with IN*/

/*employees who work in departments located in New York or Boston:*/

SELECT EmpName, DeptID
FROM Employee
WHERE DeptID IN (
    SELECT DeptID 
    FROM Department
    WHERE Location IN ('New York', 'Boston')
);

/*Subquery with EXISTS*/

/*List departments that have at least one employee earning more than 80,000:*/

SELECT DeptName
FROM Department d
WHERE EXISTS (
    SELECT 1
    FROM Employee e
    WHERE e.DeptID = d.DeptID
      AND e.Salary > 80000
);

/*Subquery with =*/

/*employees who earn the highest salary in the company:*/

SELECT EmpName, Salary
FROM Employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employee
);


