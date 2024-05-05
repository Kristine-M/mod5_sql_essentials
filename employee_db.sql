CREATE database employee_db;

use employee_db;
CREATE TABLE Departments (
      department_id INT PRIMARY KEY,
      department_name VARCHAR(100)
      );
      
CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_name VARCHAR(255),
      FOREIGN KEY (department_name) REFERENCES Departments(department_id)
    );
    
    
INSERT INTO Departments (department_id, department_name)
VALUES (1, 'IT'),
       (2, 'Finance'),
       (3, 'Marketing');

INSERT INTO Employees (employee_id, name, age, department_name)
VALUES (1, 'John Doe', 28, 'IT'),
       (2, 'Jane Smith', 35, 'Finance'),
       (3, 'kris', 20, 'Marketing'),
       (4, 'kelly', 26, 'IT'),
       (5, 'jenny', 45, 'Finance'),
       (6, 'james', 26, 'Marketing');

SELECT * FROM Employees;
SELECT DISTINCT department_id FROM Employees;

SELECT department_id, COUNT(*) AS employee_count FROM Employees
GROUP BY department_id;

SELECT * FROM Employees
WHERE age BETWEEN 25 AND 30;