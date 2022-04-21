--------------------------------------
---------- RING FIT PROJECT ----------
--------------------------------------
-------- create-database.sql ---------
--------------------------------------

-- Creating the database --

DROP DATABASE IF EXISTS ring_fit_project;
CREATE DATABASE IF NOT EXISTS ring_fit_project;

USE ring_fit_project;

-- Creating static tables --

CREATE TABLE Muscles(
   idMusc INT AUTO_INCREMENT,
   nameMusc VARCHAR(50) NOT NULL,
   PRIMARY KEY(idMusc)
);

CREATE TABLE categories(
   idCat INT AUTO_INCREMENT,
   nameCat VARCHAR(50),
   PRIMARY KEY(idCat)
);

CREATE TABLE Monde(
   idMonde INT AUTO_INCREMENT,
   nameMonde VARCHAR(256),
   descMonde TEXT,
   imgMonde TEXT,
   PRIMARY KEY(idMonde)
);


CREATE TABLE Ennemis(
   idEn INT AUTO_INCREMENT,
   nameEn VARCHAR(50),
   descEn TEXT,
   look TEXT,
   imgEn TEXT,
   PRIMARY KEY(idEn)
);

CREATE TABLE Smoothies(
   idSmoothies INT AUTO_INCREMENT,
   nameSmoothie VARCHAR(256),
   recovery DECIMAL(5,2),
   effects TEXT,
   buying_price INT,
   selling_price INT,
   recipe VARCHAR(256),
   imgSmoothie TEXT,
   PRIMARY KEY(idSmoothies)
);

CREATE TABLE Ingredients(
   idIng INT AUTO_INCREMENT,
   nameIng VARCHAR(256),
   PRIMARY KEY(idIng)
);

CREATE TABLE Commentaires(
   idCom INT AUTO_INCREMENT,
   pseudo VARCHAR(50) NOT NULL,
   texte TEXT,
   dateCom DATE,
   PRIMARY KEY(idCom)
);

-- Creating semi-static tables --

CREATE TABLE Levels(
   idLevel INT AUTO_INCREMENT,
   nameLevel VARCHAR(256),
   descLevel TEXT,
   idMonde INT NOT NULL,
   PRIMARY KEY(idLevel),
   FOREIGN KEY(idMonde) REFERENCES Monde(idMonde)
);

CREATE TABLE Personnages(
   idPerso INT AUTO_INCREMENT,
   namePerso VARCHAR(50),
   nickname VARCHAR(50),
   descPers TEXT,
   personnality TEXT,
   imgPerso TEXT,
   idCat INT,
   PRIMARY KEY(idPerso),
   FOREIGN KEY(idCat) REFERENCES categories(idCat)
);


CREATE TABLE Exercices(
   idEx INT AUTO_INCREMENT,
   nameEx VARCHAR(100) NOT NULL,
   descEx TEXT,
   cooldown INT,
   attack INT,
   range_attack INT,
   how_to_do TEXT,
   imgEx TEXT,
   idCat INT NOT NULL,
   PRIMARY KEY(idEx),
   FOREIGN KEY(idCat) REFERENCES categories(idCat)
);

-- Creating dynamic tables --

CREATE TABLE Ennemis_Personnages(
   idPerso INT,
   idEn INT,
   isAlly BOOLEAN,
   PRIMARY KEY(idPerso, idEn),
   FOREIGN KEY(idPerso) REFERENCES Personnages(idPerso),
   FOREIGN KEY(idEn) REFERENCES Ennemis(idEn)
);

CREATE TABLE Exercice_Muscles(
   idMusc INT,
   idEx INT,
   PRIMARY KEY(idMusc, idEx),
   FOREIGN KEY(idMusc) REFERENCES Muscles(idMusc),
   FOREIGN KEY(idEx) REFERENCES Exercices(idEx)
);

CREATE TABLE Ingredients_Smoothies(
   idSmoothies INT,
   idIng INT,
   quantite INT,
   PRIMARY KEY(idSmoothies, idIng),
   FOREIGN KEY(idSmoothies) REFERENCES Smoothies(idSmoothies),
   FOREIGN KEY(idIng) REFERENCES Ingredients(idIng)
);
