-- ============================================================
-- PROGRAM 2
-- Create Student Table
-- ============================================================

-- Student Name:
-- Register Number:

-- Create a table named Student with the following fields:
--
-- StudentID      NUMBER(5)      PRIMARY KEY
-- StudentName    VARCHAR(20)
-- DOB            DATE
-- Gender         VARCHAR(10)
-- DepartmentID   NUMBER(5)
--
-- Add appropriate constraints such as PRIMARY KEY,
-- UNIQUE and NOT NULL.


-- WRITE YOUR SQL STATEMENT BELOW



-- Display the structure of Student table.

-- ============================================================
-- PROGRAM 2: CREATE STUDENT TABLE
-- ============================================================

-- Create Student table

CREATE TABLE Student
(
    StudentID    NUMBER(5) PRIMARY KEY,
    StudentName  VARCHAR(20) NOT NULL,
    DOB          DATE,
    Gender       VARCHAR(10) NOT NULL,
    DepartmentID NUMBER(5)
);

-- Display table structure

DESCRIBE Student;
