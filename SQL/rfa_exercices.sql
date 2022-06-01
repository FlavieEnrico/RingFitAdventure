-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 mai 2022 à 09:55
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

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
(27, 'Ring Raise Comba', 'Ring Raise Combo is a leg Fit Skill.\nRing Raise Combo is granted to the player upon beating World 7\'s Gluting Gallery.\n\nObtaining the Fit Skill Ring Raise Combo is a really unique way to get it.', 2, 155, 1, '', '', 3),
(28, 'Ring Raise Combo', 'Ring Raise Combo is a leg Fit Skill.\nRing Raise Combo is granted to the player upon beating World 7\'s Gluting Gallery.\n\nObtaining the Fit Skill Ring Raise Combo is a really unique way to get it.', 2, 155, 1, '', '', 3),
(29, 'Russian Twist', 'Russian Twist is a stomach Fit Skill.\n\nRussian Twist can be acquired as a reward for completing the World 9 chest set with a B rank and above.', 3, 130, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/94/Screenshot_2020-10-05_at_4.35.59_PM.png', 2),
(30, 'Seated Forward Press', 'Seated Forward Press is a stomach Fit Skill.\nSeated Forward Press can be acquired by opening a treasure chest located in the World 6 map.', 3, 5, 0, '', '', 2),
(31, 'Seated Ring Raise', 'Seated Ring Raise is a stomach Fit Skill.\nSeated Ring Raise can be unlocked via the first expansion of the skill tree.', 2, 220, 1, '', '', 2),
(32, 'Shoulder Press', 'Shoulder Press is an arm Fit Skill where you place the Ring-Con on your shoulder and press on it.\nShoulder Press is granted to the player via redeeming skill points in the Skill Tree\'s first tier of options.', 3, 6, 0, '', '', 1),
(33, 'Side Step', 'Side Step is a leg Fit Skill.\nSide Step is granted to the player when it\'s unlocked from the Skill Tree.', 2, 160, 3, '', '', 3),
(34, 'Squat', 'Squat is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via the start of a new game in Adventure Mode. Squats have two variants; Wide Squat and Overhead Squat.', 1, 30, 1, 'Entering Form :\nStand with your feet shoulder width apart.\nPoint the Ring-Con straight in front of you.\n\nDuring Exercise :\nTo complete this exercise, the player needs to squat, bending their knees and lowering their back.\n\nRing\'s Tips :\nThis will focus on working your legs!', '', 3),
(35, 'Standing Forward Fold', 'Standing Forward Fold is a yoga Fit Skill.\nStanding Forward Fold is granted to the player when it\'s unlocked from the Skill Tree.', 3, 8, 0, '', '', 4),
(36, 'Standing Twist', 'Standing Twist is a stomach Fit Skill in which you position the Ring-Con horizontally in front of yourself and twist your waist from side to side.\n\nStanding Twist is granted to the player upon reaching Lv. 8', 2, 20, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/8/88/Twist.jpeg/revision/latest/scale-to-width-down/110?cb=20200417194422', 2),
(37, 'Thigh Press', 'Thigh Press is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 23.', 1, 80, 1, 'Entering Form :\n1\n2\n3\n\nDuring Exercise :\nTo complete this exercise, the player must press on the Ring-Con with their thighs and hold until told to release. Repeating the process until completion of the exercise.', '', 3),
(38, 'Tree Pose', 'Tree Pose is a yoga Fit Skill.\nTree Pose is granted to the player upon reaching Lv. 68.', 2, 220, 1, '', '', 4),
(39, 'Tricep Kickback', 'Tricep Kickback is an arm Fit Skill in Ring Fit Adventure.\n\nTricep Kickback is granted to the player upon reaching Lv. 62', 2, 145, 3, 'Entering Form\n\nPut your right leg forward and bend your knee.\nHold the Ring-Con in your left hand, and raise your elbow.\nDuring Exercise\n\nTo complete this exercise, you bend your knee, put your ring con free hand on your knee, and raise the other arm with the Ring-Con up and down. After the half amount of reps, you switch sides.\n\nRing\'s Tips\n\nLike you\'re carrying something heavy!\nFocus on your upper arms!', '', 1),
(40, 'Warrior I Pose', 'Warrior I Pose is a yoga Fit Skill.\nWarrior I Pose is granted to the player upon reaching Lv. 14.', 1, 61, 1, '', '', 4),
(41, 'Warrior II Pose', 'Warrior II Pose is a yoga Fit Skill.\nWarrior II Pose is granted to the player upon reaching Lv. 32.', 2, 60, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/e/ea/2.jpeg/revision/latest/scale-to-width-down/185?cb=20200402005927', 4),
(42, 'Warrior III Pose', 'Warrior III Pose is a yoga Fit Skill.\nWarrior III Pose is granted to the player when it\'s unlocked from the Skill Tree.', 2, 125, 3, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/1/1e/Screenshot_2020-10-07_at_11.55.05_AM.png', 4),
(43, 'Wide Squat', 'The Wide Squat is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 35. It is another variation of Squat, but you squat with your legs open.\n', 2, 85, 3, 'Entering Form :\nSpread your feet wide.\nPoint the Ring-Con straight in front of you.\n\nDuring Exercise :\nTo complete this exercise, the player needs to bend their knees and lower their back while their legs are wide.\n\nRing\'s Tips :\nPoint the tips of your toes firmly outward!', 'https://static.wikia.nocookie.net/ringfitadventure/images/c/c3/Wide.jpeg/revision/latest/scale-to-width-down/110?cb=20200402005055', 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `rfa_exercices`
--
ALTER TABLE `rfa_exercices`
  ADD CONSTRAINT `rfa_exercices_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `rfa_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
