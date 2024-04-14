CREATE DATABASE expt;

CREATE TABLE Ranks (
    RankID INT PRIMARY KEY AUTO_INCREMENT,
    RankName VARCHAR(50) NOT NULL
);

INSERT INTO Ranks (RankName) VALUES
(1, 'Bronze'),
(2, 'Silver'),
(3, 'Gold'),
(4, 'Platinum'),
(5, 'Diamond'),
(6, 'Master');

CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    RankID INT,
    FOREIGN KEY (RankID) REFERENCES Ranks(RankID)
);

CREATE TABLE Questions (
    QuestionID INT PRIMARY KEY AUTO_INCREMENT,
    QuestionText TEXT NOT NULL,
    DateCreated DATE NOT NULL
    );

CREATE TABLE UserScores (
    UserID INT,
    QuestionID INT,
    Score INT,
    PRIMARY KEY (UserID, QuestionID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (QuestionID) REFERENCES Questions(QuestionID)
);
