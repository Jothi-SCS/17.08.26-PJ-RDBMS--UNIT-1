-- ============================================================
-- PROGRAM 4
-- Create Course Table and Insert Records
-- ============================================================

-- Student Name:
-- Register Number:

-- Create Course table with the following fields:
--
-- CourseID
-- CourseName
-- Credits
-- DepartmentID
--
-- Use appropriate datatypes and constraints.
--
-- Insert at least 3 records into Course.
--
-- Display the structures of:
--
-- Department
-- Student
-- Course
--
-- using DESCRIBE command.


-- WRITE YOUR CREATE TABLE STATEMENT BELOW



-- WRITE YOUR INSERT STATEMENTS BELOW



-- WRITE YOUR DESCRIBE COMMANDS BELOW
-- ============================================================
-- PROGRAM 4: CREATE COURSE TABLE AND INSERT RECORDS
-- ============================================================

-- Create Course table

CREATE TABLE Course
(
    CourseID     NUMBER(5) PRIMARY KEY,
    CourseName   VARCHAR(30) NOT NULL,
    Credits      NUMBER(2) NOT NULL,
    DepartmentID NUMBER(5)
);

-- Insert at least 3 records

INSERT INTO Course
    (CourseID, CourseName, Credits, DepartmentID)
VALUES
    (201, 'Database Management', 4, 101);

INSERT INTO Course
    (CourseID, CourseName, Credits, DepartmentID)
VALUES
    (202, 'Java Programming', 4, 102);

INSERT INTO Course
    (CourseID, CourseName, Credits, DepartmentID)
VALUES
    (203, 'Computer Networks', 3, 101);

-- Display Course records

SELECT * FROM Course;

-- Display all table structures

DESCRIBE Department;

DESCRIBE Student;

DESCRIBE Course;

COMMIT;


