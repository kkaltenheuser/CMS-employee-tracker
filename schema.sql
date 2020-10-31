DROP DATABASE IF EXISTS "";
CREATE DATABASE "";
-- LETS DATABASE USE DATA--
USE "";
-- table one--
-- department --
CREATE TABLE department(
-- id --
id INT NOT NULL AUTO_INCREMENT,
-- name / varchar 30 --
department_name VARCHAR (30) NOT NULL,
PRIMARY KEY (id)
)



-- table two --
-- role--
CREATE TABLE roles (
 -- id --
id INT NOT NULL AUTO_INCREMENT,
-- title --
role_title VARCHAR (30) NOT NULL,
-- salary --
salary DECIMAL (10,2) NOT NULL,
-- department id --
department_id INT NOT NULL,
PRIMARY KEY (id)
)



-- table three
-- employee --
CREATE TABLE employee (
-- id --
id INT NOT NULL AUTO_INCREMENT,
-- first name --
first_name VARCHAR(30) NOT NULL,
-- last name --
last_name VARCHAR(30) NOT NULL,
-- role id --
role_id INT NOT NULL,
-- manager id --
manager_id INT NULL,
PRIMARY KEY (id)

)
