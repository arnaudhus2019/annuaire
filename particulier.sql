-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 30 Octobre 2019 à 13:55
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
