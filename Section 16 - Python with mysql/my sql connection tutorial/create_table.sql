-- teacher, student, course
DROP DATABASE school;
CREATE DATABASE school;
USE school;

CREATE TABLE teachers(
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL
);

CREATE TABLE students(
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL
);

CREATE TABLE courses(
	id INT AUTO_INCREMENT PRIMARY KEY,
	course_name VARCHAR(100) NOT NULL UNIQUE,
	teacher_id INT NOT NULL,
	FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE classroom(
	course_id INT,
	student_id INT,
	PRIMARY KEY (course_id, student_id),
	FOREIGN KEY (course_id) REFERENCES courses(id),
	FOREIGN KEY (student_id) REFERENCES students(id)
);

SELECT * FROM teachers;
