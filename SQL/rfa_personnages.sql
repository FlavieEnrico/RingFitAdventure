-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 mai 2022 à 09:58
-- Version du serveur :  10.4.10-MariaDB
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
-- Base de données :  `flavie_enrico_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `rfa_personnages`
--

DROP TABLE IF EXISTS `rfa_personnages`;
CREATE TABLE IF NOT EXISTS `rfa_personnages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  `surnom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `personnalite` text NOT NULL,
  `image` text NOT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_personnages`
--

INSERT INTO `rfa_personnages` (`id`, `nom`, `surnom`, `description`, `personnalite`, `image`, `id_categorie`) VALUES
(1, 'Ring Fit Trainee', '', 'Ring Fit Trainee is the main character and player of Ring Fit Adventure. They, along with Ring, are on a journey to take down Dragaux.\r\nThe Ring Fit Trainee resembles a young woman/man with orange hair that resembles a flame during workout sessions. Both wear black and orange fitness sneakers and calf-top leggings. The male trainee wears a full body tank top while the female trainee wears a sports bra.', '', '', 5),
(2, 'Allegra', 'The Legs Master', 'Allegra is a character in Ring Fit Adventure. She is one of The Four Masters.\r\n\r\nShe is based around Leg Fit Skills.\r\n\r\nAllegra is a tall woman with blue hair tied high to a lens shape and magenta eyes. She wears a long-sleeved blue shirt with the leg symbol on it and black circular patterns are seen in the sleeves, with a black belt which is tied to the side of her waist. She also wears two silver oval earrings, black shorts with a blue rim, and black shoes with blue lining the bottom and top of the shoe.', 'Allegra appears to be somewhat arrogant; which shows in both her dialogue and her attack. Her regular attack grinds her sole against the floor aggressively in an attempt to express her dominance. She acts lazily but does the same amount of damage as the other three Masters, which implies she has far stronger capabilities that she lets on. She also may have issues with her appearance, as shown in The Steeliest Buns, when she asks a truth-telling robot how beautiful she is and flies into a rage when she is met with a name other than hers. This behavior is incredibly ironic, however, given the fact that she is very beautiful and should be anything but insecure about herself.\r\n\r\nIn The Forest Runner, it is revealed that her personality stems from wanting to beat her mentor Dashley and failing.', '', 3),
(3, 'Ring', '', 'Ring is a character in Ring Fit Adventure. It helps the Ring Fit Trainee throughout their journey to take down Dragaux.\r\nRing\'s body is, true to its name, a ring, rushing with a fiery, golden energy that shines when it’s in sync with Ring Fit Trainee. Two handles exist on the sides of the body, with gold-bronze patterns swirling up them. Ring has a somewhat cube shaped head at the top of its body, attached with a hinge. It has two, light blue eyes, triangular ears with silver earrings, a thin nose, and a headpiece with structure that resembles hair and a ponytail at the top of its head, along with a fairly pronounced brow.', 'Ring treats people nice, it always encourages the Ring Fit Trainee when battling enemies. Ring is also easy to fool and is not very good at quizzes.', '', 5),
(4, 'Armando', '', 'Armando is a character in Ring Fit Adventure. He is one of The Four Masters.\r\n\r\nHe is based around Arm Fit Skills.\r\n\r\nArmando is a large, muscular man with very beefy arms who wears a sleeveless red judogi uniform with the Arm symbol placed onto it, of which is held together by a black belt. He has red wristbands with a triangular pattern on them as well as black leggings with a white criss-cross pattern. He also wears black shoes with red soles.\r\n\r\nHe has his hair tied all the way up in a pyramid shape alongside having triangular facial hair with his small moustache and beard.', 'Armando is very easy to predict and has a tendency to suddenly yell when finishing his sentences. It\'s later revealed that he was initially jealous of the other masters because of their traits and trained to find a girlfriend.', '', 1),
(5, 'Abdonis', 'The Abs Master', 'Abdonis is a character in Ring Fit Adventure. He is one of the Four Masters.\r\nHe is based around Abdomen Fit Skills.\r\nAbdonis wears a short yellow jacket with square patterns on the short sleeves and plain long black sleeves, this of which visibly shows off his abs. He has dark skin with dark brown hair tied back with a singular yellow streak and golden brown eyes.\r\n\r\nHe also wears black leggings with a yellow cloth with green edges wrapped around it, tied together with a black belt with a checker pattern. His shoes are black with yellow soles.\r\n\r\nHis clothing set is the Abs Master set.', 'He is self-absorbed about his abs. He also has issues with trusting people because he fears they might turn their back on him. He is extremely sensitive, and claims his abs are there to \"guard his delicate heart\".', '', 2),
(6, 'Guru Andma', 'Guru + Andma = Grandma', 'Guru Andma is a character in Ring Fit Adventure. She is one of The Four Masters.\r\n\r\nShe is based around balancing muscle groups, and by extension Yoga Fit Skills since she balances on a ball and has a Green Sufferfish, as a \"pet ball\".\r\n\r\nGuru Andma is an old lady who is always seen on a yoga ball. She has small black eyes and gray hair with a ring-shape motif, having a ring-shaped ponytail with a purple bow headband.\r\n\r\nShe wears a white shirt with green at the collar and ends with longer black sleeves underneath alongside a rope necklace with green ring-shaped pendants, she has a thick rope of some kind with a white and purple pattern connecting from her shoulders to a big bow at her back. She also wears a black belt tied with a bow at the front and green yoga pants. Her shoes are black with a shade of purple at the front and white soles.\r\n\r\nHer yoga ball has the ability to change size, becoming twice as big compared to her.\r\n\r\nHer attacks are very long and deal a lot of damage.', '', '', 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `rfa_personnages`
--
ALTER TABLE `rfa_personnages`
  ADD CONSTRAINT `rfa_personnages_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `rfa_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
