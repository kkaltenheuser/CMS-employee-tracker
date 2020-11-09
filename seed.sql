-- You may wish to include a `seed.sql` file to pre-populate your database. This will make development of individual features much easier. --

-- INSERT INTO TABLE : DEPARTMENT
USE employee_DB;
INSERT INTO department (name) VALUES ('Marketing');
INSERT INTO department (name) VALUES ('Communications');
INSERT INTO department (name) VALUES ('Human Resources');

USE employee_DB;
SELECT * FROM department;

-- INSERT INTO TABLE : ROLE
USE employee_DB;
INSERT INTO role (title, salary, department_id) VALUES ('Marketing Director', '110000', '1');
INSERT INTO role (title, salary, department_id) VALUES ('Marketing Associate', '65000', '2');
INSERT INTO role (title, salary, department_id) VALUES ('Sr. Communications Associate', '71000', '3');


USE employee_DB;
SELECT * FROM role;
USE employee_DB;
SELECT title
    FROM role
    -- ORDER in ascending
    ORDER BY department_id ASC, title ASC;

-- INSERT INTO TABLE : EMPLOYEE
USE employee_DB;
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Ilana', 'Dunn', 1, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Jacklyn', 'Blumenthal', 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Ophelia', 'Smith', 3, null);


USE employee_DB;
SELECT * FROM employee;

-- For viewing data:
-- View employees
USE employee_DB;
SELECT e.id, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.name AS 'Department', r.title, r.salary, CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
    FROM employee e
        -- Joining
        LEFT JOIN employee m ON m.id = e.manager_id
        LEFT JOIN Role r ON e.role_id = r.id
        LEFT JOIN Department d ON d.id = r.department_id
    -- ORDER BY e.id in ascending order
    ORDER BY e.id ASC;

-- View all employee by dept.
USE employee_DB;
SELECT d.name, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', r.title, d.name, r.salary, CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
    FROM employee e
        LEFT JOIN employee m ON m.id = e.manager_id
        JOIN Role r ON e.role_id = r.id
        JOIN Department d ON d.id = r.department_id
    ORDER BY d.name ASC;

-- View employee by manager
USE employee_DB;
SELECT IFNULL(CONCAT(m.first_name, ' ', m.last_name), '') AS 'Manager', CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.name, r.title, d.name, r.salary
    FROM employee e
        LEFT JOIN employee m ON m.id = e.manager_id
        JOIN Role r ON e.role_id = r.id
        JOIN Department d ON d.id = r.department_id
    ORDER BY m.first_name ASC;

-- departments
USE employee_DB;
SELECT name AS 'Department Name'
        FROM department
        ORDER BY name ASC;

-- Updating Queries
-- Set employee roles
USE employee_DB;
UPDATE employee e
    SET
        e.role_id = ? 
    WHERE
        e.id = ?;

USE employee_DB; SELECT * FROM employee WHERE id = 12;

-- Set employee managers
USE employee_DB;
UPDATE employee e
    SET
        e.manager_id = ?
    WHERE
        e.id = ?;

USE employee_DB; SELECT * FROM employee WHERE id = 12;

-- Query to add new employees
USE employee_DB;
SELECT e.id, e.first_name, e.last_name
    FROM employee e
    ORDER BY e.first_name ASC;

USE employee_DB;
SELECT r.id, r.title
    FROM role r
    ORDER BY r.title ASC;

-- Queries to add new departments
USE employee_DB;
SELECT d.id, d.name
        FROM department d
        ORDER BY d.name ASC;

USE employee_DB; SELECT * FROM role;
USE employee_DB; SELECT * FROM employee;
USE employee_DB; SELECT * FROM department;

SELECT r.id, r.title
            FROM role r
            ORDER BY r.title ASC;