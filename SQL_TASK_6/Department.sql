CREATE DATABASE Employe_Details;

USE Employe_Details;

/*                        CREATE TABLE DEPARTMENT                             */

CREATE TABLE Department (
    DeptID INT PRIMARY KEY AUTO_INCREMENT,
    DeptName VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);


/*                                    INSERTING THE DATA TO THE TABLE                                            */

INSERT INTO Department (DeptName, Location) VALUES
('Human Resources', 'New York'),
('Information Technology', 'San Francisco'),
('Finance', 'Chicago'),
('Marketing', 'Los Angeles'),
('Sales', 'Houston'),
('Research and Development', 'Boston'),
('Customer Support', 'Seattle'),
('Legal', 'Washington D.C.'),
('Operations', 'Denver'),
('Administration', 'Miami');

/*                       FETCHING ALL THE COLUMNS FROM THE TABLE                  */

SELECT * FROM Department;
SHOW TABLES;