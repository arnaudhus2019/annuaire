
CREATE DATABASE IF NOT EXISTS annuaire;

USE annuaire;
CREATE TABLE IF NOT EXISTS professionnel(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
designation VARCHAR(256),
adresse VARCHAR(256),
codePostal VARCHAR(10),
ville VARCHAR(50),
numTel VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS particulier(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nomPrenom VARCHAR(256),
adresse VARCHAR(256),
codePostal VARCHAR(10),
ville VARCHAR(50),
numTel VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS abonnes(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
mail VARCHAR(256),
mdp VARCHAR(256),
sessions BOOLEAN,
dateConnexion VARCHAR(50)
);

USE annuaire;
INSERT INTO particulier VALUES (null, 'julie durand', '17 rue des peupliers', '44000', 'Nantes', '06 68 51 39 77');