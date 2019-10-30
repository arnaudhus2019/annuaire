-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 30 Octobre 2019 à 10:20
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
  `mail` varchar(256) DEFAULT NULL,
  `mdp` varchar(256) DEFAULT NULL,
  `sessions` tinyint(1) DEFAULT NULL,
  `dateConnexion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `abonnes`
--

INSERT INTO `abonnes` (`id`, `mail`, `mdp`, `sessions`, `dateConnexion`) VALUES
(1, 'mathieu.dumoulin@gmail.com', '123456', NULL, NULL),
(2, 'pascal.fondain@gmail.com', '456789', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
