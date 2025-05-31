CREATE TABLE IF NOT EXISTS students (
    student_id VARCHAR(30) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL, 
    gender VARCHAR(10), 
    math_score FLOAT, 
    english_score FLOAT,
    science_score FLOAT, 
    attendance_rate FLOAT, 
    term VARCHAR(10), 
    gpa FLOAT, 
    risk_score INT,
    engagement_level VARCHAR(20)
);

CREATE TABLE top_students (
    id SERIAL PRIMARY KEY,
    student_id VARCHAR(30),
    full_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    gpa FLOAT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE at_risk_students (
    id SERIAL PRIMARY KEY,
    student_id VARCHAR(30),
    full_name VARCHAR(100),
    risk_score INT,
    engagement_level VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);