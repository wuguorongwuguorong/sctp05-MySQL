create database swimming_coach;

--show all databases on the server
show databases;

/** create table<name of table> <col name> (<data type> <option>)engine =innodb;**/

CREATE TABLE parents(
    parent_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) DEFAULT '' --default value into the empty field
) engine = innodb;

CREATE TABLE locations(
    location_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
) engine = innodb;

CREATE TABLE sessions(
    session_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    datetime datetime NOT NULL,
) engine =innodb;

CREATE TABLE students(
    student_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(45) NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    swimming_level tinyint,
    dob datetime
) engine = innodb;

--editing
ALTER TABLE sessions MODIFY COLUMN datetime date NOT NULL;

--delete
ALTER TABLE students DROP COLUMN swimming_level;
--add
ALTER TABLE students ADD COLUMN swimming_level tinyint;

--assigning FK into a table
ALTER TABLE students ADD CONSTRAINT fk_parents_students FOREIGN KEY(parent_id) REFERENCES parents(parent_id);