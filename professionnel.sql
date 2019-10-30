-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 30 Octobre 2019 à 10:21
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `annuaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE IF NOT EXISTS `professionnel` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(256) DEFAULT NULL,
  `adresse` varchar(256) DEFAULT NULL,
  `codePostal` varchar(10) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `numTel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `professionnel`
--

INSERT INTO `professionnel` (`id`, `designation`, `adresse`, `codePostal`, `ville`, `numTel`) VALUES
(1, 'A D Jardins', 'la Chesnaie', '44810', 'HÉRIC', '06 15 34 69 54'),
(2, 'Alumatic', '10 r St Exupéry', '44115', 'HAUTE GOULAINE', '02 28 21 10 10'),
(3, 'B.Mag', '44 r Ernest Sauvestre', '44400', 'REZÉ', '02 51 11 80 05'),
(4, 'B''Plast', '32 av Vertonne', '44120', 'VERTOU', '02 40 57 10 10'),
(5, 'C''Zen', '7 pl Athanase Laborde', '44600', 'SAINT NAZAIRE', '02 40 53 56 96'),
(6, 'C.Gourmelon', '41 r Dupleix', '44100', 'NANTES', '02 40 65 98 70'),
(7, 'D.Pro', '30 Bis rte Vallée', '44350 ', 'GUÉRANDE', '06 79 14 72 17'),
(8, 'Di Castri', '325 bd Prairie', '44150', 'SAINT GÉRÉON', '09 61 62 84 47'),
(9, 'E=mc2monsenior', '652 rte Vaux', '44240', 'SUCÉ SUR ERDRE', '06 11 18 98 69'),
(10, 'E.Energie', '17 rte Kerhas', '44350', 'GUÉRANDE', '06 03 75 38 85'),
(11, 'F''animo', '25 L L''Avaloue', '44410', 'ASSÉRAC', '06 23 45 99 37'),
(12, 'F.ISOL.RENOV', '24 all Vinaigriers', '44300', 'NANTES', '02 72 02 04 65'),
(13, 'G.Bat', 'Hauts De Couëron r Forgerons', '44220', 'COUËRON', '06 87 88 62 43'),
(14, 'I.Code', '10 r Rubens', '44000 ', 'NANTES', '02 40 84 02 56'),
(15, 'I.Energie', '11 r Jean Rouxel, ZAC de la Pentecôte', '44700', 'ORVAULT', '02 40 13 44 44'),
(16, 'J''Ampère', '2 r Motte', '44360', 'SAINT ETIENNE DE MONTLUC', '06 70 33 44 07'),
(17, 'J''élec', '32 r Maurice Ravel', '44120 ', 'VERTOU', '07 52 67 71 68'),
(18, 'K''Bossy', '73 r Plantes', '44100 ', 'NANTES', '02 51 12 80 06'),
(19, 'K''RAID''AS', 'le Deharais', '44130', 'BOUVRON', '02 40 57 10 11'),
(20, 'L''Assise Ouest', '7 Bis r Bac', '44640', 'SAINT JEAN DE BOISEAU', '02 40 05 06 79'),
(21, 'M&Loire', '2 r René Panhard', '44700', 'ORVAULT', '09 81 22 31 93'),
(22, 'N', '2 A r Nicolas Copernic', '44400', 'REZE', '02 72 02 04 68'),
(23, 'O''plus', '46 le Norestier la Chapelle Basse Mer ', '44450', 'DIVATTE SUR LOIRE', '02 40 54 83 67'),
(24, 'O&V', '8 quai François Mitterrand', '44200', 'NANTES', '02 40 48 66 07'),
(25, 'P-Ouest', 'R Potiers r Potiers', '44330', 'VALLET', '02 28 03 93 36'),
(26, 'Redureau', '168 r Divatte Barbechat', '44450', 'DIVATTE SUR LOIRE', '02 40 33 44 44'),
(27, 'S T', '31 r Louis Le Nain', '44100', 'NANTES', '09 52 74 56 22'),
(28, 'T''café', '34 r Maurice Sambron', '44160', 'PONTCHÂTEAU', '09 66 81 35 74'),
(29, 'V-Scan', 'r Lambarde', '44550', 'MONTOIR DE BRETAGNE', '02 40 66 96 53'),
(30, 'W Hémon', '5 Ter rte Muguet', '44450', 'SAINT JULIEN DE CONCELLES', '07 67 80 17 27'),
(31, 'X Voiles', '8 all Petits Brivins', '44500', 'LA BAULE ESCOUBLAC', '02 40 60 47 52'),
(32, 'Y Akapella', '36 Clavellerie Teillé', '44440', 'TEILLÉ', '02 72 02 04 79'),
(33, 'Z''Evenements', '8 chem Doucet', '44700', 'ORVAULT', '02 40 54 83 75');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
