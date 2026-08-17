DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;


CREATE TABLE Department (
    DepartmentID NUMBER(5) PRIMARY KEY,
    DepartmentName VARCHAR2(30)
);

INSERT INTO Department VALUES (101, 'Computer Science');
INSERT INTO Department VALUES (102, 'Mathematics');
INSERT INTO Department VALUES (103, 'Physics');

CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(20),
    DepartmentID NUMBER(5)
);

INSERT INTO Student VALUES (1001, 'Arun', 101);
INSERT INTO Student VALUES (1002, 'Divya', 102);
INSERT INTO Student VALUES (1003, 'Karthik', 101);
INSERT INTO Student VALUES (1004, 'Nisha', 103);

SELECT S.StudentName, D.DepartmentName
FROM Student S
INNER JOIN Department D
ON S.DepartmentID = D.DepartmentID;

