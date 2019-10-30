-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 30 Octobre 2019 à 13:52
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
-- Structure de la table `abonnes`
--

CREATE TABLE IF NOT EXISTS `abonnes` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `mail` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `mdp` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `sessions` tinyint(1) DEFAULT NULL,
  `dateConnexion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `abonnes`
--

INSERT INTO `abonnes` (`id`, `mail`, `mdp`, `sessions`, `dateConnexion`) VALUES
(1, 'mathieu.dumoulin@gmail.com', '123456', NULL, NULL),
(2, 'pascal.fondain@gmail.com', '456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `particulier`
--

CREATE TABLE IF NOT EXISTS `particulier` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nomPrenom` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `adresse` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `codePostal` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ville` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `numTel` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `particulier`
--

INSERT INTO `particulier` (`id`, `nomPrenom`, `adresse`, `codePostal`, `ville`, `numTel`) VALUES
(1, 'Durand Clara', '5 r Scribe ', '44000', 'NANTES', '01 83 06 71 69'),
(2, 'Durand Dominique', '1 Ste Marie', '44680 ', 'SAINT MARS DE COUTAIS', '02 28 00 09 01'),
(3, 'Durand Patrick', '22 r Vincent Van Gogh', '44400', 'REZÉ', '02 28 01 31 85'),
(4, 'Durand Jean-Paul', '1 sq Verdun', '44230', 'SAINT SÉBASTIEN SUR LOIRE', '02 28 01 77 30'),
(5, 'Martin Jérôme ', '22 r César Franck', '44000', 'NANTES', '02 40 14 49 56'),
(6, 'Martin Gilles', 'r Henri Becquerel', '44210', 'PORNIC', '02 40 39 10 01'),
(7, 'Martin Béatrice', '6 r de Saint Servan, 44800 SAINT HERBLAIN', '44800', 'SAINT HERBLAIN', '02 40 58 57 01'),
(8, 'Martin Loïc', '1 imp Claude Mollet', '44120', 'VERTOU', '02 40 80 30 82'),
(9, 'Arthur Rémy', '19 Bis r Léon Jost', '44300', 'NANTES', '02 28 30 47 07'),
(10, 'Arthur David ', '5 imp Iris', '44690 ', 'MAISDON SUR SÈVRE', '06 86 86 68 16'),
(11, 'Boue Gilbert', 'bât B 47 Bis r Henri Barbusse', '44400', 'REZÉ', '02 28 00 06 57'),
(12, 'Barnes Thomas', '19 bd Am Courbet', '44000', 'NANTES', '09 53 02 09 06'),
(13, 'Pare Vincent', '2 r François Evellin', '44000', 'NANTES', '02 28 24 66 21'),
(14, 'Prié Anaïs', '69 St Michel', '44750', 'CAMPBON', '02 40 34 17 62'),
(15, 'Faux Jean-Marc', '1 av Rouet', '44380 ', 'PORNICHET', '02 44 07 50 59'),
(16, 'Flat Jean-Claude', '12 Bis av Mouettes', '44760', 'BERNERIE EN RETZ (LA)', '02 40 21 28 14'),
(17, 'Jambou Marie', '2 imp Clément Ader', '44150', 'VAIR SUR LOIRE', '02 40 98 45 86'),
(18, 'Jalta Gilbert', '1 r Pierre Etienne Flandin', '44200', ' NANTES', '02 55 10 24 08'),
(19, 'Sotin Xavier', '44 r Wolfgang Amadeus Mozart', '44600', 'SAINT NAZAIRE', '02 40 00 15 79'),
(20, 'Sarot Joël', '211 la Perthuisiere', '44690', 'MAISDON SUR SÈVRE', '02 40 06 68 13'),
(21, 'Valentin Grégory', '19 Les Brosses', '44270', 'PAULX', '02 28 25 12 61'),
(22, 'Vila Olivier', '11 r Acheneau', '44680', 'SAINT MARS DE COUTAIS', '02 28 01 10 40'),
(23, 'Yves Michaël', '19 Bis r Courtils', '44690', 'LA HAYE FOUASSIÈRE', '02 40 04 07 95'),
(24, 'Yves Eléna', '1 r Rhône', '44100', 'NANTES', '02 53 45 73 14'),
(25, 'julie durand', '17 rue des peupliers', '44000', 'Nantes', '06 68 51 39 77');

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE IF NOT EXISTS `professionnel` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `adresse` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `codePostal` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ville` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `numTel` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

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
