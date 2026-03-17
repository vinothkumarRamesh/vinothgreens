Create database stored_procedures;

Use stored_procedures;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    dept_id INT
);

INSERT INTO Students (student_id, student_name, dept_id) VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 10),
(4, 'David', 30),
(5, 'Eva', 20);

select * from students;

CREATE PROCEDURE GetStudentsByDept
    @dept INT
AS
BEGIN
    SELECT student_id, student_name, dept_id
    FROM Students
    WHERE dept_id = @dept;
END
GO

-- To call the procedure:
EXEC GetStudentsByDept 10;