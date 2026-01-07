# Manual Testing & Data Validation – Student Enrollment Management System

## Project Overview
This repository demonstrates **manual functional testing** and **backend data validation** for a sample Student Enrollment Management System. The goal is to ensure **data accuracy**, **consistency**, and correct **business rules** through structured test case execution and SQL validation.

## Objective
- Validate core workflows such as student creation and course enrollment
- Ensure UI actions are reflected accurately in backend tables
- Identify and document functional defects with clear reproduction steps
- Perform data quality checks using SQL (duplicates, nulls, integrity checks)

## Scope of Testing
- Student creation and validation
- Course enrollment
- Enrollment status updates
- Backend data validation (students ↔ courses ↔ enrollments)

## Types of Testing
- Manual Functional Testing
- Smoke Testing
- Regression Testing
- SQL-based Data Validation

## Tools & Technologies
- Manual testing with structured test cases
- SQL validation queries (SELECT, JOIN, GROUP BY, integrity checks)
- Excel for test cases and defect documentation

## Application Under Test (Sample Schema)
**Students**
- student_id
- student_name
- email
- enrollment_date
- status

**Courses**
- course_id
- course_name
- credits
- is_active

**Enrollments**
- enrollment_id
- student_id
- course_id
- enrollment_status
- created_date

## Repository Contents
| Folder | Description |
|--------|-------------|
| `Test_Plan/` | Test strategy and scope |
| `Test_Cases/` | Manual test cases |
| `SQL_Validation/` | SQL queries for backend validation |
| `Defect_Reports/` | Defect log |
| `Screenshots/` | Optional evidence |

## How to Use
1. Review the test plan in `Test_Plan/`.
2. Execute the test cases in `Test_Cases/`.
3. Run the SQL queries in `SQL_Validation/` to validate backend data.
4. Record issues in `Defect_Reports/`.

## Author
Annapurna Matlapudi  
Junior QA Analyst (Entry-Level)
