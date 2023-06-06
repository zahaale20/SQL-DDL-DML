-- Alex Zaharia
-- azaharia@calpoly.edu
-- Apr 19, 2023

CREATE TABLE list (
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    Grade INT NOT NULL,
    Classroom INT NOT NULL
);

CREATE TABLE teachers (
    Id INT PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    Classroom INT NOT NULL
);