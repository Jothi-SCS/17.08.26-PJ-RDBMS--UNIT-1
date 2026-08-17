-- ============================================================
-- PROGRAM 1
-- Create Department Table
-- ============================================================

-- Student Name:
-- Register Number:

-- Create a table named Department with the following fields:
--
-- DepartmentID   NUMBER(5)      PRIMARY KEY
-- DepartmentName VARCHAR(20)
-- HOD            VARCHAR(20)
--
-- Add appropriate constraints such as PRIMARY KEY,
-- UNIQUE and NOT NULL.


-- WRITE YOUR SQL STATEMENT BELOW



-- Display the structure of Department table.
-- ============================================================
-- PROGRAM 1: CREATE DEPARTMENT TABLE
-- ============================================================

-- Create Department table

DROP TABLE IF  EXISTS Department;

CREATE TABLE Department (
    DepartmentID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(100),
    HOD VARCHAR2(100),
    CONSTRAINT UQ_DEPARTMENT_NAME UNIQUE (DepartmentName)
);

-- Display table structure

DESCRIBE Department;

