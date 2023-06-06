-- Alex Zaharia
-- azaharia@calpoly.edu
-- Apr 19, 2023

CREATE TABLE Campuses(
    Id INT PRIMARY KEY,
    Campus VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    County  VARCHAR(255) NOT NULL,
    Year INT NOT NULL,
    UNIQUE (Campus)
);

CREATE TABLE CSUFees(
    Campus INT NOT NULL,
    Year INT NOT NULL,
    CampusFee INT NOT NULL,
    UNIQUE (Campus)
);

CREATE TABLE Degrees(
    Campus INT NOT NULL,
    Year INT NOT NULL,
    Degrees INT NOT NULL,
    UNIQUE (Campus)
);

CREATE TABLE Disciplines (
    Id INT PRIMARY KEY,
    DisciplineName VARCHAR(255) NOT NULL,
    UNIQUE (DisciplineName)
);

CREATE TABLE DisciplineEnrollments (
    CampusId INT NOT NULL,
    DisciplineId INT NOT NULL,
    AcademicYear INT NOT NULL,
    UndergradEnrollment INT NOT NULL,
    GradEnrollment INT NOT NULL,
    FOREIGN KEY(CampusId) REFERENCES Campuses(Id),
    FOREIGN KEY(DisciplineId) REFERENCES Disciplines(Id),
    PRIMARY KEY (CampusId, DisciplineId, AcademicYear)
);

CREATE TABLE Enrollments (
    CampusId INT NOT NULL,
    AcademicYear INT NOT NULL,
    TotalEnrollment INT NOT NULL,
    FTE INT NOT NULL,
    FOREIGN KEY (CampusId) REFERENCES Campuses(Id),
    PRIMARY KEY (CampusId, AcademicYear)
);

CREATE TABLE Faculty (
    CampusId INT NOT NULL,
    AcademicYear INT NOT NULL,
    NumFaculty FLOAT NOT NULL,
    FOREIGN KEY (CampusId) REFERENCES Campuses(Id),
    PRIMARY KEY (CampusId, AcademicYear)
);
