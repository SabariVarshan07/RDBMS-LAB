DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Course (
    CourseID NUMBER(5) PRIMARY KEY,
    CourseName VARCHAR2(30),
    Credits NUMBER(2),
    DepartmentID NUMBER(5)
);
INSERT INTO Course VALUES (201, 'DBMS', 4, 101);
INSERT INTO Course VALUES (202, 'Java', 3, 102);
INSERT INTO Course VALUES (203, 'Python', 4, 103);
DESC Course;