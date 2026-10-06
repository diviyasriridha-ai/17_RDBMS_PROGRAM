CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(50),
    Marks INT
);

DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN p_StudentID INT,
    IN p_StudentName VARCHAR(50),
    IN p_Department VARCHAR(50),
    IN p_Marks INT
)
BEGIN
    INSERT INTO Student
    VALUES (p_StudentID, p_StudentName, p_Department, p_Marks);
END //

DELIMITER ;

CALL InsertStudent(1001, 'Arun', 'CSE', 85);

SELECT * FROM Student;
