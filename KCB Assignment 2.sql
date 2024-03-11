# This query creates a new database with the name "edu_institute"
CREATE DATABASE edu_institute;

# This query creates a new table with the name "students"
# The student_id is the primary key for the table
CREATE TABLE edu_institute.students (
student_id INT PRIMARY KEY,
name VARCHAR (50),
age INT, 
gender CHAR (1), 
enrollment_date DATE, 
program VARCHAR (50)
);

# This query has five records inserted with diverse information 
INSERT INTO edu_institute.students
(student_id, name, age, gender, enrollment_date, program)
VALUES 
(1001, 'Phionah', 30, 'F', '2024-01-01', 'Law'),
(1091, 'Lynette', 29, 'F', '2024-01-10', 'Data Science'),
(789, 'Jane', 28, 'F', '2024-01-20', 'Engineering'),
(1562, 'Judy', 27, 'F', '2024-02-02', 'International Relations'),
(2057, 'Bosii', 31, 'M', '2024-02-15', 'Chemistry');

# This query selects all columns (*) for rows where the program is "Data Science."
SELECT *
FROM edu_institute.students
WHERE program = 'Data Science';

# This query counts all the rows in the students table and names the result column as "Total Students."
SELECT COUNT(*) AS total_students
FROM edu_institute.students;

# This query returns a result with a single column named "Today's Date," containing the current date. 
SELECT current_date()
FROM edu_institute.students;

# This query selects the student names in uppercase using the UPPER function and includes the enrollment dates. 
SELECT UPPER (name) AS student_names, enrollment_date
FROM edu_institute.students;

# This query counts the number of students in each program
# This query groups the results by program
# This query orders the results in descending order based on the count
SELECT program, COUNT(*) as number_of_students
FROM edu_institute.students
GROUP BY program 
ORDER BY number_of_students DESC;

# This query selects the name and age columns from the students' table
# The query orders the results by age in ascending order (which means the youngest students will appear first)
# The query uses LIMIT 1 to retrieve only the youngest student's information
SELECT name, age 
FROM edu_institute.students 
ORDER BY age ASC 
LIMIT 1;

