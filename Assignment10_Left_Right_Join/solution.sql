DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;


CREATE TABLE Course (
    CourseID NUMBER(5) PRIMARY KEY,
    CourseName VARCHAR2(30),
    Credits NUMBER(2)
);

INSERT INTO Course VALUES (201, 'Database Systems', 4);
INSERT INTO Course VALUES (202, 'Data Structures', 3);
INSERT INTO Course VALUES (203, 'Mathematics', 4);

CREATE TABLE Enrollment (
    EnrollmentID NUMBER(5) PRIMARY KEY,
    StudentID NUMBER(5),
    CourseID NUMBER(5)
);

INSERT INTO Enrollment VALUES (1, 1001, 201);
INSERT INTO Enrollment VALUES (2, 1001, 202);
INSERT INTO Enrollment VALUES (3, 1002, 203);
INSERT INTO Enrollment VALUES (4, 1003, 201);

SELECT C.CourseID,
       C.CourseName,
       E.EnrollmentID,
       E.StudentID
FROM Course C
LEFT JOIN Enrollment E
ON C.CourseID = E.CourseID;

SELECT C.CourseID,
       C.CourseName,
       E.EnrollmentID,
       E.StudentID
FROM Course C
RIGHT JOIN Enrollment E
ON C.CourseID = E.CourseID;