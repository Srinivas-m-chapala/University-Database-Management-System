# University Database Management System

## Overview
A relational database system designed to track student enrollment across various university courses. This project models student profiles, course offerings, and enrollment records, enforcing data integrity through primary keys, foreign keys, and column constraints.

## Database Schema
The system consists of three main tables:

1. **Students**: Stores student details including Student ID (Primary Key), First Name, Last Name, and Email.
2. **Courses**: Details available academic courses, Course ID (Primary Key), Course Name, and Credits (with a CHECK constraint ensuring credits > 0).
3. **Enrollments**: Serves as a bridge table tracking course sign-ups, containing Enrollment ID (Primary Key), Student ID (Foreign Key), Course ID (Foreign Key), and Enrollment Date.

## Key Features & SQL Techniques Used
* **Data Definition Language (DDL)**: Table creation using auto-incrementing primary keys and field constraints.
* **Referential Integrity**: Implemented foreign key references linking Enrollments to Students and Courses.
* **Domain Integrity**: Applied `CHECK (credits > 0)` to prevent invalid credit values.
* **Data Manipulation Language (DML)**: Inserted sample records to simulate active university enrollment data.
* **Relational Querying**: Implemented `INNER JOIN` operations to aggregate student and course data into unified enrollment views.

## How to Run
1. Execute `university_schema.sql` in your SQL environment (e.g., MySQL workbench, DB Fiddle) to create tables and populate initial records.
2. Run `university_queries.sql` to execute analytical queries and review enrollment reports.

