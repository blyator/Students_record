# Student Records System 

## 📘 Description

This project is a simple relational database designed to manage basic student records. It includes tables for students, courses and enrollments, capturing which students are enrolled in which courses.


## 🛠️ How to Use

1. Open your MySQL environment (e.g., MySQL Workbench, phpMyAdmin, or terminal).
2. Start inserting sample data or building queries to interact with the database.

---

## 🧱 Tables Overview

### 1. `students`
Stores student personal information.
- `student_id` (Primary Key)
- `first_name`, `last_name`
- `email` (Unique)
- `date_of_birth`

### 2. `courses`
Stores available courses.
- `course_id` (Primary Key)
- `course_name` (Unique)
- `description`

### 3. `enrollments`
Links students to the courses they are enrolled in.
- `enrollment_id` (Primary Key)
- `student_id` (Foreign Key)
- `course_id` (Foreign Key)
- `enrollment_date`

---

## 👨‍💻 Author

Billy Yator  

---

## ✅ License

Free to use.
