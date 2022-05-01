-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Dim 01 Mai 2022 à 17:33
-- Version du serveur :  5.7.30-log
-- Version de PHP :  7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `flavie.enrico_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `rfa_categories`
--

CREATE TABLE `rfa_categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_ennemis`
--

CREATE TABLE `rfa_ennemis` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `apparence` text NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_exercices`
--

CREATE TABLE `rfa_exercices` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `rechargement` int(11) NOT NULL,
  `attaque` int(11) NOT NULL,
  `portée` int(11) NOT NULL,
  `methode` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_exercices_has_muscles`
--

CREATE TABLE `rfa_exercices_has_muscles` (
  `id_exercice` int(11) NOT NULL,
  `id_muscle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_ingredients`
--

CREATE TABLE `rfa_ingredients` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_monde`
--

CREATE TABLE `rfa_monde` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `rfa_monde`
--

INSERT INTO `rfa_monde` (`id`, `nom`, `description`, `image`) VALUES
(1, 'In the First Place', 'In the First Place is World 1 in Ring Fit Adventure. It takes place after the Ring Fit Trainee frees Dragaux and joins forces with Ring.\r\n\r\n\r\nWhen the world is revisited in Extra Fitness and Fitness Master, Dragaux welcomes Ring and Ring Fit Trainee and gives them the Dragon Breaker set Level 4 Fit Skills, respectively.', '');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_muscles`
--

CREATE TABLE `rfa_muscles` (
  `id` int(11) NOT NULL,
  `nom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_niveaux`
--

CREATE TABLE `rfa_niveaux` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `id_monde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_personnages`
--

CREATE TABLE `rfa_personnages` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `surnom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `personnalite` int(11) NOT NULL,
  `image` text NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_personnages_has_ennemis`
--

CREATE TABLE `rfa_personnages_has_ennemis` (
  `id_personnage` int(11) NOT NULL,
  `id_ennemi` int(11) NOT NULL,
  `est_allie` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_smoothies`
--

CREATE TABLE `rfa_smoothies` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `soin` int(11) NOT NULL,
  `effet` varchar(256) NOT NULL,
  `prix_achat` int(11) NOT NULL,
  `prix_vente` int(11) NOT NULL,
  `recette` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rfa_smoothies_has_ingredients`
--

CREATE TABLE `rfa_smoothies_has_ingredients` (
  `id_smoothie` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `rfa_categories`
--
ALTER TABLE `rfa_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rfa_ennemis`
--
ALTER TABLE `rfa_ennemis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rfa_exercices`
--
ALTER TABLE `rfa_exercices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `rfa_exercices_has_muscles`
--
ALTER TABLE `rfa_exercices_has_muscles`
  ADD KEY `id_exercice` (`id_exercice`),
  ADD KEY `id_muscle` (`id_muscle`);

--
-- Index pour la table `rfa_ingredients`
--
ALTER TABLE `rfa_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rfa_monde`
--
ALTER TABLE `rfa_monde`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rfa_muscles`
--
ALTER TABLE `rfa_muscles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rfa_niveaux`
--
ALTER TABLE `rfa_niveaux`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_monde` (`id_monde`);

--
-- Index pour la table `rfa_personnages`
--
ALTER TABLE `rfa_personnages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `rfa_personnages_has_ennemis`
--
ALTER TABLE `rfa_personnages_has_ennemis`
  ADD KEY `id_personnage` (`id_personnage`),
  ADD KEY `id_ennemi` (`id_ennemi`);

--
-- Index pour la table `rfa_smoothies`
--
ALTER TABLE `rfa_smoothies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rfa_smoothies_has_ingredients`
--
ALTER TABLE `rfa_smoothies_has_ingredients`
  ADD KEY `id_smoothie` (`id_smoothie`),
  ADD KEY `id_ingredient` (`id_ingredient`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `rfa_categories`
--
ALTER TABLE `rfa_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rfa_ennemis`
--
ALTER TABLE `rfa_ennemis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rfa_exercices`
--
ALTER TABLE `rfa_exercices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rfa_ingredients`
--
ALTER TABLE `rfa_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rfa_monde`
--
ALTER TABLE `rfa_monde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `rfa_muscles`
--
ALTER TABLE `rfa_muscles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rfa_niveaux`
--
ALTER TABLE `rfa_niveaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rfa_personnages`
--
ALTER TABLE `rfa_personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rfa_smoothies`
--
ALTER TABLE `rfa_smoothies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `rfa_exercices`
--
ALTER TABLE `rfa_exercices`
  ADD CONSTRAINT `rfa_exercices_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `rfa_categories` (`id`);

--
-- Contraintes pour la table `rfa_exercices_has_muscles`
--
ALTER TABLE `rfa_exercices_has_muscles`
  ADD CONSTRAINT `rfa_exercices_has_muscles_ibfk_1` FOREIGN KEY (`id_exercice`) REFERENCES `rfa_exercices` (`id`),
  ADD CONSTRAINT `rfa_exercices_has_muscles_ibfk_2` FOREIGN KEY (`id_muscle`) REFERENCES `rfa_muscles` (`id`);

--
-- Contraintes pour la table `rfa_niveaux`
--
ALTER TABLE `rfa_niveaux`
  ADD CONSTRAINT `rfa_niveaux_ibfk_1` FOREIGN KEY (`id_monde`) REFERENCES `rfa_monde` (`id`);

--
-- Contraintes pour la table `rfa_personnages`
--
ALTER TABLE `rfa_personnages`
  ADD CONSTRAINT `rfa_personnages_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `rfa_categories` (`id`);

--
-- Contraintes pour la table `rfa_personnages_has_ennemis`
--
ALTER TABLE `rfa_personnages_has_ennemis`
  ADD CONSTRAINT `rfa_personnages_has_ennemis_ibfk_1` FOREIGN KEY (`id_personnage`) REFERENCES `rfa_personnages` (`id`),
  ADD CONSTRAINT `rfa_personnages_has_ennemis_ibfk_2` FOREIGN KEY (`id_ennemi`) REFERENCES `rfa_ennemis` (`id`);

--
-- Contraintes pour la table `rfa_smoothies_has_ingredients`
--
ALTER TABLE `rfa_smoothies_has_ingredients`
  ADD CONSTRAINT `rfa_smoothies_has_ingredients_ibfk_1` FOREIGN KEY (`id_smoothie`) REFERENCES `rfa_smoothies` (`id`),
  ADD CONSTRAINT `rfa_smoothies_has_ingredients_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `rfa_ingredients` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
