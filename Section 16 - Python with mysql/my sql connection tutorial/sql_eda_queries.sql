SELECT * FROM teachers;

SELECT COUNT(*) students;
SELECT COUNT(*) courses;

-- Popular course
SELECT
  course_name,
  COUNT(student_id) AS num_students
FROM classroom JOIN courses
ON classroom.course_id = courses.id
GROUP BY course_id
ORDER BY num_students DESC LIMIT 5;

-- Busiest teachers
SELECT
  CONCAT(
    teachers.first_name,
    " ",
    teachers.last_name
  ) as teacher_name,
  COUNT(courses.id) as num_courses
FROM courses RIGHT JOIN teachers
ON teachers.id = courses.teacher_id
GROUP BY teachers.id
ORDER BY num_courses DESC;

-- idle teachers
SELECT
  CONCAT(
    teachers.first_name,
    " ",
    teachers.last_name
  ) as teacher_name,
  COUNT(courses.id) AS num_courses
FROM courses RIGHT JOIN teachers
ON courses.teacher_id = teachers.id
GROUP BY teachers.id
HAVING num_courses = 0;

-- students with most courses enrolled
SELECT
  CONCAT(
    students.first_name,
    " ",
    students.last_name
  ) AS student,
  COUNT(classroom.course_id) AS num_courses
FROM students JOIN classroom
ON students.id = classroom.student_id
GROUP BY students.id
ORDER BY num_courses DESC LIMIT 5;