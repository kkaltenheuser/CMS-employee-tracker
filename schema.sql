-- DB if present
DROP DATABASE IF EXISTS employee_DB;

-- CREATE DB
CREATE DATABASE employee_DB;

-- USE DB
USE employee_DB;

-- CREATE TABLE: DEPARTMENT
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- CREATE TABLE: ROLE
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT,
    -- CONSTRAINT is used to define rules for columns present in TABLE
    CONSTRAINT fk_department
    FOREIGN KEY (department_id)
        REFERENCES department(id) ON DELETE SET NULL,
    PRIMARY KEY (id)
);

-- CREATE TABLE: EMPLOYEE
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    -- A FOREIGN KEY in MySQL allows link between two tables
    CONSTRAINT fk_role
    FOREIGN KEY (role_id)
        REFERENCES role(id) ON DELETE SET NULL,
    manager_id INT,
    CONSTRAINT fk_manager
    FOREIGN KEY (manager_id)
        REFERENCES employee(id) ON DELETE SET NULL,
    PRIMARY KEY (id)
);