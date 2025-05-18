-- STUDENTS RECORDS 

-- DROP TABLES IF THEY ALREADY EXIST TO AVOID CONFLICT
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;

-- STUDENTS TABLE
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,       
    first_name VARCHAR(100) NOT NULL,               
    last_name VARCHAR(100) NOT NULL,                 
    email VARCHAR(100) UNIQUE NOT NULL,             
    date_of_birth DATE                               
);


-- COURSES TABLE
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,        
    course_name VARCHAR(100) NOT NULL UNIQUE,       
    description TEXT                                 
);

-- ENROLLMENTS TABLE
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,    
    student_id INT NOT NULL,                        
    course_id INT NOT NULL,                          
    enrollment_date DATE NOT NULL,                  

    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

