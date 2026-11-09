-- ============================================================
-- UNIVERSITY DATABASE MANAGEMENT SYSTEM - SAMPLE QUERIES
-- ============================================================

-- ------------------------------------------------------------
-- 1. BASIC DATA RETRIEVAL (Select All Records)
-- ------------------------------------------------------------

-- Query 1: Retrieve all records from the Students table
SELECT * 
FROM Students;

-- Query 2: Retrieve all records from the Courses table
SELECT * 
FROM Courses;

-- Query 3: Retrieve all records from the Enrollments table
SELECT * 
FROM Enrollments;


-- ------------------------------------------------------------
-- 2. FILTERING & SORTING QUERIES
-- ------------------------------------------------------------

-- Query 4: Filter students by Gmail email addresses
SELECT first_name, last_name, email
FROM Students
WHERE email LIKE '%@gmail.com%';

-- Query 5: Retrieve all courses sorted by credits in descending order
SELECT course_name, credits
FROM Courses
ORDER BY credits DESC;

-- Query 6: Retrieve courses with more than 3 credits sorted alphabetically
SELECT *
FROM Courses
WHERE credits > 3
ORDER BY course_name ASC;

-- Query 7: Retrieve enrollments registered after October 1st, 2026
SELECT student_id, course_id, enrollment_date
FROM Enrollments
WHERE enrollment_date > '2026-10-01'
ORDER BY enrollment_date DESC;


-- ------------------------------------------------------------
-- 3. RELATIONAL JOIN QUERY
-- ------------------------------------------------------------

-- Query 8: Select all enrollments with detailed student and course information
SELECT 
    e.enrollment_id,
    s.first_name,
    s.last_name,
    s.email,
    c.course_name,
    c.credits,
    e.enrollment_date
FROM Enrollments e
INNER JOIN Students s ON e.student_id = s.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;
