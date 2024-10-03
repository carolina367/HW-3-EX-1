# problem 0:
SELECT * FROM students;

# Basic queries
SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Gender='F' AND Age=30;
SELECT Points FROM students WHERE Name='Alex';
INSERT INTO students VALUES(147, 'Carolina', '22', 'F', 500);
UPDATE students SET Points = 500 WHERE Name='Basma';
UPDATE students SET Points = 100 WHERE Name='Alex';

# Create Table
CREATE TABLE graduates(
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM graduates WHERE Name='Layal';

# Joins
SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

# Count & Filter
select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(ID) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;

