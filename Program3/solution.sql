-- ============================================================
-- PROGRAM 3
-- Alter Student Table
-- ============================================================

-- Student Name:
-- Register Number:

-- Add the following columns to the Student table:
--
-- Email       VARCHAR(30)
-- PhoneNumber NUMBER(10)
--
-- After adding the columns, display the modified
-- Student table structure.


-- WRITE YOUR ALTER TABLE STATEMENT BELOW



-- WRITE YOUR DESCRIBE COMMAND BELOW
-- ============================================================
-- PROGRAM 3: ALTER STUDENT TABLE
-- ============================================================

-- Add Email column

ALTER TABLE Student
ADD Email VARCHAR(30);

-- Add PhoneNumber column

ALTER TABLE Student
ADD PhoneNumber NUMBER(10);

-- Display modified table structure

DESCRIBE Student;


