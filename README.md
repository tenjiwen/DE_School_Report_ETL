# DE\_School\_Report\_ETL

School Report ETL

Source file: prelim\_science\_students\_marks.csv (100 students, 7 subjects, wide format). This is the only file provided. You split it and build the layers yourself — nothing below is pre-built for you.



## Goal

Take the flat CSV and produce a Bronze → Silver → Gold warehouse, split by grade band (10 / 11 / 12), following the Medallion Architecture.

What each layer must do:

**Bronze — raw, split, untouched:**
Split the source CSV into 3 files/tables by grade band (10, 11, 12).
No cleaning, no casting, no new columns — copy values as-is.
Purpose: preserve exactly what was received, per grade, so any downstream bug can be traced back to unmodified source data.

**Silver — cleaned, typed, conformed**
Trim/title-case student\_name.
Cast all 7 subject marks to integers.
Add grade\_band (derived from grade, e.g. "10A" → "10").
Derive subjects\_failed = count of subjects with mark < 40.
Derive overall\_result = "FAIL" if subjects\_failed > 0 else "PASS".
Still split by grade band, one clean table per grade.

**Gold — aggregated, reporting-ready**
grade\_summary: one row per grade band — student count, average of averages, pass count, fail count, pass rate %.
subject\_performance: one row per grade band × subject — average, min, max mark, and fail count for that subject.
No row-level student detail at this layer — only aggregates.

