-- ============================================================
-- PROGRAM 5
-- Insert Student Records
-- ============================================================

-- Student Name:
-- Register Number:

-- Insert the following records into Student:
--
-- StudentID   StudentName   Gender   DepartmentID
-- ------------------------------------------------
-- 1001        Arun          Male     101
-- 1002        Divya         Female   102
-- 1003        Karthik       Male     101
--
-- After inserting the records, display all Student records.


-- WRITE YOUR INSERT STATEMENTS BELOW



-- WRITE YOUR SELECT STATEMENT BELOW
-- ============================================================
-- PROGRAM 5: INSERT STUDENT RECORDS
-- ============================================================

-- Insert Student records

INSERT INTO Student
    (StudentID, StudentName, Gender, DepartmentID)
VALUES
    (1001, 'Arun', 'Male', 101);

INSERT INTO Student
    (StudentID, StudentName, Gender, DepartmentID)
VALUES
    (1002, 'Divya', 'Female', 102);

INSERT INTO Student
    (StudentID, StudentName, Gender, DepartmentID)
VALUES
    (1003, 'Karthik', 'Male', 101);

-- Display all Student records

SELECT * FROM Student;

COMMIT;


