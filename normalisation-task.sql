create schema University;
CREATE TABLE IF NOT EXISTS student_courses (
SID INT, CID VARCHAR(10),
S_name VARCHAR(100),
C_name VARCHAR(100), 
Grade VARCHAR(2), 
F_Name VARCHAR(100),
F_phone VARCHAR(15),
PRIMARY KEY (SID));

INSERT INTO student_courses (SID, CID, S_name, C_name, Grade, F_Name, F_phone)
VALUES (1, "IS318", "Adams", "Database", "A", "Howser", "60192"),
(1, "IS318", "Adams", "EC", "B", "Langley", "45869"),
(2, "IS318", "Jones", "Database", "A", "Howser", "60192"),
(3, "IS318", "Smith", "Database", "B", "Howser", "60192"),
(4, "IS301", "Baker", "EC", "A", "Langley", "45869"),
(4, "IS318", "Baker", "Database", "B", "Howser", "60192");
