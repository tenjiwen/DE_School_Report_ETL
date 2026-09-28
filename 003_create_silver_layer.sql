-- Create slvr tables from brnz tables --

-- Empty/clear tables (inititalize) 
--TRUNCATE TABLE slvr_dw.silver.prelim_science_students_marks_gr10;
--TRUNCATE TABLE slvr_dw.silver.prelim_science_students_marks_gr11;
--TRUNCATE TABLE slvr_dw.silver.prelim_science_students_marks_gr12;

USE slvr_dw;
GO

------------------------------------------------------------
-- GRADE 10
------------------------------------------------------------
CREATE TABLE slvr_dw.silver.prelim_science_students_marks_gr10 (
        student_id NVARCHAR(50),
        student_name NVARCHAR(200),
        grade NVARCHAR(10),
        mathematics_mark DECIMAL(5, 2),
        physical_science_mark DECIMAL(5, 2),
        life_sciences_mark DECIMAL(5, 2),
        english_home_language_mark DECIMAL(5, 2),
        life_orientation_mark DECIMAL(5, 2),
        information_technology_mark DECIMAL(5, 2),
        agricultural_science_mark DECIMAL(5, 2),
        total_mark DECIMAL(6, 2),
        average_mark DECIMAL(5, 2)
);
GO

INSERT INTO
    slvr_dw.silver.prelim_science_students_marks_gr10
SELECT DISTINCT -- Removes exact identical row duplicates from the source
    A.[student_id],
    A.[student_name],
    A.[grade],
    A.[mathematics_mark],
    A.[physical_science_mark],
    A.[life_sciences_mark],
    A.[english_home_language_mark],
    A.[life_orientation_mark],
    A.[information_technology_mark],
    A.[agricultural_science_mark],
    A.[total_mark],
    A.[average_mark]
FROM
    [brnz_stg].[bronze].[prelim_science_students_marks_gr10] AS A
WHERE NOT EXISTS (
SELECT 1
FROM [slvr_dw].[silver].[prelim_science_students_marks_gr10] AS B
WHERE A.student_id = B.student_id
);
GO

SELECT COUNT(*) FROM slvr_dw.silver.prelim_science_students_marks_gr10;
SELECT * FROM slvr_dw.silver.prelim_science_students_marks_gr10;

------------------------------------------------------------
-- GRADE 11
------------------------------------------------------------
CREATE TABLE slvr_dw.silver.prelim_science_students_marks_gr11 (
        student_id NVARCHAR(50),
        student_name NVARCHAR(200),
        grade NVARCHAR(10),
        mathematics_mark DECIMAL(5, 2),
        physical_science_mark DECIMAL(5, 2),
        life_sciences_mark DECIMAL(5, 2),
        english_home_language_mark DECIMAL(5, 2),
        life_orientation_mark DECIMAL(5, 2),
        information_technology_mark DECIMAL(5, 2),
        agricultural_science_mark DECIMAL(5, 2),
        total_mark DECIMAL(6, 2),
        average_mark DECIMAL(5, 2)
);
GO

INSERT INTO
    slvr_dw.silver.prelim_science_students_marks_gr11
SELECT DISTINCT -- Removes exact identical row duplicates from the source
    A.[student_id],
    A.[student_name],
    A.[grade], 
    A.[mathematics_mark],
    A.[physical_science_mark], 
    A.[life_sciences_mark],
    A.[english_home_language_mark], 
    A.[life_orientation_mark],
    A.[information_technology_mark], 
    A.[agricultural_science_mark],
    A.[total_mark], A.[average_mark]
FROM
    [brnz_stg].[bronze].[prelim_science_students_marks_gr11] AS A
WHERE NOT EXISTS (
SELECT 1
FROM [slvr_dw].[silver].[prelim_science_students_marks_gr11] AS B
WHERE A.student_id = B.student_id
);
GO

SELECT COUNT(*) FROM slvr_dw.silver.prelim_science_students_marks_gr11;
SELECT        * FROM slvr_dw.silver.prelim_science_students_marks_gr11;

------------------------------------------------------------
-- GRADE 12
------------------------------------------------------------
CREATE TABLE slvr_dw.silver.prelim_science_students_marks_gr12 (
        student_id NVARCHAR(50),
        student_name NVARCHAR(200),
        grade NVARCHAR(10),
        mathematics_mark DECIMAL(5, 2),
        physical_science_mark DECIMAL(5, 2),
        life_sciences_mark DECIMAL(5, 2),
        english_home_language_mark DECIMAL(5, 2),
        life_orientation_mark DECIMAL(5, 2),
        information_technology_mark DECIMAL(5, 2),
        agricultural_science_mark DECIMAL(5, 2),
        total_mark DECIMAL(6, 2),
        average_mark DECIMAL(5, 2)
);
GO

INSERT INTO
    slvr_dw.silver.prelim_science_students_marks_gr12
SELECT DISTINCT -- Removes exact identical row duplicates from the source
    A.[student_id],
    A.[student_name],
    A.[grade],
    A.[mathematics_mark],
    A.[physical_science_mark],
    A.[life_sciences_mark],
    A.[english_home_language_mark],
    A.[life_orientation_mark],
    A.[information_technology_mark],
    A.[agricultural_science_mark],
    A.[total_mark],
    A.[average_mark]
FROM
    [brnz_stg].[bronze].[prelim_science_students_marks_gr12] AS A
WHERE NOT EXISTS (
SELECT 1
FROM [slvr_dw].[silver].[prelim_science_students_marks_gr12] AS B
WHERE A.student_id = B.student_id
);
GO

SELECT COUNT(*) FROM slvr_dw.silver.prelim_science_students_marks_gr12;
SELECT * FROM slvr_dw.silver.prelim_science_students_marks_gr12;

