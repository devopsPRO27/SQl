CREATE TABLE TasKManger(
	studentId  INT ,
	courseId INT,
	FOREIGN KEY(studentId) REFERENCES   student(id),
	FOREIGN KEY(courseId) REFERENCES   course(id),
	PRIMARY KEY (studentId,courseId)
 );
 
 
 
 
 
 
 
 CREATE TABLE course(
	id  INT UNIQUE,
	courseName TEXT,
	NumberOfStudents TEXT ,
	PRIMARY KEY (id)
 );
 
 
 
 
 
 
 
 
 CREATE TABLE student(
	id  INT UNIQUE,
	name TEXT,
	size_km INT,
	lastName TEXT,
	PRIMARY KEY (id)

 );
