-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  ven. 22 avr. 2022 à 18:32
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ring_fit_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `muscles`
--

DROP TABLE IF EXISTS `muscles`;
CREATE TABLE IF NOT EXISTS `muscles` (
  `idMusc` int(11) NOT NULL AUTO_INCREMENT,
  `nameMusc` varchar(50) NOT NULL,
  PRIMARY KEY (`idMusc`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `muscles`
--

INSERT INTO `muscles` (`idMusc`, `nameMusc`) VALUES
(1, 'Abdominaux'),
(2, 'Aérobie'),
(3, 'Bas du corps'),
(4, 'Bras'),
(5, 'Endurance'),
(6, 'Epaules'),
(7, 'Fessiers'),
(8, 'Flexibilité'),
(9, 'Jambes'),
(10, 'Pectoraux'),
(11, 'Posture'),
(12, 'Taille'),
(13, 'Torse'),
(14, 'Trapèzes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
