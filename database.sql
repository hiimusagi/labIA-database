create database grade_report;

use grade_report;

CREATE TABLE curriculums (
  curriculum_id INT PRIMARY KEY AUTO_INCREMENT,
  curriculum_code VARCHAR(10),
  curriculum_name NVARCHAR(50)
);

CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  passwords NVARCHAR(50) NOT NULL,
  roles INT,
  email NVARCHAR(50)
);

CREATE TABLE student (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  student_name NVARCHAR(50),
  curriculum_id INT,
  user_id INT,
  FOREIGN KEY (curriculum_id) REFERENCES curriculums(curriculum_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE lecture (
  lecture_id INT PRIMARY KEY AUTO_INCREMENT,
  lecture_name NVARCHAR(50),
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE term (
  term_id INT PRIMARY KEY,
  curriculum_id INT,
  FOREIGN KEY (curriculum_id) REFERENCES curriculums(curriculum_id)
);

CREATE TABLE subjects (
  subject_id INT PRIMARY KEY,
  term_id INT NOT NULL,
  subject_name NVARCHAR(50) NOT NULL,
  credits INT NOT NULL,
  FOREIGN KEY (term_id) REFERENCES term(term_id)
);

CREATE TABLE assessments (
  assessment_id INT PRIMARY KEY,
  subject_id INT,
  student_id INT,
  assessment_type VARCHAR(50) NOT NULL,
  assessment_grade INT NOT NULL,
  FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
  FOREIGN KEY (student_id) REFERENCES student(student_id)
);
