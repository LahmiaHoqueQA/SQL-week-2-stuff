-- create schema superheroes;
use superheroes;
create table if not exists heroes (hero_id int auto_increment PRIMARY KEY, FirstName varchar(50) NOT NULL, LastName varchar(50) NOT NULL, Alias varchar(50) NOT NULL, Ability varchar(70), TeamID int NOT NULL, FOREIGN KEY (TeamID) REFERENCES Team (TeamID));
create table if not exists Team (TeamID int PRIMARY KEY NOT NULL auto_increment, Name varchar(50) NOT NULL, Objective varchar(200) NOT NULL);
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO heroes (hero_id, FirstName, LastName, Alias, Ability, TeamID) VALUES (1, 'Bruce', 'Wayne', 'Batman', 'Martial Arts', 1);
INSERT INTO heroes (hero_id, FirstName, LastName, Alias, Ability, TeamID) 
VALUES (2, 'Clark', 'Kent', 'Superman', 'Flight', 1), 
(3, 'Jay', 'Garrick', 'The Flash', 'Super-Speed', 2), 
(4, 'Alan', 'Scott', 'Green Lantern', 'Ring Creation', 2), 
(5, 'Helena', 'Bertinelli', 'The Huntress', 'Crossbow Archery', 3), 
(6, 'Harleen', 'Quinzel', 'Harley Quinn', 'Hammer Fighting', 3), 
(7, 'Floyd', 'Lawton', 'Deadshot', 'Marksmanship', 4), 
(8, 'Cecil', 'Adams', 'Count Vertigo', 'Induce dizziness', 4), 
(9, 'Damian', 'Wayne', 'Robin', 'Swordsmanship', 5), 
(10, 'Dick', 'Grayson', 'Nightwing', 'Acrobatics', 5);

INSERT INTO Team (TeamID, Name, Objective) VALUES (1, "JLA", "Protect the World"), (2, "JSA", "Defeat the Nazis"), (3, "Birds of Prey", "Fight crime (without men)"), (4, "Task Force X", "Follow Waller's orders or die"), (5, "Teen Titans", "Teach young superheroes to be their best")
SET FOREIGN_KEY_CHECKS=1;

INSERT INTO Team (TeamID, Name, Objective) VALUES (6, "Gin Makers", "Make the most delicious gin in the world.");

INSERT INTO heroes (hero_id, FirstName, LastName, Alias, Ability, TeamID) VALUES (11, "Victoria", "Lloyd", "Gintastic", "Mixing Botanicals", 6), (12, "Paul", "Mercer", "Juniperman", "Harvesting Juniper berries.", 6);

DROP TABLE superheroes.ratings;

UPDATE Team 
SET Name = 'Cohort 2', Objective = 'Learn a lot of stuff.' 
WHERE TeamID = 7;

SELECT * FROM Team;

INSERT INTO Team (TeamID, Name, Objective) Values (7, "CatDog", "being good furbabies");

UPDATE Team set Name = "Cohort 2", Objective = "Learn lots of stuff" WHERE TeamID = 7;

DELETE FROM Team where TeamID = 7;

TRUNCATE TABLE Heroes;

INSERT INTO heroes (hero_id, FirstName, LastName, Alias, Ability, TeamID) 
VALUES (2, 'Clark', 'Kent', 'Superman', 'Flight', 1), 
(3, 'Jay', 'Garrick', 'The Flash', 'Super-Speed', 2), 
(4, 'Alan', 'Scott', 'Green Lantern', 'Ring Creation', 2), 
(5, 'Helena', 'Bertinelli', 'The Huntress', 'Crossbow Archery', 3), 
(6, 'Harleen', 'Quinzel', 'Harley Quinn', 'Hammer Fighting', 3), 
(7, 'Floyd', 'Lawton', 'Deadshot', 'Marksmanship', 4), 
(8, 'Cecil', 'Adams', 'Count Vertigo', 'Induce dizziness', 4), 
(9, 'Damian', 'Wayne', 'Robin', 'Swordsmanship', 5), 
(10, 'Dick', 'Grayson', 'Nightwing', 'Acrobatics', 5);
INSERT INTO heroes (hero_id, FirstName, LastName, Alias, Ability, TeamID) VALUES (1, 'Bruce', 'Wayne', 'Batman', 'Martial Arts', 1);

CREATE TABLE IF NOT EXISTS Product (
    ProductID INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(80),
    Colour VARCHAR(30),
    StandardCost FLOAT,
    ListPrice FLOAT,
    DateFirstAvailable DATE,
    PRIMARY KEY (ProductID)
);

INSERT INTO Product (ProductID, ProductName, Colour, StandardCost, ListPrice, DateFirstAvailable)
VALUES (1, "Star Widget", "Silver", "15.70", "11.80", "2024-08-19"),
(2, "Rocket Widget", "Red", "8.90", "7.90", "2024-10-22"),
(3, "Flying Widget", "Teal", "22.50", "17.50", "2024-11-15"),
(4, "Spinning Widget", "Green", "5.50", "4.40", "2024-12-09"),
(5, "Rainbow Widget", "Multicolour", "9.99", "7.99", "2024-06-18"),
(6, "Flying Unicorn", "Purple Glitter", "18.99", "12.99", "2024-04-20"),
(7, "Rainbow Unicorn", "Multicolour", "15.00", "12.00", "2024-06-15"),
(8, "Golden Unicorn", "Gold", "30.00", "25.00", "2024-12-25"),
(9, "Pointy Shuriken", "Gunmetal Grey", "25.00", "22.50", "2024-01-17"),
(10, "Compound Bow", "Purple", "50.00", "45.00", "2024-09-03");

ALTER TABLE heroes ADD ProductID int;
UPDATE Heroes set ProductID = 1 WHERE Alias = "The Flash";
UPDATE Heroes set ProductID = 2 WHERE Alias = "Count Vertigo";
UPDATE Heroes set ProductID = 3 WHERE Alias = "Superman";
UPDATE Heroes set ProductID = 4 WHERE Alias = "Deadshot";
UPDATE Heroes set ProductID = 5 WHERE Alias = "Nightwing";
UPDATE Heroes set ProductID = 6 WHERE Alias = "Green Lantern";
UPDATE Heroes set ProductID = 7 WHERE Alias = "Batman";
UPDATE Heroes set ProductID = 8 WHERE Alias = "Harley Quinn";
UPDATE Heroes set ProductID = 9 WHERE Alias = "Robin";
UPDATE Heroes set ProductID = 10 where Alias = "The Huntress";

DESCRIBE Heroes;
ALTER TABLE heroes
ADD CONSTRAINT FK_Heroes_Product
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

UPDATE Heroes set ProductID = 1 WHERE Alias = "The Flash";
UPDATE Heroes set ProductID = 2 WHERE Alias = "Count Vertigo";
UPDATE Heroes set ProductID = 3 WHERE Alias = "Superman";
UPDATE Heroes set ProductID = 4 WHERE Alias = "Deadshot";
UPDATE Heroes set ProductID = 5 WHERE Alias = "Nightwing";
UPDATE Heroes set ProductID = 6 WHERE Alias = "Green Lantern";
UPDATE Heroes set ProductID = 7 WHERE Alias = "Batman";
UPDATE Heroes set ProductID = 8 WHERE Alias = "Harley Quinn";
UPDATE Heroes set ProductID = 9 WHERE Alias = "Robin";
UPDATE Heroes set ProductID = 10 where Alias = "The Huntress";

SELECT h.FirstName, h.LastName, h.Alias, h.Ability, t.Name as TeamName, t.Objective as TeamObjective, p.ProductName, p.Colour, p.ListPrice FROM heroes h JOIN Team t ON h.TeamID = t.TeamID JOIN Product p on h.ProductID = p.ProductID Where h.Alias = "The Huntress";





CREATE VIEW JLA_Team AS
SELECT h.FirstName, h.LastName, h.Alias, h.Ability,
t.Name AS TeamName, t.Objective as TeamObjective,
p.ProductName, p.Colour, p.ListPrice
FROM heroes h
JOIN Team t on h.TeamID = t.TeamID
JOIN Product p on h.ProductID = p.ProductID 
WHERE t.Name = "JLA";
