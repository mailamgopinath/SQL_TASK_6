/*                        CREATE TABLE EMPLOYEE                              */

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    EmpName VARCHAR(100) NOT NULL,
    JobTitle VARCHAR(100),
    Salary DECIMAL(10,2),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

/*                                    INSERTING THE DATA TO THE TABLE                                            */

INSERT INTO Employee (EmpName, JobTitle, Salary, DeptID) VALUES
('Alice Johnson', 'HR Manager', 65000.00, 1),
('Bob Smith', 'Software Engineer', 80000.00, 2),
('Carol Davis', 'Financial Analyst', 70000.00, 3),
('David Wilson', 'Marketing Specialist', 60000.00, 4),
('Eva Brown', 'Sales Executive', 55000.00, 5),
('Frank Miller', 'Research Scientist', 90000.00, 6),
('Grace Taylor', 'Customer Support Lead', 50000.00, 7),
('Henry Anderson', 'Legal Advisor', 85000.00, 8),
('Ivy Thomas', 'Operations Coordinator', 58000.00, 9),
('Jack White', 'Admin Officer', 48000.00, 10);

/*                   FETCHING ALL THE COLUMNS FROM THE TABLE                    */

SELECT * FROM Employee;

