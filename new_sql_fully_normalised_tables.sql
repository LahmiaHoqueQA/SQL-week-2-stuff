DROP SCHEMA IF EXISTS university;
CREATE SCHEMA university;

CREATE TABLE Students (SID INT NOT NULL PRIMARY KEY, S_Name VARCHAR(100));
INSERT INTO Students (SID, S_Name) VALUES (1, 'Adams'), (2, 'Jones'), (3, 'Smith'), (4, "Baker");

CREATE TABLE Courses (CID VARCHAR(10) PRIMARY KEY, C_name VARCHAR(100));
INSERT INTO Courses (CID, C_name) VALUES ('IS318', 'Database'), ('IS301', 'EC');

CREATE TABLE Faculty (F_Name VARCHAR(100) PRIMARY KEY, F_phone VARCHAR(15));
INSERT INTO Faculty (F_Name, F_Phone) VALUES ('Howser', '60192'), ('Langley', '45869');

CREATE TABLE Enrolment ( SID INT,
    CID VARCHAR(10),
    F_Name VARCHAR(100),
    Grade VARCHAR(2),
    PRIMARY KEY (SID, CID),
    FOREIGN KEY (SID) REFERENCES Students(SID),
    FOREIGN KEY (CID) REFERENCES Courses(CID),
    FOREIGN KEY (F_Name) REFERENCES Faculty(F_Name)
);

INSERT INTO Enrolment (SID, CID, F_Name, Grade)
VALUES
(1, 'IS318', 'Howser', 'A'),
(1, 'IS301', 'Langley', 'B'),
(2, 'IS318', 'Howser', 'A'),
(3, 'IS318', 'Howser', 'B'),
(4, 'IS301', 'Langley', 'A'),
(4, 'IS318', 'Howser', 'B');

