USE slvr_dw;
GO

SELECT student_id,

       -- Pad student name with trailing spaces, change student_name to `Student Name`
       LEFT(student_name + REPLICATE('',LEN(student_name)), LEN(student_name)) AS 'Student Name',
       
       grade,
       
       -- Create Grade-band from grade
       CASE 
        WHEN grade LIKE '10%' THEN '10'
        WHEN grade LIKE '11%' THEN '11'
        WHEN grade LIKE '12%' THEN '12'
        --ELSE 'Other'
       END AS grade_band,

       -- Cast all 7 subject_marks to integers
       CAST(mathematics_mark            AS INT) AS mathematics_mark_int, 
       CAST(physical_science_mark       AS INT) AS physical_science_mark_int,
       CAST(life_sciences_mark          AS INT) AS life_sciences_mark_int,
       CAST(english_home_language_mark  AS INT) AS english_home_language_mark_int,
       CAST(life_orientation_mark       AS INT) AS life_orientation_mark_int,
       CAST(information_technology_mark AS INT) AS information_technology_mark_int,
       CAST(agricultural_science_mark   AS INT) AS agricultural_science_mark_int,

       total_mark,
       average_mark,

       -- Add subjects_failed column per student
       (CASE WHEN mathematics_mark < 40 THEN 1 ELSE 0 END +
        CASE WHEN physical_science_mark < 40 THEN 1 ELSE 0 END +
        CASE WHEN life_sciences_mark < 40 THEN 1 ELSE 0 END +
        CASE WHEN english_home_language_mark < 40 THEN 1 ELSE 0 END + 
        CASE WHEN life_orientation_mark < 40 THEN 1 ELSE 0 END +
        CASE WHEN information_technology_mark < 40 THEN 1 ELSE 0 END +
        CASE WHEN agricultural_science_mark < 40 THEN 1 ELSE 0 END
       ) AS subjects_failed

FROM slvr_dw.silver.prelim_science_students_marks_gr10;
-- FROM slvr_dw.silver.prelim_science_students_marks_gr11;
-- FROM slvr_dw.silver.prelim_science_students_marks_gr12;