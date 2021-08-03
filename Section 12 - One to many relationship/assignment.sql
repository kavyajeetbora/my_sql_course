-- students table
CREATE TABLE students (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_name VARCHAR(100) NOT NULL
);

-- papers table
CREATE TABLE papers (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200),
  grade INT,
  student_id INT,
  FOREIGN KEY(student_id) REFERENCES students(id)
);

-- insert values into the student's table
INSERT INTO
  students (student_name)
  VALUES
    ("Caleb"),
    ("Samantha"),
    ("Raj"),
    ("Carlos"),
    ("Lisa");

-- insert values into the paper's table
INSERT INTO papers (student_id, title, grade)
VALUES
(1, "My First Book Report", 60),
(1, "My Second Book Report", 75),
(2, "Russian Lit Through The Ages", 94),
(2, "De Montaigne and The Art of The Essay", 98),
(4, "Borges and Magical Realism", 89);

SELECT * FROM students;
SELECT * FROM papers;

-- Print out the student name, title and the marks
-- Join the tables with inner joins
SELECT student_name, title, grade
FROM students JOIN papers ON
students.id = papers.student_id
ORDER BY grade DESC;

-- display all the students with corresponding grades
-- irrespective of whether the student has been graded or not
-- Here we will use left Join
SELECT student_name, title, grade
FROM students LEFT JOIN papers
ON students.id = papers.student_id;

-- fill in the null values with title = "Missing" and grade=0
SELECT
  student_name,
  IFNULL(title, "MSSING"),
  IFNULL(grade,0)
FROM students LEFT JOIN papers
ON students.id = papers.student_id;

-- find out the average grade for all the students
SELECT
  student_name,
  AVG(
    IFNULL(grade,0)
  ) as average
FROM students LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

-- add another column called passing_status
-- if grade > 75 "passing" or else "failing"
SELECT
  student_name,
  AVG(
    IFNULL(grade,0)
  ) as average,
  CASE
    WHEN grade > 75 THEN "PASSING"
    ELSE "FAILING"
  END AS "passing_status"
FROM students LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;
