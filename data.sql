--SQLite
--Mise en place des structures importantes

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS petitfils;
DROP TABLE IF EXISTS fils;
DROP TABLE IF EXISTS datafamily;

--Création de la table  "datafamily"
CREATE TABLE datafamily(
    id INT PRIMARY KEY AUTOINCREMENT NOT NULL,
    nom varchar(200) NOT NULL,
    prenom varchar(200) NOT NULL,
    age int NOT NULL,
    metier varchar(200) NOT NULL,
    revenu INT NOT NULL,
    caracter text
);

--Création de la table "fils"
CREATE  TABLE fils(
    id INT PRIMARY KEY AUTOINCREMENT NOT NULL,
    nom varchar(200) NOT NULL,
    prenom varchar(200) NOT NULL,
    age int NOT NULL,
    metier varchar(200) NOT NULL,
    revenu INT NOT NULL,
    propriete INT
);

-- Creation de la table sur "petitfils"
CREATE TABLE petitfils(
    id INT PRIMARY KEY AUTOINCREMENT NOT NULL,
    nom varchar(200) NOT NULL,
    prenom varchar(200) NOT NULL,
    age int NOT NULL,
    sexe CHAR(1),
    fils_id,
    FOREIGN KEY(fils) REFERENCES fils(id)ON DELETE CASCADE
);

--Insertion des données
    -- Dans la table "datafamily"
INSERT INTO datafamily (nom, prenom, age,  metier,revenu) VALUES ('Lucas','Luc',35,'Ingénieur',60000),
('Sophie','Sophie',28,'Commercial',45000), ('Esther', 'xavier' 35, 'data scientist', 100000);

    -- Dans la table "fils"
INSERT INTO fils (metier, revenu, prporiete) VALUES
('Développeur mobile',70000,NULL), ('Dev back end' 140000, 1),('Cusinier' 21000, NULL);

--Affichage des données dans la base de données

SELECT * FROM datafamily;