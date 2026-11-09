-- University Database Management System

CREATE Database UniversityDB;

Use UniversityDB;

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL Check (credits > 0)
);

CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students (first_name, last_name, email) VALUES 
('Srinu', 'Chapala', 'srinu@gmail.com'),
('Ruchitha', 'Naidu', 'Ruchitha@gmail.com'),
('Amit', 'Patel', 'amit.patel@yahoo.com'),
('Sneha', 'Anjali', 'snehaanjali@gmail.com');

INSERT INTO Courses (course_name, credits) VALUES 
('Database Management Systems', 4),
('Python Programming', 3),
('Data Analytics Fundamentals', 4),
('Business Statistics', 2);

INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES 
(1, 1, '2026-09-15'),
(1, 2, '2026-09-18'),
(2, 3, '2026-10-02'),
(3, 1, '2026-10-05'),
(4, 4, '2026-10-10');
