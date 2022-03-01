SELECT * from Country 
WHERE size_km > (SELECT id FROM student where name = "hodi")



INSERT INTO TasKManger
VALUES((SELECT id from student where name="vlad"),(SELECT id from courses where courseName= "docker"))

INSERT INTO TasKManger
VALUES(2,7)


INSERT into courses
VALUES (6,"jenkins",0)


INSERT into student(id,name,lastName,year)
VALUES (3,"vlad","devops",2)


SELECT DISTINCT * from student 
inner join TasKManger
On TasKManger.studentId=student.id
