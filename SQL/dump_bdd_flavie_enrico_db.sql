-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 mai 2022 à 10:46
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
-- Structure de la table `rfa_categories`
--

DROP TABLE IF EXISTS `rfa_categories`;
CREATE TABLE IF NOT EXISTS `rfa_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_categories`
--

INSERT INTO `rfa_categories` (`id`, `nom`) VALUES
(1, 'Arms'),
(2, 'Stomach'),
(3, 'Legs'),
(4, 'Yoga'),
(5, 'Full body');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_ennemis`
--

DROP TABLE IF EXISTS `rfa_ennemis`;
CREATE TABLE IF NOT EXISTS `rfa_ennemis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `apparence` text NOT NULL,
  `image` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_ennemis`
--

INSERT INTO `rfa_ennemis` (`id`, `nom`, `description`, `apparence`, `image`) VALUES
(1, 'Dragaux', 'Dragaux is the main antagonist of Ring Fit Adventure. He battles frequently with Ring and the Ring Fit Trainee, and bodybuilds and trains extensively in between.\r\n\r\nDragaux is determined to beat Ring and the trainee. He is also very overconfident, which proves to be his downfall late on. In Quizton, Ring mentions that he\'s very good at quizzes. Ring also says that Dragaux loves to sleep and used to joke that sleeping was his favorite part of training.', 'Dragaux is an enormous, anthropomorphic muscular dragon, with a dark body and moderately large wings, along with a large tail. Ring mentions that Dragaux used to be pretty skinny when the two first met.', ''),
(2, 'Hoplin', 'The Hoplin is an enemy in Ring Fit Adventure. They have no special abilities.\r\n\r\nThere is a larger variant known as the Gobhoplin. There are also variants that carry high amounts of gold or experience, like the Gold Hoplin and the Rare Hoplin, but they all serve as standard enemies.\r\n\r\n', 'Hoplins are tadpole-looking creatures with yellow patterns on its side, and has only one big eye. Like most monsters, Hoplins can come in red (arm), yellow (abs), blue (legs), green (yoga), and gray (no weaknesses).', ''),
(3, 'Belldog', 'Belldog is an enemy in Ring Fit Adventure. They are a big version of Kennelbells. They first appear in world 7, and at that time do a lot of damage.', 'Belldogs, similarly to Kennebells and Pitbells, are dog-like monsters which resemble kettlebells with black ear handles. Like most monsters, Belldogs can come in red (arm), yellow (abs), blue (legs), green (yoga), and gray (no weaknesses).\r\n\r\n', ''),
(4, 'Puffersquish', 'Puffersquish is an enemy in Ring Fit Adventure. They\'re based off of exercise balls. There is a stronger version called the Sufferfish, the latter being a miniboss. Dragaux can sometimes be on a Blue Puffersquish during battle. A Puffersquish contracts when attacked and blows as their attack.\r\n\r\n', 'Similarly to Sufferfish, Puffersquish are pufferfish-like monsters which resemble big exercise balls. Like most monsters, Puffersquish can come in red (arm), yellow (abs), blue (legs), green (yoga), and gray (no weaknesses).', ''),
(5, 'Stepper', 'The Stepper is an enemy in Ring Fit Adventure.\r\n\r\nIt first appears in Disturbance Meadows in World 2.\r\n\r\n\r\nThere is a larger variant, the Stomper, which serves as a miniboss.', 'Steppers are frog-looking monsters, similarly to Hoplins, they have yellow markings on its side and has one big eye. They also have tall frog legs with markings on them.\r\n\r\nLike most monsters, Steppers can come in red, yellow, blue, green and gray.', ''),
(6, 'Scuttleknell', 'The Scuttleknell is a larger version of the Scuttlebell and a miniboss in Ring Fit Adventure. It has the ability to slam the ground at half HP, causing rocks to fall from the ceiling of the arena toward the Ring Fit Trainee, which must be destroyed with a Ring Press.\r\n\r\nScuttleknells make their debut as a miniboss in The Shrouded Land\'s Arms-Race Gym, where a Red Scuttleknell is sent out to battle the Trainee as Armando\'s \"spotter\".\r\n\r\nThere has been a Red Scuttleknell in The Shrouded Land and a Garnet Scuttleknell Getting Rusty.', 'Scuttleknells are spiked crab-like monsters which resemble dumbbells. Like most monsters, Scuttleknells can come in red (arm), yellow (abs), blue (legs), green (yoga), and gray (no weaknesses).', ''),
(7, 'Pitbell', 'Pitbell is an enemy in Ring Fit Adventure. It is considered the largest and strongest of the Kennelbell family, serving as a mini-boss in a couple of worlds.', 'Pitbells, similarly to Kennebells and Belldogs, are dog-like monsters which resemble kettlebells with black ear handles. Like most monsters, Pitbells can come in red (arm), yellow (abs), blue (legs), green (yoga), and gray (no weaknesses). As Pitbell have Dark Influence are the colors, Cobalt (Blue), Garnet (Red), Orche (Yellow), Malachite (Green), Dark (Gray)', '');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_exercices`
--

DROP TABLE IF EXISTS `rfa_exercices`;
CREATE TABLE IF NOT EXISTS `rfa_exercices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `rechargement` int(11) NOT NULL,
  `attaque` int(11) NOT NULL,
  `portee` int(11) NOT NULL,
  `methode` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_exercices`
--

INSERT INTO `rfa_exercices` (`id`, `nom`, `description`, `rechargement`, `attaque`, `portee`, `methode`, `image`, `id_categorie`) VALUES
(1, 'Back Press', 'Back Press is an arm Fit Skill in which you put the Ring-Con behind your back and press on it.\nBack Press is granted to the player via redeeming skill points in the Skill Tree\'s first tier of options.', 2, 220, 1, '', '', 1),
(2, 'Boat Pose', 'Boat Pose is a yoga Fit Skill.\nBoat Pose is granted to the player when it\'s found from a treasure chest in World 10.', 3, 155, 5, '', '', 4),
(3, 'Bow Pull', 'Bow Pull is an arm Fit Skill. The player must stand with their feet shoulder width apart and raise the Ring-Con in front of their face and pull it as if drawing a bowstring. The Fit Skill requires the player to switch arms during the exercise.\nBow Pull is obtained at Level 17 in Adventure Mode.', 2, 35, 5, '', '', 1),
(4, 'Chair Pose', 'Chair Pose is a yoga Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is granted to the player at the start of a new game in Adventure Mode.', 1, 30, 1, 'Entering Form :\nSquat down slowly.\nRaise the Ring-Con with both arms.\n\nDuring Exercise :\nTo complete the exercise, the player, while keeping a squatting position, must lower down the Ring-Con with both hands slowly until the lotus flower fully opens up, afterwards they must raise the Ring-Con slowly. the player must this repeatedly until all reps have been completed.', 'https://static.wikia.nocookie.net/ringfitadventure/images/6/69/Chair.jpeg/revision/latest/scale-to-width-down/108?cb=20200401154913', 4),
(5, 'Fan Pose', 'The Fan Pose is a yoga Fit Skill.\nThe Fan Pose is granted to the player upon reaching Lv. 26.', 3, 4, 0, 'Entering Form :\n\nSit and extend your left leg diagonally.\nBend your right knee and pull your heel in.\nHold both arms straight up.\n\nRing\'s Tips :\n\nYou don\'t have to force your legs open!\nBe sure to keep your upper body straight!', 'https://static.wikia.nocookie.net/ringfitadventure/images/7/71/Fan.jpeg/revision/latest/scale-to-width-down/161?cb=20200402010326', 4),
(6, 'Flutter Kick', 'Flutter Kick is a stomach Fit Skill.', 2, 175, 1, '', '', 2),
(7, 'Front Press', 'Front Press is a Fit Skill in Adventure Mode where the player holds the Ring-Con horizontally in front of them and presses in on it.\nFront Press is an arm Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 5.', 2, 25, 3, 'Entering Form :\nStand with your feet shoulder width apart.\nHold the Ring-Con horizontally.\n\nDuring Exercise :\nTo complete this exercise, the player needs to press in on the Ring-Con when it\'s horizontally in front of them.\n\nRing\'s Tips :\nPress in on the Ring-Con as you breathe out!', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f2/Front.jpeg/revision/latest/scale-to-width-down/66?cb=20200401155107', 1),
(8, 'Hinge Pose', 'Hinge Pose is a yoga Fit Skill.\nHinge Pose is granted to the player upon reaching Lv. 53.', 2, 125, 3, '', '', 4),
(9, 'Hip Lift', 'Hip Lift is a leg Fit Skill.\nIt is granted to the player upon reaching Lv. 44.', 3, 6, 0, '', '', 3),
(10, 'Knee Lift', 'Knee Lift is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 11. It is the same variant of Knee-Lift Combo, but you perform a knee lift and then the Wide Squat move which can attack 3 enemies in one turn.\nWhen climbing up on stairs, or traveling in water, to go faster, you can do knee lifts.', 1, 50, 1, 'Entering Form :\nStand with your feet shoulder width apart.\nRaise both arms.\n\nDuring Exercise :\nTo complete this exercise, the player needs to lift their legs up and down while lowering and raising their arms.\n\nRing\'s Tips :\nKnee lifts can help with abdominal training as well!', '', 3),
(11, 'Knee-Lift Combo', 'Knee-Lift Combo is a leg Fit Skill.\nKnee-Lift Combo is granted to the player upon reaching Lv. 71.\n\nSimilar to Knee Lift, you lift your knees, then do a squat move and repeat.', 3, 165, 3, '', '', 3),
(12, 'Knee-to-Chest', 'Knee-to-Chest is a stomach Fit Skill. The player must sit on the floor with their legs extended outwards using their hands to support their upper body. The player then raises both legs off the ground towards their chest before extending them again.\nKnee-to-Chest is granted to the player at the start of a new game in Adventure Mode.\n\nKnee-to-Chest_Demonstration\nKnee-to-Chest Demonstration\n\n', 1, 30, 1, 'Ring\'s Tips :\n\"Avoid doing this on a hard floor\"', 'https://static.wikia.nocookie.net/ringfitadventure/images/5/54/Knee_To_Chest.jpg/revision/latest/scale-to-width-down/180?cb=20210320024315', 2),
(13, 'Leg Raise', 'Leg Raise is a stomach Fit Skill. (also in Abdonis)\nLeg Raise is granted to the player upon reaching Lv. 56.', 2, 175, 1, '', '', 2),
(14, 'Leg Scissors', 'Leg Scissors is a stomach Fit Skill.\nLeg Scissors can be acquired by unlocking a treasure chest after completing Secluded Shrine Approach located in World 8.', 2, 135, 3, '', '', 2),
(15, 'Mountain Climber', 'Mountain Climber is a leg Fit Skill.\nMountain Climber is granted to the player upon reaching Lv. 59.', 3, 120, 5, '', '', 3),
(16, 'Open and Close Leg Raise', 'Open & Close Leg Raise is a stomach Fit Skill.\nOpen & Close Leg Raise can be acquired by opening the treasure chest located in the World 5 map.', 3, 5, 0, '', '', 2),
(17, 'Overhead Arm Spin', 'Overhead Arm Spin is an arm Fit Skill in Ring Fit Adventure.\n\nOverhead Arm Spin is granted to the player upon reaching Lv. 47', 3, 90, 5, 'Entering Form :\n\nStand with your feet shoulder width apart.\nRaise both arms.\nDuring Exercise\n\nTo complete this exercise, you raise the Ring-Con with both hands over your head and draw circles with it by turning around your arms.\n\nRing\'s Tips :\n\nRotate the Ring-Con around!\nThis may help relax your shoulders!', '', 1),
(18, 'Overhead Arm Twist', 'Overhead Arm Twist is an arm Fit Skill where you raise both hands, with the Ring-Con on one hand, and twist your arms rhythmically.\nOverhead Arm Twist is granted to the player upon reaching Lv. 29.', 5, 705, 1, 'Entering Form:\nStand with your feet shoulder width apart.\nHold the Ring-Con in one hand, and raise both hands.\n\nRing\'s Tips:\n\"Good for working those upper arms!\"\n\"Twist your arms!\"', '', 1),
(19, 'Overhead Bend', 'Overhead Bend is a stomach Fit Skill.\nOverhead Bend can be acquired by opening the treasure chest located in the World 4 map.\n\nLevel 1 attack: 70\n\nLevel 2 attack: 340\n\nLevel 3 attack: 790\n\nLevel 4 attack: 1000', 1, 1000, 1, '', '', 2),
(20, 'Overhead Hip Shake', 'Overhead Hip Shake is a stomach Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 38.', 3, 70, 5, 'During Exercise :\n\nTo complete this exercise, the player must shake their hips from side to side while keeping the Ring-Con above their head. The player must do this repeatedly until all reps have been cleared.', 'https://static.wikia.nocookie.net/ringfitadventure/images/b/bc/Shake.jpeg/revision/latest/scale-to-width-down/73?cb=20200402005150', 2),
(21, 'Overhead Lunge Twist', 'Overhead Lunge Twist is a stomach Fit Skill.\nOverhead Lunge Twist is granted to the player upon reaching Lv. 50.', 2, 155, 1, '', '', 2),
(22, 'Overhead Side Bend', 'Overhead Side Bend is granted to the player upon reaching Lv. 65.', 3, 7, 0, '', '', 2),
(23, 'Overhead Squat', 'Overhead Squat is a leg Fit Skill.\nOverhead Squat is granted to the player when it\'s unlocked from the Skill Tree.\n\nIt is a similar variant than the Squat and Wide Squat, but this skill can attack up to 5 enemies in one turn.', 3, 110, 5, '', '', 3),
(24, 'Pendulum Bend', 'Pendulum Bend is a stomach Fit Skill.\nPendulum Bend is available to acquire upon unlocking the Skill Tree.', 2, 130, 3, '', '', 2),
(25, 'Plank', 'Plank is a stomach Fit Skill in Ring Fit Adventure.\n\n\nIn Adventure Mode, Plank is granted to the player upon reaching Lv. 20.', 2, 50, 3, 'Entering Form :\n\nSet the Ring-Con down.\nPut your elbows on the floor.\nExtend your legs straight behind you.\n\nDuring Exercise :\n\nTo complete this exercise, you hold your body straight and parallel to the floor while resting on your toes and elbows, and repeatedly raising your waist up and down.\n\nRing\'s Tips :\n\nDon\'t lower your glutes so much that your lower back bends!\n', '', 2),
(26, 'Revolved Crescent Lunge Pose', 'The Revolved Crescent Lunge Pose is a yoga Fit Skill.\nThe Revolved Crescent Lunge Pose is granted to the player upon reaching Lv. 41.', 2, 130, 1, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/3/3e/Crescent.jpeg', 4),
(27, 'Ring Raise Combo', 'Ring Raise Combo is a leg Fit Skill.\nRing Raise Combo is granted to the player upon beating World 7\'s Gluting Gallery.\n\nObtaining the Fit Skill Ring Raise Combo is a really unique way to get it.', 2, 155, 1, '', '', 3),
(28, 'Russian Twist', 'Russian Twist is a stomach Fit Skill.\n\nRussian Twist can be acquired as a reward for completing the World 9 chest set with a B rank and above.', 3, 130, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/94/Screenshot_2020-10-05_at_4.35.59_PM.png', 2),
(29, 'Seated Forward Press', 'Seated Forward Press is a stomach Fit Skill.\nSeated Forward Press can be acquired by opening a treasure chest located in the World 6 map.', 3, 5, 0, '', '', 2),
(30, 'Seated Ring Raise', 'Seated Ring Raise is a stomach Fit Skill.\nSeated Ring Raise can be unlocked via the first expansion of the skill tree.', 2, 220, 1, '', '', 2),
(31, 'Shoulder Press', 'Shoulder Press is an arm Fit Skill where you place the Ring-Con on your shoulder and press on it.\nShoulder Press is granted to the player via redeeming skill points in the Skill Tree\'s first tier of options.', 3, 6, 0, '', '', 1),
(32, 'Side Step', 'Side Step is a leg Fit Skill.\nSide Step is granted to the player when it\'s unlocked from the Skill Tree.', 2, 160, 3, '', '', 3),
(33, 'Squat', 'Squat is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via the start of a new game in Adventure Mode. Squats have two variants; Wide Squat and Overhead Squat.', 1, 30, 1, 'Entering Form :\nStand with your feet shoulder width apart.\nPoint the Ring-Con straight in front of you.\n\nDuring Exercise :\nTo complete this exercise, the player needs to squat, bending their knees and lowering their back.\n\nRing\'s Tips :\nThis will focus on working your legs!', '', 3),
(34, 'Standing Forward Fold', 'Standing Forward Fold is a yoga Fit Skill.\nStanding Forward Fold is granted to the player when it\'s unlocked from the Skill Tree.', 3, 8, 0, '', '', 4),
(35, 'Standing Twist', 'Standing Twist is a stomach Fit Skill in which you position the Ring-Con horizontally in front of yourself and twist your waist from side to side.\n\nStanding Twist is granted to the player upon reaching Lv. 8', 2, 20, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/8/88/Twist.jpeg/revision/latest/scale-to-width-down/110?cb=20200417194422', 2),
(36, 'Thigh Press', 'Thigh Press is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 23.', 1, 80, 1, 'Entering Form :\n1\n2\n3\n\nDuring Exercise :\nTo complete this exercise, the player must press on the Ring-Con with their thighs and hold until told to release. Repeating the process until completion of the exercise.', '', 3),
(37, 'Tree Pose', 'Tree Pose is a yoga Fit Skill.\nTree Pose is granted to the player upon reaching Lv. 68.', 2, 220, 1, '', '', 4),
(38, 'Tricep Kickback', 'Tricep Kickback is an arm Fit Skill in Ring Fit Adventure.\n\nTricep Kickback is granted to the player upon reaching Lv. 62', 2, 145, 3, 'Entering Form\n\nPut your right leg forward and bend your knee.\nHold the Ring-Con in your left hand, and raise your elbow.\nDuring Exercise\n\nTo complete this exercise, you bend your knee, put your ring con free hand on your knee, and raise the other arm with the Ring-Con up and down. After the half amount of reps, you switch sides.\n\nRing\'s Tips\n\nLike you\'re carrying something heavy!\nFocus on your upper arms!', '', 1),
(39, 'Warrior I Pose', 'Warrior I Pose is a yoga Fit Skill.\nWarrior I Pose is granted to the player upon reaching Lv. 14.', 1, 61, 1, '', '', 4),
(40, 'Warrior II Pose', 'Warrior II Pose is a yoga Fit Skill.\nWarrior II Pose is granted to the player upon reaching Lv. 32.', 2, 60, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/e/ea/2.jpeg/revision/latest/scale-to-width-down/185?cb=20200402005927', 4),
(41, 'Warrior III Pose', 'Warrior III Pose is a yoga Fit Skill.\nWarrior III Pose is granted to the player when it\'s unlocked from the Skill Tree.', 2, 125, 3, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/1/1e/Screenshot_2020-10-07_at_11.55.05_AM.png', 4),
(42, 'Wide Squat', 'The Wide Squat is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 35. It is another variation of Squat, but you squat with your legs open.\n', 2, 85, 3, 'Entering Form :\nSpread your feet wide.\nPoint the Ring-Con straight in front of you.\n\nDuring Exercise :\nTo complete this exercise, the player needs to bend their knees and lower their back while their legs are wide.\n\nRing\'s Tips :\nPoint the tips of your toes firmly outward!', 'https://static.wikia.nocookie.net/ringfitadventure/images/c/c3/Wide.jpeg/revision/latest/scale-to-width-down/110?cb=20200402005055', 3);

-- --------------------------------------------------------

--
-- Structure de la table `rfa_exercices_has_muscles`
--

DROP TABLE IF EXISTS `rfa_exercices_has_muscles`;
CREATE TABLE IF NOT EXISTS `rfa_exercices_has_muscles` (
  `id_exercice` int(11) NOT NULL,
  `id_muscle` int(11) NOT NULL,
  KEY `id_exercice` (`id_exercice`),
  KEY `id_muscle` (`id_muscle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_exercices_has_muscles`
--

INSERT INTO `rfa_exercices_has_muscles` (`id_exercice`, `id_muscle`) VALUES
(1, 4),
(1, 11),
(1, 8),
(2, 1),
(2, 10),
(2, 5),
(3, 4),
(3, 10),
(3, 13),
(4, 3),
(4, 5),
(4, 10),
(5, 7),
(5, 8),
(5, 14),
(6, 1),
(6, 9),
(7, 14),
(8, 8),
(8, 9),
(9, 6),
(9, 9),
(9, 10),
(10, 1),
(10, 2),
(10, 9),
(11, 1),
(11, 2),
(11, 9),
(12, 1),
(12, 4),
(12, 10),
(13, 1),
(13, 10),
(14, 1),
(14, 2),
(14, 9),
(15, 9),
(15, 6),
(15, 4),
(16, 1),
(16, 6),
(16, 9),
(17, 4),
(17, 8),
(17, 11),
(18, 4),
(18, 8),
(18, 10),
(19, 10),
(19, 11),
(19, 13),
(20, 12),
(20, 2),
(20, 4),
(21, 9),
(21, 10),
(21, 12),
(22, 4),
(22, 10),
(22, 12),
(23, 2),
(23, 6),
(23, 9),
(24, 3),
(24, 10),
(24, 12),
(25, 4),
(25, 10),
(25, 11),
(26, 3),
(26, 10),
(26, 12),
(27, 2),
(27, 6),
(27, 9),
(28, 1),
(28, 10),
(28, 12),
(29, 1),
(29, 4),
(29, 7),
(30, 1),
(30, 9),
(30, 10),
(31, 4),
(31, 11),
(31, 8),
(32, 4),
(32, 9),
(32, 2),
(33, 2),
(33, 6),
(33, 9),
(34, 4),
(34, 7),
(34, 8),
(35, 2),
(35, 12),
(36, 9),
(36, 3),
(36, 11),
(37, 3),
(37, 11),
(38, 4),
(39, 2),
(39, 3),
(39, 11),
(40, 14),
(40, 4),
(40, 8),
(41, 2),
(41, 5),
(41, 10),
(42, 2),
(42, 6),
(42, 9);

-- --------------------------------------------------------

--
-- Structure de la table `rfa_ingredients`
--

DROP TABLE IF EXISTS `rfa_ingredients`;
CREATE TABLE IF NOT EXISTS `rfa_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_ingredients`
--

INSERT INTO `rfa_ingredients` (`id`, `nom`) VALUES
(1, 'Grapes'),
(2, 'Spinach'),
(3, 'Strawberry'),
(4, 'Banana'),
(5, 'White Sesame seeds'),
(6, 'Milk'),
(7, 'Gelatin'),
(8, 'Green Tea Leaves');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_mondes`
--

DROP TABLE IF EXISTS `rfa_mondes`;
CREATE TABLE IF NOT EXISTS `rfa_mondes` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rfa_mondes`
--

INSERT INTO `rfa_mondes` (`id`, `nom`, `description`, `image`) VALUES
(1, 'In the First Place', 'You have traveled from a faraway place and joined forces with the mythical being Ring, Together, you must defend the innocent from the sinister trainer Dragaux and his dark influence! It\'s up to you, player!', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/96/Screenshot_2020-08-18_at_10.48.01_AM.png'),
(2, 'The Land of Night', 'You joined forces with Ring and nearly defeated Dragaux before the villain fled. The more Dragaux trains his dark influence, the stronger he will become. You must stop him!\r\n\r\nThe monsters that Dragaux created have started to attack people! There\'s a town nearby that may be in danger. Keep the townspeople safe from Dragaux\'s reign of terror!\r\n\r\nTogether with Ring, you protected the townspeople from the invading monsters. Yet there are surely others in danger. Press onward, player!', 'https://static.wikia.nocookie.net/ringfitadventure/images/e/ed/RingFitWorld2.PNG'),
(3, 'A Shining Jewel from the Heavens', 'Dragaux reached a land with a high human population. Work with Ring to stop Dragaux from spreading his dark influence!\r\n\r\nYou found Hubby from the General Store, but monsters have stolen his smoothie ingredients. Claiming he can\'t go home without a gift for his wife, Hubby went off in a search for a souvenir.\r\n\r\nHoney and Hubby have a new problem: their blender is broken. They said a new blender can be found in the General Factory, but that area is full of monsters!\r\n\r\nYou and Ring retrieved a new blender. Now you can buy smoothies at the General Store! Smoothies are great for recovery, so try to always have some handy!\r\n\r\nThe shining jewel that Honey was looking for was actually a power stolen from Ring! With his Smoothiecraft power now restored, Ring can make smoothies for you anytime!', 'https://static.wikia.nocookie.net/ringfitadventure/images/2/27/Screenshot_2020-09-21_at_3.37.58_PM.png'),
(4, 'The Nation of Sporta', 'Dragaux fled towards the Kingdom of Sporta. Ring believes the Sportans will be safe from Dragaux\'s influence, but you know better.\r\n\r\nDragaux is on the far side of a wide river that you cannot cross, but don\'t worry. The Sportan Commander will train you to cross that river the Sportan way!\r\n\r\nDragaux is on the far side of a wide river. Since you and Ring have no way across, the Sportan Commander began to train you how to cross like a Sportan!\r\n\r\nAfter you earned the Sportan Commander\'s approval, monsters suddenly appeared in the Sporta Treasury, where it\'s rumored that a shining jewel resides. Defeat the monsters and investigate the shining jewel!\r\n\r\nYou helped Ring defeat the monsters and recover the shining jewel, which held Ring\'s stolen River Rowing ability! Now you can cross the widest of rivers!\r\n\r\nYou helped Ring to recover his River Rowing ability, allowing you both to cross the Sportan River safely. Next up, Dragaux!', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f2/World_4_map.png'),
(5, 'Dragaux Vs. the Four Masters', 'You chased Dragaux from the Kingdom of Sporta and brought hope back to the Sportan people. Still, Dragaux\'s talk of tightening up his defenses is worrisome.\r\n\r\nYou met Allegra, the leg master. When she learned you\'re searching for Dragaux, she went to consult with the other masters. Go catch up with Allegra to see what they think.\r\n\r\nAllegra approved of you, but now you must earn the respect of Armando, the arm master.\r\n\r\nYou met the arm master, Armando. He\'s as intense as he is muscular, and he seems very suspicious of you. Watch out, for his test will be very tricky.\r\n\r\nYou have secured the approvals of Allegra and Armando. Now you must face the challenge of Abdonis, the abs master!\r\n\r\nYou rescued a young man trapped by fallen rocks. Now that the road is clear, you can continue your journey to meet Abdonis, the abs master!\r\n\r\nThe young man you rescued was actually Abdonis, the abs master himself! Now that you\'ve passed Abdonis\'s test, only Guru Andma, the balance master, remains!\r\n\r\nAfter you defeated Guru Andma\'s pet Ball in battle, all the Four Masters agreed to help you defeat Dragaux. They\'re now awaiting you at the stadium ahead.', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/9b/World_5_map_2.png'),
(6, 'The Shrouded Land', 'Dragaux has captured The Four Masters! You must free them before whatever evil scheme he has in mind comes to pass!\r\n\r\nThis land is completely under the control of Dragaux\'s dark influence. Even the Four Masters are in danger of succumbing to its power. Stopping Dragaux will have to wait - you must save the Four Masters first!\r\n\r\nYou reunited with Allegra, Armando and Abdonis and discovered they are completely under the control of Dragaux\'s dark influence.\r\n\r\nYou reunited with Guru Andma and discovered that, just like Allegra, Armando and Abdonis, she was completely under the control of Dragaux\'s dark influence.', 'https://static.wikia.nocookie.net/ringfitadventure/images/8/8c/World_6_map.png'),
(7, 'The Forest Runner', 'Dragaux flew away with the Four Masters in his thrall. Give chase, and release them from his dark influence!\r\n\r\nWhile searching for Allegra, you learned of a woman named Dashley, who may know where to find her. Travel to Trotter\'s Grove and find Dashley!\r\n\r\nDashley cannot maintain her youth unless she keeps running, but monsters are blocking her jogging path in the forest. Help out Dashley so you can ask about Allegra!\r\n\r\nDashley was once Allegra\'s master. Allegra believed she could stop Dashley from running and thereby become top runner herself. Can Allegra be saved from the dark influence?', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f3/World_7_map.png'),
(8, 'Tears of Solar Plexia', 'Dashley agreed to watch over her student, Allegra, and try to be a positive influence. You and Ring moved on to the next land, following after Dragaux.\r\n\r\nThis land is plagued by a never-ending rain formed by the tears of a goddess called Solar Plexia, who should be bringing nothing but sunny days to her people. Perhaps you could help?\r\n\r\nThe priestess gave you directions to Solar Plexia\'s shrine but also revealed that the raindrops you gathered had no purpose. You began to wonder about the identity of the young man who mentioned the raindrops...\r\n\r\nAbdonis blocked the road leading to Solar Plexia\'s shrine. You realise now that the young man who mentioned the raindrops was also him in disguise. It struck you that Abdonis seems to know his way around this place awfully well...', 'https://static.wikia.nocookie.net/ringfitadventure/images/a/a0/Screenshot_20200818-071429.png'),
(9, 'Flex Dojo', 'The priestess serving Solar Plexia was really Abdonis\'s mother. But there\'s no time to digest that one, since Dragaux has stolen Solar Plexia\'s sphere of light!\r\n\r\nYou learned that Dragaux left Ring\'s orb of light with Armando in his Flex Dojo. Getting it back might be a problem. The orb(or sphere ) is ring\'s jump boost!!! You\'ve recovered Ring\'s Jump Boost ability! Dragaux responded by taking out his rage on Armando, sending monsters to his training gym. Aren\'t they on the same side?!', 'https://static.wikia.nocookie.net/ringfitadventure/images/e/ed/World_9_map.png'),
(10, 'Grandminion Gauntlet', 'You recovered Ring\'s Jump Boost ability! There\'s only one ability left until he\'s recovered all of his powers.\r\n\r\nThe children\'s paradise, Grandminion Gauntlet, stands between you and Dragaux. If you hope to make it to him, you\'ll need to win games against all of the Grandminions that Guru Andma trained.\r\n\r\nYou defeated Guru Andma and her Grandminions! Now to face off against Dragaux!', 'https://static.wikia.nocookie.net/ringfitadventure/images/3/3b/World_10_map.png'),
(11, 'Valley of Wishes', 'You were victorious in battle with Dragaux, but the villain remains undaunted. Insisting that the final victory (and indeed, the world) is his for the taking, he flew off to the next land.\r\n\r\nRing had an idea to save Dragaux by visiting the the Valley of Wishes, where any wishes can come true. However, the Valley proved elusive. A fortune-teller claimed that three friends hold the key to finding the Valley.\r\n\r\nTo reach the Valley, you must make three friends. Your first encounter was with Scarecruel, whose abrasive personality made you and Ring wonder if she could really be counted as a friend. when you meet Scarecruel she asks you to defeat some monsters without useing smoothies. she clams she dos not like them. After meeting Scarecruel, you encountered a young man whom Scarecruel ordered you to chase, but he was too fast for you.But the man dropped his crates. After breaking the crates you encouter a black matta slay After defeating it the Cowardly Strong man joins you. After meeting Scarecruel, your next encounter was the Cowardly Strongman, who seemed tough but was really a big softie. Now you have two friends...or do you?\r\n\r\nThree friends are needed to reach the Valley of Wishes. After the sadistic Scarecruel and the Cowardly Strongman, you met a third \"friend\", the vain Toned man. This dubious trio should satisfy the requirement to for entry into the Valley.\r\n\r\nYou were joined on your journey to the Valley of Wishes by the sadistic Scarecruel, the Cowardly Strongman and the vain Toned Man. The way to the Valley of Wishes has finally opened!', 'https://static.wikia.nocookie.net/ringfitadventure/images/1/12/World_11_map_2.png'),
(12, 'Wings of Daddalus', 'Scarecruel, Cowardly Strongman and Toned Man were revealed to be Allegra, Armando and Abdonis in disguise! However! Guru Andma\'s whereabouts is unknown, so be ready for anything!\r\n\r\nAt the Battle Gym, you won the birdy bolt that Daddalus needed to continue work on the airship. Now go deliver it to him at Upsurge Studio!\r\n\r\nYou defeated the monsters and recovered Ring\'s Wing Ability! Now you can cross the bluff and head toward Mt. Fearmenot.\r\n\r\nWith Ring\'s Wing Ability, you crossed the treacherous bluff at Mt. Fearmenot. Now celebrate the return of Ring\'s final power by beating Dragaux!', 'https://static.wikia.nocookie.net/ringfitadventure/images/d/db/Screenshot_20200827-103618.png'),
(13, 'El Dorago', 'You expected to fight Dragaux but encountered Guru Andma instead. It looks like Dragaux is using The Four Masters to buy time. But...time to do what?\r\n\r\nWhile you were occupied with the Four Masters. Dragaux built El Dorago, his utopia filled with the dark influence. With its citizens under Dragaux\'s spell, you\'re unlikely to get any help from them in your search.\r\n\r\nDragaux\'s dark influence has filled El Dorago. With the town\'s citizens all in his thrall, none of them are willing to help you in your search for Dragaux.', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/fa/World_13_map.png'),
(14, 'Moppets Gone Missing', 'You found Dragaux\'s hiding place, but he escaped once again. What did he mean when he mentioned \"that power\"?\r\n\r\nYou met a ghost in a strange, fog-shrouded place. Ring denied being afraid of ghosts, but you could tell he totally is.\r\n\r\nYou and Ring arrived in town, where you learned that all the land\'s children have disappeared. You\'ll have to keep investigating to get to the bottom of this mystery.\r\n\r\nTogether with Ring, you defeated the monsters and freed the children. But the children were still stuck in ghost form! Is there any way to turn the children back to normal?!\r\n\r\nYou learned that the children became ghosts because they called Abdonis an old man during an abdominal exercise seminar.', 'https://static.wikia.nocookie.net/ringfitadventure/images/6/6a/World_14_map_1.png'),
(15, 'Quizton', 'Abdonis, upset the children were calling him \"old man\", turned them into ghosts. He repented when he saw their innocence again, but that doesn\'t get you any closer to finding Dragaux.\r\n\r\nEverything begins with a quiz and ends on a quiz in Quizton. You must figure out the correct answer to move onward!\r\n\r\nEverything begins with a quiz and ends on a quiz in Quizton. The chief\'s quiz is \"Which contains more vitamin C per gram?\".\r\n\r\nPlayer chose the right answer, so onward we go!\r\n\r\nAfter clearing the Battle Gym, the village chief\'s son approached you, wishing to discuss something.\r\n\r\nEverything begins with a quiz and ends on a quiz in Quizton. The chief\'s son\'s quiz is \"What does it mean to cool down?\"\r\n\r\nFortunately, Player knew the answer! What will you be quizzed on next?\r\n\r\nEverything begins with a quiz and ends on a quiz in Quizton. The chief\'s son\'s second quiz is \"Which exercise isn\'t among the Big Three?\" Answer the question correctly to move onward.', 'https://static.wikia.nocookie.net/ringfitadventure/images/b/ba/World_15_map_2.png'),
(16, 'The Steeliest Buns', 'Dragaux used his dark influence to toughen his abs. Now, he\'s going to strengthen the rest of his body too! Hurry after Dragaux, and stop him from getting even buffer!\r\n\r\nAllegra asked her magic robot who has the steeliest buns. The magic robot answered \"Titanium White.\" which made Allegra angry. She went to capture Titanium White. You followed, but you can\'t keep up with those powerful legs.\r\n\r\nAllegra was busy doing something with \"Titanium White.\" So, she asked her Cobalt Sufferfish to defeat you. You defeated it, right?\r\n\r\nAllegra has captured Titanium White and threatened to remove her as a rival. This sounds like trouble for Titanium White! Go after them, quick!\r\n\r\nYou rescued Titanium White...sort of. Unfortunately, Allegra has stolen her motivation, perseverance, and enthusiasm - the three keys to Titanium White\'s training. There must be a way to get them back!\r\n\r\nYou won the first key from the gym! But it hasn\'t had much of an effect on Titanium White. It looks like you\'ll need all three of them before she\'s back to normal.\r\n\r\nYou won the third key from the gym! Titanium White is back to her old cybernetic self. Allegra was shocked by this revelation but seemed fine with being the best all-natural runner.', 'https://static.wikia.nocookie.net/ringfitadventure/images/4/49/World_16_map_2.png'),
(17, 'The Boy Who Howled Wolf', 'You defeated Allegra, but Dragaux is still out there working on his legs. Head out and stop him!\r\n\r\nYou met Linus, a boy who lies... for some reason. The townspeople hate him, because he always lies. Ring and the Trainee figured out that animals could be controlled by the dark influence!\r\n\r\nLinus followed you quietly, watching to see how you\'d handle the berserk animals. When he saw your power, he pleaded with you to be his coach. It seems there\'s someone in town that he wants to keep safe.\r\n\r\nYou later figured out that Linus was told by Dragaux to lie, so he could make his legs stronger. Dragaux lied, and you want to go after him before it\'s too late!\r\n\r\nYou ran into Honey, who seemed to be the person Linus was worried about. She promised to return to town and tell everyone how helpful Linus was.', 'https://static.wikia.nocookie.net/ringfitadventure/images/6/6f/World_17_map.png'),
(18, 'The Iceman Flexeth', 'It turned out to be Dragaux who tricked Linus into lying. You sent Dragaux packing and the townspeople forgave Linus, making it a happy ending for all.\r\n\r\nThermia\'s friend stranded in the snow turned out to be Honey from the General Store. Thanks to you, both Thermia and Honey made it safely back to town. But why weren\'t they dressed for the weather?\r\n\r\nThermia and Honey explained that their reason being underdressed is because of their new chief\'s orders. From the sound of it, this new chief can only be Armando!\r\n\r\nYou helped a young man by giving him some warm soup. The man was going to the Chief\'s House but warned you of the guard dog that the chief keeps.', 'https://static.wikia.nocookie.net/ringfitadventure/images/3/30/World_18_map.png'),
(19, 'Getting Rusty', 'You defeated Armando, who slip a bit of information about Dragaux\'s plans. He\'s gone to train his arms in the next land!\r\n\r\nYou travelled with Ring to the Robot Kingdom. Since you couldn\'t understand the robot language, Binarese, Honey suggested wearing clothes from the Fitness Machine set, which makes it possible to communicate with robots and understand Binarese.\r\n\r\nThough Honey from the General Store spoke Binarese fluently, you didn\'t understand it at all. Fortunately, there\'s an easy solution: anyone who wears the Fitness Machine clothing set can speak Binarese.\r\n\r\nYou found a robot lying on the ground and unable to move. When you gave the robot a smoothie, it recovered, and had a few unkind things to say about a certain dragon. Is Dragaux up to something sinister here, too?\r\n\r\nYou met a robot having trouble getting past the checkpoint that Dragaux had set up. You cleared out the Though Honey from the General Store spoke Binarese fluently, you didn\'t understand it at all. Fortunately, there\'s an easy solution: anyone who wears the Fitness Machine clothing set can pronounce Binarese.\r\n\r\nBefore the start of Ohwanoh factory, you found a robot lying on the ground and unable to move. When you gave the robot a smoothie, it recovered and had a few unkind things to say about a dragon. Is Dragaux up to something sinister here, too?\r\n\r\nBefore Heave-Ho checkpoint, you met a robot having trouble getting past the checkpoint that Dragaux had set up. You cleared out the checkpoint and received the robot\'s inimitable thanks.\r\n\r\nYou found another robot collapsed on the ground. When you gave the robot the smoothie it wanted, even Ring was surprised by its advanced features.\r\n\r\nYou spoke to a robot who complained Dragaux closed all training gyms that didn\'t specialize in arms. The Battle Gym, on the other hand, was still open for business. You wasted no time in overcoming the nearest Battle Gym.\r\n\r\nYou found a golden robot collapsed on the ground. Ring got excited to see this one\'s features, but when you fed it a smoothie, the spectacle only left him speechless. Maybe you\'d better just head for Dragaux.', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/95/World_19_map.png'),
(20, 'The City of Open Eyes', 'You defeated Dragaux once more, despite all of his training. He seems convinced that what he needs now is to focus on balancing his muscle groups. Which must mean he plans to train with Guru Andma!\r\n\r\nYou discovered it was Guru Andma teaching Dragaux how to balance his training. Now Dragaux is still at large somewhere, making his final preparations!\r\n\r\nWhile tracking down the reason for the loud clanging sounds from Dragaux Stadium, you met Snoozie, who was running feverishly to resist the pull of sleep. Ring tricked her into sleeping, giving her some much-needed rest.\r\n\r\nThough Ring tricked Snoozie into sleeping, she returned the favor by tricking you into giving her smoothies that would keep her awake. The only way to help her now seems to be to find Dragaux and stop his cruel scheme!', 'https://static.wikia.nocookie.net/ringfitadventure/images/7/7a/World_20_map_2.png'),
(21, 'Le pays des Limbes', 'Réalisant que sa seule énergie d\'exercice ne suffisait pas, Dragaux a absorbé les Quatre Maîtres et a fui vers Finalia. Il n\'y a pas de temps à perdre !\r\n\r\nEn poursuivant Dragaux jusqu\'à Finalia, tu t\'es perdu dans Between Land, où le monde des vivants est relié à l\'au-delà. Soudain, un fantôme est apparu devant vous !\r\n\r\nAvec l\'aide du mystérieux fantôme, vous avez surmonté les obstacles. Ring a été ému par votre force lorsque vous vous êtes approché de l\'entrée du Pays d\'Hadès. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/a/af/World_21_map.png'),
(22, 'Land of Hades', 'The mysterious ghost left after whispering \"Four...Masters...\" Are the Four Masters in the Land of Hades? And just where is this \"Finalia\" where Dragaux awaits?\r\n\r\nDragaux\'s training will be complete at any moment, and you\'re the only one left who can stop him! The Four Masters are willing to train you, but there\'s a slight problem: they\'ve been reduced to nothing more than wandering souls.\r\n\r\nYou met with the spirit of Allegra, who assisted you with your leg training. Though Allegra had been consumed with jealousy, she seems to have overcome that.\r\n\r\nYou met with the spirit of Armando, who assisted you with your arm training. It turned out that Armando had begun fitness in order to get a girlfriend.\r\n\r\nYou met with the spirit of Abdonis, who assisted you with your abs training. In return, you taught Abdonis the importance of trusting others.\r\n\r\n[Placeholder bracket as there may be a summary missing.]\r\n\r\nGuru Andma\'s spirit was waiting for you to instruct you in some intense training. She seemed quite energetic, considering that she\'s only now a spirit.\r\n\r\nUpon defeating Guru Andma\'s pet dog, Sir Grrrus, she declared you ready to face your final challenge within the Land of Hades.', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f7/World_22_map_2.png'),
(23, 'Finalia', 'The Four Masters have conquered their own weaknesses and helped you to conquer yours as well. Vowing to save them at all costs, you headed for Finalia where Dragaux awaits!\r\n\r\nYou have arrived at last at Finalia. If you cannot clear away Dragaux\'s Dark Influence here once and for all, this world will be lost forever.', 'https://static.wikia.nocookie.net/ringfitadventure/images/8/82/World_23_map.png');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_muscles`
--

DROP TABLE IF EXISTS `rfa_muscles`;
CREATE TABLE IF NOT EXISTS `rfa_muscles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_muscles`
--

INSERT INTO `rfa_muscles` (`id`, `nom`) VALUES
(1, 'Abs'),
(2, 'Aerobic'),
(3, 'Lower Body'),
(4, 'Arms'),
(5, 'Stamina'),
(6, 'Glutes'),
(7, 'Flexibility'),
(8, 'Shoulders'),
(9, 'Legs'),
(10, 'Core'),
(11, 'Posture'),
(12, 'Waist'),
(13, 'Trapezius'),
(14, 'Chest');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_niveaux`
--

DROP TABLE IF EXISTS `rfa_niveaux`;
CREATE TABLE IF NOT EXISTS `rfa_niveaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `id_monde` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_monde` (`id_monde`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_niveaux`
--

INSERT INTO `rfa_niveaux` (`id`, `nom`, `description`, `id_monde`) VALUES
(1, 'Beginnia', 'This level serves as a tutorial for the game\'s basic mechanics.', 1),
(2, 'Transient Temple', 'This level is a tutorial for Fit Battles and Fit Skills. It starts off with an empty space with a few slopes and arrow signs, then some gaps with coins hovering over them. Some ledges with coins mid-air to encourage the player to jump to collect them, then a few more slopes before a gap. This gap is trivial to jump over, but falling down will result in a longer route that converges back to the main path. Many coins and the first EXP medal lie ahead if you clear the gap. Then comes the first Fit Battle, against a Red or Blue Hoplin.\n\nAfter getting an explanation of Fit Battles and Fit Skills, you are able to choose a Fit Skill to use. The 4 Fit Skill options are Overhead Press, Knee-to-Chest, Squat, and Chair Pose. This monster is worth 80 EXP and 5 Gold. After the battle you get 3 hearts to completely heal. There\'s a crate and a few slopes, then there is a falling platform section. There are coins and the second EXP medal on the high path, and a few obstacles and crates on the lower path, which converge when you fall from a ledge at the higher path. After another ledge, there are some stairs, and the second (and final) encounter in this level. It is a Red Hoplin, and it is worth 80 EXP and 5 Gold. After defeating it you are given a little bit of info on Fit Skills and leveling up. After this, there is one more ledge, with a platform that you can jump to from the ledge with coins and the final EXP medal. Then the end of the level is right after. Now, you can go to the final course in the first world, which is Dragaux Stadium. ', 1),
(3, 'Dragaux Stadium', 'This is the first boss level is the game. It starts off with some downward stairs and the first EXP medal in the air. Then there is a huge set of stairs, with the second EXP medal near the start. There are some coins above around halfway up, and the final EXP medal after the stairs. Then the Dragaux fight begins. It is just him, no other monsters. He is worth 1000 EXP and 100 Gold. Then the level is finished. You then move on to World 2, The Land of Night.', 1),
(4, 'Nightcloak Pass', 'The level starts off with an empty space, then the first swamp in the game, which needs high knees to traverse quickly. Then there is another swamp with coins on the sides. There are some coins along the path, then the first Fit Battle. This Fit Battle has two Red Hoplins. Be sure to use the Fit Skill called Front Press as they attack 3 enemies, although there\'s only 2 enemies. They are worth 80 EXP and 5 Gold each. After that, there\'s a space with the first EXP medal, a box, some coins and a few hearts. There are a few obstacles in the form of logs, and shallow water, before the second Fit Battle. This one has a Blue Kennelbell. It is worth 85 EXP and 6 Gold. After there are a few more logs and some coins on the path, another two swamps, then a box with the second EXP medal inside. After one more log, there is the first Ab Boulder. This Ab rock is worth 40 EXP, though the later, larger boulder is worth 60 XP. The final EXP medal is at the side of the main path after the Ab Boulder, sitting out in an open meadow. Then there\'s the end of the level. You can then get the treasure chest, after the level is clear! You can also pass to Dashalong tower. ', 2),
(5, 'Dashalong Tower', 'This is a common type of course, with later examples like Beltline Tower. First is a forward conveyor followed by a door, then some conveyors leading to an elevated ramp. Jump high and you\'ll get up, though you\'ll need the Jump Boost ability. ', 2),
(6, 'Robo Wrecker', '', 2),
(7, 'Disturbance Meadow', '', 2),
(8, 'Dragaux Stadium', '', 2),
(9, 'Treasure Pass', '', 3),
(10, 'General Factory', '', 3),
(11, 'Bridge of Insight', '', 3),
(12, 'Gluting Gallery', '', 3),
(13, 'Squat Goals', '', 3),
(14, 'Hopskip Corridor', '', 3),
(15, 'Dragaux Stadium', '', 3),
(16, 'Sportan Waters', '', 4),
(17, 'Sportan Swamp', '', 4),
(18, 'Crate Crasher', '', 4),
(19, 'Sporta Bridge', '', 4),
(20, 'Dojo Sporta', '', 4),
(21, 'Sportan Highway', '', 4),
(22, 'Sporta Treasury', '', 4),
(23, 'Dragaux Stadium', '', 4),
(24, 'Core Crushing', '', 4),
(25, 'Out-Of-The-Way Way', '', 4),
(26, 'Exertion River', '', 5),
(27, 'Legs Set', '', 5),
(28, 'Twilight Highway', '', 5),
(29, 'Loot Pass', '', 5),
(30, 'Armie Temple', '', 5),
(31, 'Aerochute', '', 5),
(32, 'Arms-Race Gym', '', 5),
(33, 'Stopfoot Waters', '', 5),
(34, 'Birdseye Mountain Trail', '', 5),
(35, 'Bank Balance', '', 5),
(36, 'Exertion Corridor', '', 5),
(37, 'Bootstrap Tower', '', 5),
(38, 'Leap-of-Faith Falls', '', 5),
(39, 'Temple of Balance', '', 5),
(40, 'Thigh Rider', '', 5),
(41, 'Dragaux Stadium', '', 5),
(42, 'Battle Gym', '', 6),
(43, 'Beaut Camp', '', 6),
(44, 'Six Park', '', 6),
(45, 'Arms-Race Gym', '', 6),
(46, 'Temple of Balance', '', 6),
(47, 'Dragaux Stadium', '', 6),
(48, 'Smack Back', '', 6),
(49, 'Robo-Wrecker', '', 6),
(50, 'Squattery Wheel', '', 6),
(51, 'Glutes Set', '', 7),
(52, 'Core Crushing', '', 7),
(53, 'Gluting Gallery', '', 7),
(54, 'Swing Gate', '', 7),
(55, 'Starting-Block Bridge', '', 7),
(56, 'Battle Gym', '', 7),
(57, 'Trotter\'s Grove', '', 7),
(58, 'Squat Goals', '', 7),
(59, 'Beaut Camp', '', 7),
(60, 'Dragaux Stadium', '', 7),
(61, 'Gutterflow Temple', '', 8),
(62, 'Drench Trench', '', 8),
(63, 'Crate Crasher', '', 8),
(64, 'Talisman Trail', '', 8),
(65, 'Battle Gym', '', 8),
(66, 'Thigh Rider', '', 8),
(67, 'Bank Balance', '', 8),
(68, 'Springload Shrine', '', 8),
(69, 'Dangling Overpass', '', 8),
(70, 'Secluded Shrine Approach', '', 8),
(71, 'Battle Gym', '', 8),
(72, 'Solar Plexia Archway', '', 8),
(73, 'Solar Plexia\'s Shrine', '', 8),
(74, 'No-Brakes Mine', '', 9),
(75, 'Flyover Wilds', '', 9),
(76, 'Arms-Race Gym', '', 9),
(77, 'Beltline Tower', '', 9),
(78, 'Dreadmill', '', 9),
(79, 'Pushpull Shrine', '', 9),
(80, 'Dragaux Stadium', '', 9),
(81, 'Smack Back', '', 9),
(82, 'Chest Set', '', 9),
(83, 'Otherside Street', '', 9),
(84, 'Squattery Wheel', '', 9),
(85, 'Bootstrap Tower', '', 9),
(86, 'Otherside Waterway', '', 9),
(87, 'Gluting Gallery', '', 10),
(88, 'Robo-Wrecker', '', 10),
(89, 'Squat Goals', '', 10),
(90, 'Thigh Rider', '', 10),
(91, 'Aerochute', '', 10),
(92, 'Core Crushing', '', 10),
(93, 'Finishing School', '', 10),
(94, 'Dragaux Stadium', '', 10),
(95, 'Floating Waterway', '', 10),
(96, 'Fusion Waterway', '', 10),
(97, 'Rumbling Road', '', 11),
(98, 'Dreadmill', '', 11),
(99, 'Sunset Road', '', 11),
(100, 'Athlete\'s Road', '', 11),
(101, 'Waist Set', '', 11),
(102, 'Cowardly Strongman\'s House', '', 11),
(103, 'Battle Gym', '', 11),
(104, 'Soak Road', '', 11),
(105, 'Battle Gym', '', 11),
(106, 'Bank Balance', '', 11),
(107, 'Hasty Highway', '', 11),
(108, 'Crate Crasher', '', 11),
(109, 'River Road', '', 11),
(110, 'Twilight Road', '', 11),
(111, 'Valley of Wishes', '', 11),
(112, 'Clever-Trick Temple', '', 12),
(113, 'Mt. Fearmenot', '', 12),
(114, 'Monster Den', '', 12),
(115, 'Battle Gym', '', 12),
(116, 'Upsurge Studio', '', 12),
(117, 'Soleus Gold Mine', '', 12),
(118, 'Tornado Temple', '', 12),
(119, 'Flexibility Set', '', 12),
(120, 'Fluttering Heights', '', 12),
(121, 'Temple of Balance', '', 12),
(122, 'Dragaux Stadium', '', 13),
(123, 'Squattery Wheel', '', 13),
(124, 'Smack Back', '', 13),
(125, 'Battle Gym', '', 13),
(126, 'Posture Set', '', 13),
(127, 'Missed Highway', '', 14),
(128, 'Bootstrap Tower', '', 14),
(129, 'Misty Corridor', '', 14),
(130, 'Abs Set', '', 14),
(131, 'Steadfast Road', '', 14),
(132, 'Invisible Temple', '', 14),
(133, 'High-Roller Complex', '', 14),
(134, 'Aerochute', '', 14),
(135, 'Thigh Rider', '', 14),
(136, 'Ghostship Tower', '', 14),
(137, 'Turmoil Territory', '', 14),
(138, 'Gazelle Channel', '', 14),
(139, 'Battle Gym', '', 14),
(140, 'Disappearance Path', '', 14),
(141, 'Six Park', '', 14),
(142, 'Upper Road', '', 15),
(143, 'Lower Road', '', 15),
(144, 'North Road', '', 15),
(145, 'South Road', '', 15),
(146, 'Battle Gym', '', 15),
(147, 'Aerohead Road', '', 15),
(148, 'Sedentary Swamp', '', 15),
(149, 'Condensation Corridor', '', 15),
(150, 'Hot Spot', '', 15),
(151, 'Squat Square', '', 15),
(152, 'Benchpress Battleground', '', 15),
(153, 'Redflag Ring', '', 15),
(154, 'Stumper Tower', '', 15),
(155, 'Wingflap Falls', '', 16),
(156, 'Bank Balance', '', 16),
(157, 'Flyover Pass', '', 16),
(158, 'Scrambled Wasteland', '', 16),
(159, 'Battle Gym', '', 16),
(160, 'Squat Goals', '', 16),
(161, 'Beaut Camp', '', 16),
(162, 'Flutterpeak Pass', '', 16),
(163, 'Gluting Gallery', '', 16),
(164, 'Crate Crasher', '', 16),
(165, 'Piston-Pump Rail', '', 16),
(166, 'Dreadmill', '', 16),
(167, 'Lower Body Set', '', 16),
(168, 'Pushover Corridor', '', 16),
(169, 'Perseverance Valley', '', 16),
(170, 'Dragaux Stadium', '', 16),
(171, 'Hamstring Marsh', '', 17),
(172, 'Sweat Street', '', 17),
(173, 'Squattery Wheel', '', 17),
(174, 'Hangon Bridge', '', 17),
(175, 'Dragaux Stadium', '', 17),
(176, 'Stamina Set', '', 17),
(177, 'Backways Path', '', 17),
(178, 'Robo-Wrecker', '', 17),
(179, 'Inside Strait', '', 17),
(180, 'Battle Gym', '', 17),
(181, 'Bootstrap Tower', '', 17),
(182, 'Shivering Valley', '', 18),
(183, 'Wintry Watchtower', '', 18),
(184, 'Aerochute', '', 18),
(185, 'Core Crushing', '', 18),
(186, 'Snowflurry Valley', '', 18),
(187, 'Shoulders Set', '', 18),
(188, 'Freezing Freeway', '', 18),
(189, 'Rail to the Chief', '', 18),
(190, 'Chief\'s Foyer', '', 18),
(191, 'Chief\'s House', '', 18),
(192, 'Ohohwan River', '', 19),
(193, 'Wanoh Hills', '', 19),
(194, 'Battle Gym', '', 19),
(195, 'Ohwanoh Factory', '', 19),
(196, 'Upper Arms Set', '', 19),
(197, 'Heave-Ho Checkpoint', '', 19),
(198, 'Ohoh Valley', '', 19),
(199, 'Ohwanwan Route', '', 19),
(200, 'Battle Gym', '', 19),
(201, 'Wanohwanoh Way', '', 19),
(202, 'Ohohoh Tower', '', 19),
(203, 'Dragaux Stadium', '', 19),
(204, 'Smack Back', '', 19),
(205, 'Thigh Rider', '', 19),
(206, 'Dreadmill', '', 19),
(207, 'Trapezius Set', '', 20),
(208, 'Temple of Balance', '', 20),
(209, 'Squat Goals', '', 20),
(210, 'Howling Hollow', '', 20),
(211, 'Hang-Tough Temple', '', 20),
(212, 'Glowskin Ridge', '', 20),
(213, 'Bolthole Tunnel', '', 20),
(214, 'Battle Gym', '', 20),
(215, 'Marathon Field', '', 20),
(216, 'Swift Spire', '', 20),
(217, 'Gluting Gallery', '', 20),
(218, 'Crate Crasher', '', 20),
(219, 'Dragaux Stadium', '', 20),
(220, 'Jog-On Bog', '', 21),
(221, 'Ribcage Peak', '', 21),
(222, 'Battle Gym', '', 21),
(223, 'Whirling Halls', '', 21),
(224, 'Soaring Valley', '', 21),
(225, 'Entrance to Hades', '', 21),
(226, 'Squattery Wheel', '', 21),
(227, 'Robo-Wrecker', '', 21),
(228, 'Core Set', '', 21),
(229, 'Battle Gym', '', 21),
(230, 'Rear Byway', '', 21),
(231, 'Inner Byway', '', 21),
(232, 'Exercise Paradise', '', 22),
(233, 'Uplift Temple', '', 22),
(234, 'Battle Gym', '', 22),
(235, 'Gunsho Temple', '', 22),
(236, 'Aerobic Set', '', 22),
(237, 'Dreadmill', '', 22),
(238, 'Core Crushing', '', 22),
(239, 'Yogana', '', 22),
(240, 'Perspiration Paradise', '', 22),
(241, 'Six-Peak Temple', '', 22),
(242, 'Slab Paradise', '', 22),
(243, 'Calm Cloister', '', 22),
(244, 'Bootstrap Tower', '', 22),
(245, 'Bank Balance', '', 22),
(246, 'Judgement Pass', '', 22),
(247, 'Li\'l Grrr\'s House', '', 22),
(248, 'Hades Exit', '', 22),
(249, 'Stadium Grounds', '', 23),
(250, 'Stadium Barricade', '', 23),
(251, 'Dragaux Stadium', '', 23),
(252, 'Last Lookout', '', 23),
(253, 'Closing Coaster', '', 23),
(254, 'Smack Back', '', 23),
(255, 'Aerochute', '', 23),
(256, 'Ultimate Hollow', '', 23),
(257, 'Hindmost Highway', '', 23),
(258, 'Back Set', '', 23),
(259, 'Irrevocable River', '', 23),
(260, 'Battle Gym', '', 23);

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

-- --------------------------------------------------------

--
-- Structure de la table `rfa_smoothies`
--

DROP TABLE IF EXISTS `rfa_smoothies`;
CREATE TABLE IF NOT EXISTS `rfa_smoothies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(256) NOT NULL,
  `soin` int(11) NOT NULL,
  `effet` varchar(256) NOT NULL,
  `prix_achat` int(11) NOT NULL,
  `prix_vente` int(11) NOT NULL,
  `recette` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_smoothies`
--

INSERT INTO `rfa_smoothies` (`id`, `nom`, `soin`, `effet`, `prix_achat`, `prix_vente`, `recette`, `description`, `image`) VALUES
(1, 'Green Tea', 0, 'Yoga Skills Attack power ++', 150, 30, 'Basic Four-Color Recipe', 'Green Tea is a smoothie in Ring Fit Adventure. It requires Basic Four-Color Recipe to be able to be made. When used in battle, it raises the attack power of Yoga Skills for a period of time.', ''),
(2, 'Spinach Smoothie', 1, '', 120, 24, 'Spinach Recipe', 'Spinach Smoothie is a smoothie in Ring Fit Adventure. It requires Spinach Recipe to be able to be made, and it can heal the player. It is usually used for starter players near the beginning of the game. There is a variant that heals 2 hearts which is Super Spinach Smoothie.\r\n', ''),
(3, 'Super Spinach Smoothie', 2, '', 0, 36, 'Spinach Recipe', 'Super Spinach Smoothie is a smoothie in Ring Fit Adventure.\r\nIt requires Spinach Recipe to be able to be made.\r\n\r\n', ''),
(4, 'Strawberry Smoothie', 0, 'Battle Arm Skills Attack power', 150, 30, 'Basic Four-Color Recipe', 'Strawberry Smoothie is a smoothie in Ring Fit Adventure. It requires Basic Four-Color Recipe to be able to be made, and can increase red attacks.', ''),
(5, 'Sesame Smoothie', 0, 'Course Doubles ingredient drops', 0, 40, 'Sesame Smoothie Recipe', 'Sesame Smoothie is a smoothie in Ring Fit Adventure. It requires Sesame Smoothie Recipe to be able to be made.', ''),
(6, 'Milk Pudding', 0, 'Course Makes jogging and knee lifts easier', 0, 40, 'Milk Pudding Recipe', 'Milk Pudding is a smoothie in Ring Fit Adventure. It requires Milk Pudding Recipe to be able to be made.\r\n', ''),
(7, 'Grape Smoothie', 0, 'Battle Blue Skills Attack power ++', 150, 30, 'Basic Four-Color Recipe', 'Grape Smoothie is a smoothie in Ring Fit Adventure. It requires Basic Four-Color Recipe to be able to be made. It increases Leg Skills\' attack power.\r\n', '');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_smoothies_has_ingredients`
--

DROP TABLE IF EXISTS `rfa_smoothies_has_ingredients`;
CREATE TABLE IF NOT EXISTS `rfa_smoothies_has_ingredients` (
  `id_smoothie` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  KEY `id_smoothie` (`id_smoothie`),
  KEY `id_ingredient` (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_smoothies_has_ingredients`
--

INSERT INTO `rfa_smoothies_has_ingredients` (`id_smoothie`, `id_ingredient`, `quantite`) VALUES
(1, 8, 3),
(2, 2, 2),
(3, 2, 3),
(4, 3, 3),
(5, 4, 1),
(5, 5, 2),
(6, 6, 2),
(6, 7, 1),
(7, 1, 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `rfa_exercices`
--
ALTER TABLE `rfa_exercices`
  ADD CONSTRAINT `rfa_exercices_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `rfa_categories` (`id`);

--
-- Contraintes pour la table `rfa_personnages`
--
ALTER TABLE `rfa_personnages`
  ADD CONSTRAINT `rfa_personnages_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `rfa_categories` (`id`);

--
-- Contraintes pour la table `rfa_smoothies_has_ingredients`
--
ALTER TABLE `rfa_smoothies_has_ingredients`
  ADD CONSTRAINT `rfa_smoothies_has_ingredients_ibfk_1` FOREIGN KEY (`id_smoothie`) REFERENCES `rfa_smoothies` (`id`),
  ADD CONSTRAINT `rfa_smoothies_has_ingredients_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `rfa_ingredients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
