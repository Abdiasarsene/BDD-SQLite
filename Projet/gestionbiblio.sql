--SQLite
--Mise en place de base de la constituation de notre base de donnée sur la gestion des bibliothèque

PRAGMA foreign_keys = ON;

--Lancement des drop pour éxecuter les tables
DROP TABLE IF EXISTS emprunt;
DROP TABLE IF EXISTS emprunteur;
DROP TABLE IF EXISTS livre;

--Création des tables de notre base de onnées

    --Création de la table 'Livre'
CREATE TABLE livre (
    isbn INT PRIMARY KEY AUTOINCREMENT NOT NULL,
    titre varchar(200) NOT NULL,
    auteur varchar(100) NOT NULL,
    categorie varchar(100) NOT NULL,
    datepublication date NOT NULL,
    nbre_copie_disponible int NOT NULL
);

    --Création de la table des 'emprunteurs'
CREATE TABLE emprunteur (
    id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
    nom varchar(100) NOT NULL,
    prenom varchar(100) not NULL,
    email varchar(200) NOT NULL UNIQUE,
    tel int not null UNIQUE,
    date_inscription date not NULL
);

    --Creation de la table 'Emprunt'
CREATE TABLE emprunt (
    id int PRIMARY KEY AUTOINCREMENT NOT NULL,
    date_emprunt date NOT NULL,
    date_reyour_prevue date NOT NULL,
    statut varchar(100)
    id_emprunteur int,
    id_isbn int,
    FOREIGN KEY(id_emprunteur) REFERENCES emprunteur(id) ON DELETE CASCADE,
        FOREIGN KEY(id_isbn) REFERENCES livre(isbn) ON DELETE CASCADE,
)

--