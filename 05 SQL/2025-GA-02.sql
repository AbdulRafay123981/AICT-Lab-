-- AICTL Tasks

-- Create a database with 7 columns:
--    StudentID | FirstName | LastName | RollNumber | GPA | Section | Age
--    Include at least 10 student records.

CREATE TABLE STUDENTS
(
  StudentID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  RollNumber VARCHAR(20),
  GPA FLOAT,
  Section VARCHAR(5),
  Age INT
);

INSERT INTO STUDENTS (StudentID, FirstName, LastName, RollNumber, GPA, Section, Age) VALUES 
(1, 'Ali', 'Khan', 'CS-101', 3.8, 'A', 20),
(2, 'Sana', 'Ahmed', 'CS-102', 3.2, 'B', 17),
(3, 'Bilal', 'Raza', 'CS-103', 2.9, 'A', 19),
(4, 'Fatima', 'Zahra', 'CS-104', 3.9, 'B', 18),
(5, 'Usman', 'Shah', 'CS-105', 3.5, 'A', 21),
(6, 'Hina', 'Malik', 'CS-106', 2.7, 'C', 17),
(7, 'Omar', 'Cheema', 'CS-107', 3.1, 'A', 18),
(8, 'Ayesha', 'Khalid', 'CS-108', 3.7, 'B', 22),
(9, 'Zain', 'Ali', 'CS-109', 3.0, 'C', 19),
(10, 'Sara', 'Noor', 'CS-110', 3.6, 'A', 20);

-- Task 1: Show the FullName (FirstName + LastName) of students older than 18.

SELECT CONCAT(FirstName,' ',LastName) AS FullName
FROM STUDENTS
WHERE Age > 18;


-- Task 2: Show the FullName and RollNumber of students from Section B.

SELECT CONCAT(FirstName,' ',LastName) AS FullName, RollNumber
FROM STUDENTS
WHERE Section = 'B';


-- Task 3: Show a column (named "Section Between Name") formatted as: FirstName + Section + LastName.
SELECT CONCAT(FirstName,' ',Section,' ',LastName) AS SectionBetweenName
FROM STUDENTS;


-- Task 4: Show the RollNumber of students whose GPA is above the average.

SELECT RollNumber FROM STUDENTS
WHERE GPA > (SELECT AVG(GPA) FROM STUDENTS);


-- Task 5: Show the Full Names and Roll Numbers of students who are 18 or older, have a GPA greater than 3.0, and are in Section A.

SELECT CONCAT(FirstName,' ',LastName) AS FullName, RollNumber
FROM STUDENTS
WHERE (Section = 'A') AND (Age >= 18) AND (GPA > 3.0);