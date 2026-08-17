-- ============================================================
-- COLLEGE DB ASSIGNMENT
-- SINGLE AUTOGRADER FILE
-- ============================================================

SET SERVEROUTPUT ON;
SET FEEDBACK OFF;
SET HEADING OFF;
SET PAGESIZE 0;
SET VERIFY OFF;

DECLARE

    v_count NUMBER;
    v_pass  NUMBER := 0;
    v_fail  NUMBER := 0;

    PROCEDURE pass_test(p_message VARCHAR2) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('PASS: ' || p_message);
        v_pass := v_pass + 1;
    END;

    PROCEDURE fail_test(p_message VARCHAR2) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('FAIL: ' || p_message);
        v_fail := v_fail + 1;
    END;

BEGIN

    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('==========================================');
    DBMS_OUTPUT.PUT_LINE('       COLLEGE DB AUTOGRADER');
    DBMS_OUTPUT.PUT_LINE('==========================================');
    DBMS_OUTPUT.PUT_LINE('');

    ----------------------------------------------------------------
    -- PROGRAM 1
    -- Department Table
    ----------------------------------------------------------------

    DBMS_OUTPUT.PUT_LINE('========== PROGRAM 1 ==========');

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TABLES
    WHERE TABLE_NAME = 'DEPARTMENT';

    IF v_count = 1 THEN
        pass_test('Department table exists');
    ELSE
        fail_test('Department table exists');
    END IF;


    -- DepartmentID

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'DEPARTMENT'
      AND COLUMN_NAME = 'DEPARTMENTID';

    IF v_count = 1 THEN
        pass_test('DepartmentID column exists');
    ELSE
        fail_test('DepartmentID column exists');
    END IF;


    -- DepartmentName

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'DEPARTMENT'
      AND COLUMN_NAME = 'DEPARTMENTNAME';

    IF v_count = 1 THEN
        pass_test('DepartmentName column exists');
    ELSE
        fail_test('DepartmentName column exists');
    END IF;


    -- HOD

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'DEPARTMENT'
      AND COLUMN_NAME = 'HOD';

    IF v_count = 1 THEN
        pass_test('HOD column exists');
    ELSE
        fail_test('HOD column exists');
    END IF;


    -- Primary Key

    SELECT COUNT(*)
    INTO v_count
    FROM USER_CONSTRAINTS
    WHERE TABLE_NAME = 'DEPARTMENT'
      AND CONSTRAINT_TYPE = 'P';

    IF v_count >= 1 THEN
        pass_test('Department PRIMARY KEY exists');
    ELSE
        fail_test('Department PRIMARY KEY exists');
    END IF;


    -- Unique Constraint

    SELECT COUNT(*)
    INTO v_count
    FROM USER_CONSTRAINTS
    WHERE TABLE_NAME = 'DEPARTMENT'
      AND CONSTRAINT_TYPE = 'U';

    IF v_count >= 1 THEN
        pass_test('Department UNIQUE constraint exists');
    ELSE
        fail_test('Department UNIQUE constraint exists');
    END IF;


    ----------------------------------------------------------------
    -- PROGRAM 2
    -- Student Table
    ----------------------------------------------------------------

    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('========== PROGRAM 2 ==========');


    SELECT COUNT(*)
    INTO v_count
    FROM USER_TABLES
    WHERE TABLE_NAME = 'STUDENT';

    IF v_count = 1 THEN
        pass_test('Student table exists');
    ELSE
        fail_test('Student table exists');
    END IF;


    -- StudentID

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'STUDENTID';

    IF v_count = 1 THEN
        pass_test('StudentID column exists');
    ELSE
        fail_test('StudentID column exists');
    END IF;


    -- StudentName

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'STUDENTNAME';

    IF v_count = 1 THEN
        pass_test('StudentName column exists');
    ELSE
        fail_test('StudentName column exists');
    END IF;


    -- DOB

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'DOB';

    IF v_count = 1 THEN
        pass_test('DOB column exists');
    ELSE
        fail_test('DOB column exists');
    END IF;


    -- Gender

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'GENDER';

    IF v_count = 1 THEN
        pass_test('Gender column exists');
    ELSE
        fail_test('Gender column exists');
    END IF;


    -- DepartmentID

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'DEPARTMENTID';

    IF v_count = 1 THEN
        pass_test('Student DepartmentID column exists');
    ELSE
        fail_test('Student DepartmentID column exists');
    END IF;


    -- Student Primary Key

    SELECT COUNT(*)
    INTO v_count
    FROM USER_CONSTRAINTS
    WHERE TABLE_NAME = 'STUDENT'
      AND CONSTRAINT_TYPE = 'P';

    IF v_count >= 1 THEN
        pass_test('Student PRIMARY KEY exists');
    ELSE
        fail_test('Student PRIMARY KEY exists');
    END IF;


    -- StudentID NOT NULL

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'STUDENTID'
      AND NULLABLE = 'N';

    IF v_count = 1 THEN
        pass_test('StudentID is NOT NULL');
    ELSE
        fail_test('StudentID is NOT NULL');
    END IF;


    -- StudentName NOT NULL

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'STUDENTNAME'
      AND NULLABLE = 'N';

    IF v_count = 1 THEN
        pass_test('StudentName is NOT NULL');
    ELSE
        fail_test('StudentName is NOT NULL');
    END IF;


    -- Gender NOT NULL

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'GENDER'
      AND NULLABLE = 'N';

    IF v_count = 1 THEN
        pass_test('Gender is NOT NULL');
    ELSE
        fail_test('Gender is NOT NULL');
    END IF;


    ----------------------------------------------------------------
    -- PROGRAM 3
    -- Alter Student Table
    ----------------------------------------------------------------

    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('========== PROGRAM 3 ==========');


    -- Email

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'EMAIL';

    IF v_count = 1 THEN
        pass_test('Email column added');
    ELSE
        fail_test('Email column added');
    END IF;


    -- PhoneNumber

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'STUDENT'
      AND COLUMN_NAME = 'PHONENUMBER';

    IF v_count = 1 THEN
        pass_test('PhoneNumber column added');
    ELSE
        fail_test('PhoneNumber column added');
    END IF;


    ----------------------------------------------------------------
    -- PROGRAM 4
    -- Course Table
    ----------------------------------------------------------------

    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('========== PROGRAM 4 ==========');


    SELECT COUNT(*)
    INTO v_count
    FROM USER_TABLES
    WHERE TABLE_NAME = 'COURSE';

    IF v_count = 1 THEN
        pass_test('Course table exists');
    ELSE
        fail_test('Course table exists');
    END IF;


    -- CourseID

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'COURSE'
      AND COLUMN_NAME = 'COURSEID';

    IF v_count = 1 THEN
        pass_test('CourseID column exists');
    ELSE
        fail_test('CourseID column exists');
    END IF;


    -- CourseName

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'COURSE'
      AND COLUMN_NAME = 'COURSENAME';

    IF v_count = 1 THEN
        pass_test('CourseName column exists');
    ELSE
        fail_test('CourseName column exists');
    END IF;


    -- Credits

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'COURSE'
      AND COLUMN_NAME = 'CREDITS';

    IF v_count = 1 THEN
        pass_test('Credits column exists');
    ELSE
        fail_test('Credits column exists');
    END IF;


    -- Course DepartmentID

    SELECT COUNT(*)
    INTO v_count
    FROM USER_TAB_COLUMNS
    WHERE TABLE_NAME = 'COURSE'
      AND COLUMN_NAME = 'DEPARTMENTID';

    IF v_count = 1 THEN
        pass_test('Course DepartmentID column exists');
    ELSE
        fail_test('Course DepartmentID column exists');
    END IF;


    -- Course records

    SELECT COUNT(*)
    INTO v_count
    FROM COURSE;

    IF v_count >= 3 THEN
        pass_test('At least 3 Course records inserted');
    ELSE
        fail_test('At least 3 Course records inserted');
    END IF;


    ----------------------------------------------------------------
    -- PROGRAM 5
    -- Student Records
    ----------------------------------------------------------------

    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('========== PROGRAM 5 ==========');


    -- Arun

    SELECT COUNT(*)
    INTO v_count
    FROM STUDENT
    WHERE STUDENTID = 1001
      AND STUDENTNAME = 'Arun'
      AND GENDER = 'Male'
      AND DEPARTMENTID = 101;

    IF v_count = 1 THEN
        pass_test('Student 1001 - Arun');
    ELSE
        fail_test('Student 1001 - Arun');
    END IF;


    -- Divya

    SELECT COUNT(*)
    INTO v_count
    FROM STUDENT
    WHERE STUDENTID = 1002
      AND STUDENTNAME = 'Divya'
      AND GENDER = 'Female'
      AND DEPARTMENTID = 102;

    IF v_count = 1 THEN
        pass_test('Student 1002 - Divya');
    ELSE
        fail_test('Student 1002 - Divya');
    END IF;


    -- Karthik

    SELECT COUNT(*)
    INTO v_count
    FROM STUDENT
    WHERE STUDENTID = 1003
      AND STUDENTNAME = 'Karthik'
      AND GENDER = 'Male'
      AND DEPARTMENTID = 101;

    IF v_count = 1 THEN
        pass_test('Student 1003 - Karthik');
    ELSE
        fail_test('Student 1003 - Karthik');
    END IF;


    -- Total required students

    SELECT COUNT(*)
    INTO v_count
    FROM STUDENT
    WHERE STUDENTID IN (1001,1002,1003);

    IF v_count = 3 THEN
        pass_test('All 3 required Student records exist');
    ELSE
        fail_test('All 3 required Student records exist');
    END IF;


    ----------------------------------------------------------------
    -- FINAL RESULT
    ----------------------------------------------------------------

    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('==========================================');
    DBMS_OUTPUT.PUT_LINE('             FINAL RESULT');
    DBMS_OUTPUT.PUT_LINE('==========================================');

    DBMS_OUTPUT.PUT_LINE('Total Passed : ' || v_pass);
    DBMS_OUTPUT.PUT_LINE('Total Failed : ' || v_fail);

    DBMS_OUTPUT.PUT_LINE('');

    IF v_fail = 0 THEN
        DBMS_OUTPUT.PUT_LINE('RESULT: PASSED');
    ELSE
        DBMS_OUTPUT.PUT_LINE('RESULT: FAILED');
    END IF;

    DBMS_OUTPUT.PUT_LINE('==========================================');

END;
/

EXIT;
