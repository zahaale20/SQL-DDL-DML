-- Alex Zaharia
-- azaharia@calpoly.edu
-- Apr 19, 2023

CREATE TABLE Continents (
    ContId INT PRIMARY KEY,
    Continent VARCHAR(255) NOT NULL
);

CREATE TABLE Countries (
    CountryId INT PRIMARY KEY,
    CountryName VARCHAR(255) NOT NULL,
    ContId INT NOT NULL,
    FOREIGN KEY (ContId) REFERENCES Continents(ContId)
);

CREATE TABLE CarMakers (
    Id INT PRIMARY KEY,
    Maker VARCHAR(255) NOT NULL,
    FullName VARCHAR(255) NOT NULL,
    CountryId INT NOT NULL,
    FOREIGN KEY (CountryId) REFERENCES Countries(CountryId)
);

CREATE TABLE CarNames (
    MakeId INT PRIMARY KEY,
    Model VARCHAR(255) NOT NULL,
    MakeDescription VARCHAR(255) NOT NULL
);

CREATE TABLE CarsData (
    Id INT NOT NULL,
    MPG INT NOT NULL,
    Cylinders INT NOT NULL,
    Edispl INT NOT NULL,
    Horsepower INT NOT NULL,
    Weight INT NOT NULL,
    Accelerate FLOAT NOT NULL,
    Year INT NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES CarNames(MakeId)
);

CREATE TABLE ModelList (
    ModelId INT PRIMARY KEY,
    Maker INT NOT NULL,
    Model VARCHAR(255) NOT NULL,
    FOREIGN KEY (Maker) REFERENCES CarMakers(Id)
);