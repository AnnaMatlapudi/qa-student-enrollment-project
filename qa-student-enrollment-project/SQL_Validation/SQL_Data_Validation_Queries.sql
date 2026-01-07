-- SQL Data Validation Queries (Sample)
-- Student Enrollment Management System

-- 1) Validate a student record exists (replace 201 with your student_id)
SELECT *
FROM students
WHERE student_id = 201;

-- 2) Validate a course record exists (replace 301 with your course_id)
SELECT *
FROM courses
WHERE course_id = 301;

-- 3) Validate enrollment exists (replace 501 with your enrollment_id)
SELECT *
FROM enrollments
WHERE enrollment_id = 501;

-- 4) Validate enrollment mapping (student ↔ course)
SELECT e.enrollment_id,
       s.student_id, s.student_name, s.email,
       c.course_id, c.course_name,
       e.enrollment_status
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses  c ON e.course_id  = c.course_id
WHERE e.enrollment_id = 501;

-- 5) Detect duplicate students by email
SELECT email, COUNT(*) AS cnt
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- 6) Students without enrollments
SELECT s.student_id, s.student_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;

-- 7) Orphan enrollments (invalid foreign keys)
SELECT e.enrollment_id, e.student_id, e.course_id
FROM enrollments e
LEFT JOIN students s ON e.student_id = s.student_id
LEFT JOIN courses  c ON e.course_id  = c.course_id
WHERE s.student_id IS NULL OR c.course_id IS NULL;

-- 8) Validate enrollment_status is within allowed values
SELECT *
FROM enrollments
WHERE enrollment_status NOT IN ('ACTIVE','DROPPED','COMPLETED');

-- 9) Validate active course rule (example: no enrollment into inactive courses)
SELECT e.enrollment_id, e.course_id, c.is_active
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
WHERE c.is_active = 0;
