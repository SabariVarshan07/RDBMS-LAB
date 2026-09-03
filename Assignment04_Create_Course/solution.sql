DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Course (
    CourseID int(5) PRIMARY KEY,
    CourseName VARCHAR(30),
    Credits int(2),
    DepartmentID int (5)
);
INSERT INTO Course VALUES (201, 'DBMS', 4, 101);
INSERT INTO Course VALUES (202, 'Java', 3, 102);
INSERT INTO Course VALUES (203, 'Python', 4, 103);
DESC Course;
