-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 15 mai 2022 à 17:49
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `flavie_enrico_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `rfa_categories`
--

CREATE TABLE `rfa_categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `rfa_ennemis` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `apparence` text NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `rfa_exercices` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `rechargement` int(11) NOT NULL,
  `attaque` int(11) NOT NULL,
  `portee` int(11) NOT NULL,
  `methode` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_exercices`
--

INSERT INTO `rfa_exercices` (`id`, `nom`, `description`, `rechargement`, `attaque`, `portee`, `methode`, `image`, `id_categorie`) VALUES
(1, 'Front Press', 'Front Press is a Fit Skill in Adventure Mode where the player holds the Ring-Con horizontally in front of them and presses in on it.\r\nFront Press is an arm Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 5.', 2, 25, 3, 'Entering Form :\r\nStand with your feet shoulder width apart.\r\nHold the Ring-Con horizontally.\r\n\r\nDuring Exercise :\r\nTo complete this exercise, the player needs to press in on the Ring-Con when it\'s horizontally in front of them.\r\n\r\nRing\'s Tips :\r\nPress in on the Ring-Con as you breathe out!', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f2/Front.jpeg/revision/latest/scale-to-width-down/66?cb=20200401155107', 1),
(2, 'Bow Pull', 'Bow Pull is an arm Fit Skill. The player must stand with their feet shoulder width apart and raise the Ring-Con in front of their face and pull it as if drawing a bowstring. The Fit Skill requires the player to switch arms during the exercise.\r\nBow Pull is obtained at Level 17 in Adventure Mode.', 2, 35, 5, '', '', 1),
(3, 'Overhead Arm Twist', 'Overhead Arm Twist is an arm Fit Skill where you raise both hands, with the Ring-Con on one hand, and twist your arms rhythmically.\r\nOverhead Arm Twist is granted to the player upon reaching Lv. 29.', 5, 705, 1, 'Entering Form:\r\nStand with your feet shoulder width apart.\r\nHold the Ring-Con in one hand, and raise both hands.\r\n\r\nRing\'s Tips:\r\n\"Good for working those upper arms!\"\r\n\"Twist your arms!\"', '', 1),
(4, 'Overhead Arm Spin', 'Overhead Arm Spin is an arm Fit Skill in Ring Fit Adventure.\r\n\r\nOverhead Arm Spin is granted to the player upon reaching Lv. 47', 3, 90, 5, 'Entering Form :\r\n\r\nStand with your feet shoulder width apart.\r\nRaise both arms.\r\nDuring Exercise\r\n\r\nTo complete this exercise, you raise the Ring-Con with both hands over your head and draw circles with it by turning around your arms.\r\n\r\nRing\'s Tips :\r\n\r\nRotate the Ring-Con around!\r\nThis may help relax your shoulders!', '', 1),
(5, 'Shoulder Press', 'Shoulder Press is an arm Fit Skill where you place the Ring-Con on your shoulder and press on it.\r\nShoulder Press is granted to the player via redeeming skill points in the Skill Tree\'s first tier of options.', 3, 6, 0, '', '', 1),
(6, 'Tricep Kickback', 'Tricep Kickback is an arm Fit Skill in Ring Fit Adventure.\r\n\r\nTricep Kickback is granted to the player upon reaching Lv. 62', 2, 145, 3, 'Entering Form\r\n\r\nPut your right leg forward and bend your knee.\r\nHold the Ring-Con in your left hand, and raise your elbow.\r\nDuring Exercise\r\n\r\nTo complete this exercise, you bend your knee, put your ring con free hand on your knee, and raise the other arm with the Ring-Con up and down. After the half amount of reps, you switch sides.\r\n\r\nRing\'s Tips\r\n\r\nLike you\'re carrying something heavy!\r\nFocus on your upper arms!', '', 1),
(7, 'Shoulder Press', 'Shoulder Press is an arm Fit Skill where you place the Ring-Con on your shoulder and press on it.\r\nShoulder Press is granted to the player via redeeming skill points in the Skill Tree\'s first tier of options.', 3, 6, 0, '', '', 1),
(8, 'Tricep Kickback', 'Tricep Kickback is an arm Fit Skill in Ring Fit Adventure.\r\n\r\nTricep Kickback is granted to the player upon reaching Lv. 62', 2, 145, 3, 'Entering Form\r\n\r\nPut your right leg forward and bend your knee.\r\nHold the Ring-Con in your left hand, and raise your elbow.\r\nDuring Exercise\r\n\r\nTo complete this exercise, you bend your knee, put your ring con free hand on your knee, and raise the other arm with the Ring-Con up and down. After the half amount of reps, you switch sides.\r\n\r\nRing\'s Tips\r\n\r\nLike you\'re carrying something heavy!\r\nFocus on your upper arms!', '', 1),
(9, 'Back Press', 'Back Press is an arm Fit Skill in which you put the Ring-Con behind your back and press on it.\r\nBack Press is granted to the player via redeeming skill points in the Skill Tree\'s first tier of options.', 2, 220, 1, '', '', 1),
(12, 'Knee-to-Chest', 'Knee-to-Chest is a stomach Fit Skill. The player must sit on the floor with their legs extended outwards using their hands to support their upper body. The player then raises both legs off the ground towards their chest before extending them again.\r\nKnee-to-Chest is granted to the player at the start of a new game in Adventure Mode.\r\n\r\nKnee-to-Chest_Demonstration\r\nKnee-to-Chest Demonstration\r\n\r\n', 1, 30, 1, 'Ring\'s Tips :\r\n\"Avoid doing this on a hard floor\"', 'https://static.wikia.nocookie.net/ringfitadventure/images/5/54/Knee_To_Chest.jpg/revision/latest/scale-to-width-down/180?cb=20210320024315', 2),
(13, 'Standing Twist', 'Standing Twist is a stomach Fit Skill in which you position the Ring-Con horizontally in front of yourself and twist your waist from side to side.\r\n\r\nStanding Twist is granted to the player upon reaching Lv. 8', 2, 20, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/8/88/Twist.jpeg/revision/latest/scale-to-width-down/110?cb=20200417194422', 2),
(14, 'Plank', 'Plank is a stomach Fit Skill in Ring Fit Adventure.\r\n\r\n\r\nIn Adventure Mode, Plank is granted to the player upon reaching Lv. 20.', 2, 50, 3, 'Entering Form :\r\n\r\nSet the Ring-Con down.\r\nPut your elbows on the floor.\r\nExtend your legs straight behind you.\r\n\r\nDuring Exercise :\r\n\r\nTo complete this exercise, you hold your body straight and parallel to the floor while resting on your toes and elbows, and repeatedly raising your waist up and down.\r\n\r\nRing\'s Tips :\r\n\r\nDon\'t lower your glutes so much that your lower back bends!\r\n', '', 2),
(15, 'Overhead Bend', 'Overhead Bend is a stomach Fit Skill.\r\nOverhead Bend can be acquired by opening the treasure chest located in the World 4 map.\r\n\r\nLevel 1 attack: 70\r\n\r\nLevel 2 attack: 340\r\n\r\nLevel 3 attack: 790\r\n\r\nLevel 4 attack: 1000', 1, 1000, 1, '', '', 2),
(16, 'Open and Close Leg Raise', 'Open & Close Leg Raise is a stomach Fit Skill.\r\nOpen & Close Leg Raise can be acquired by opening the treasure chest located in the World 5 map.', 3, 5, 0, '', '', 2),
(17, 'Overhead Hip Shake', 'Overhead Hip Shake is a stomach Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 38.', 3, 70, 5, 'During Exercise :\r\n\r\nTo complete this exercise, the player must shake their hips from side to side while keeping the Ring-Con above their head. The player must do this repeatedly until all reps have been cleared.', 'https://static.wikia.nocookie.net/ringfitadventure/images/b/bc/Shake.jpeg/revision/latest/scale-to-width-down/73?cb=20200402005150', 2),
(18, 'Seated Forward Press', 'Seated Forward Press is a stomach Fit Skill.\r\nSeated Forward Press can be acquired by opening a treasure chest located in the World 6 map.', 3, 5, 0, '', '', 2),
(19, 'Squat', 'Squat is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via the start of a new game in Adventure Mode. Squats have two variants; Wide Squat and Overhead Squat.', 1, 30, 1, 'Entering Form :\r\nStand with your feet shoulder width apart.\r\nPoint the Ring-Con straight in front of you.\r\n\r\nDuring Exercise :\r\nTo complete this exercise, the player needs to squat, bending their knees and lowering their back.\r\n\r\nRing\'s Tips :\r\nThis will focus on working your legs!', '', 3),
(20, 'Knee Lift', 'Knee Lift is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 11. It is the same variant of Knee-Lift Combo, but you perform a knee lift and then the Wide Squat move which can attack 3 enemies in one turn.\r\nWhen climbing up on stairs, or traveling in water, to go faster, you can do knee lifts.', 1, 50, 1, 'Entering Form :\r\nStand with your feet shoulder width apart.\r\nRaise both arms.\r\n\r\nDuring Exercise :\r\nTo complete this exercise, the player needs to lift their legs up and down while lowering and raising their arms.\r\n\r\nRing\'s Tips :\r\nKnee lifts can help with abdominal training as well!', '', 3),
(21, 'Thigh Press', 'Thigh Press is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 23.', 1, 80, 1, 'Entering Form :\r\n1\r\n2\r\n3\r\n\r\nDuring Exercise :\r\nTo complete this exercise, the player must press on the Ring-Con with their thighs and hold until told to release. Repeating the process until completion of the exercise.', '', 3),
(22, 'Wide Squat', 'The Wide Squat is a leg Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is acquired by the player via reaching Lv. 35. It is another variation of Squat, but you squat with your legs open.\r\n', 2, 85, 3, 'Entering Form :\r\nSpread your feet wide.\r\nPoint the Ring-Con straight in front of you.\r\n\r\nDuring Exercise :\r\nTo complete this exercise, the player needs to bend their knees and lower their back while their legs are wide.\r\n\r\nRing\'s Tips :\r\nPoint the tips of your toes firmly outward!', 'https://static.wikia.nocookie.net/ringfitadventure/images/c/c3/Wide.jpeg/revision/latest/scale-to-width-down/110?cb=20200402005055', 3),
(23, 'Hip Lift', 'Hip Lift is a leg Fit Skill.\r\nIt is granted to the player upon reaching Lv. 44.', 3, 6, 0, '', '', 3),
(24, 'Ring Raise Comba', 'Ring Raise Combo is a leg Fit Skill.\r\nRing Raise Combo is granted to the player upon beating World 7\'s Gluting Gallery.\r\n\r\nObtaining the Fit Skill Ring Raise Combo is a really unique way to get it.', 2, 155, 1, '', '', 3),
(25, 'Overhead Squat', 'Overhead Squat is a leg Fit Skill.\r\nOverhead Squat is granted to the player when it\'s unlocked from the Skill Tree.\r\n\r\nIt is a similar variant than the Squat and Wide Squat, but this skill can attack up to 5 enemies in one turn.', 3, 110, 5, '', '', 3),
(26, 'Chair Pose', 'Chair Pose is a yoga Fit Skill in Ring Fit Adventure\'s Adventure Mode. It is granted to the player at the start of a new game in Adventure Mode.', 1, 30, 1, 'Entering Form :\r\nSquat down slowly.\r\nRaise the Ring-Con with both arms.\r\n\r\nDuring Exercise :\r\nTo complete the exercise, the player, while keeping a squatting position, must lower down the Ring-Con with both hands slowly until the lotus flower fully opens up, afterwards they must raise the Ring-Con slowly. the player must this repeatedly until all reps have been completed.', 'https://static.wikia.nocookie.net/ringfitadventure/images/6/69/Chair.jpeg/revision/latest/scale-to-width-down/108?cb=20200401154913', 4),
(27, 'Warrior I Pose', 'Warrior I Pose is a yoga Fit Skill.\r\nWarrior I Pose is granted to the player upon reaching Lv. 14.', 1, 61, 1, '', '', 4),
(28, 'Fan Pose', 'The Fan Pose is a yoga Fit Skill.\r\nThe Fan Pose is granted to the player upon reaching Lv. 26.', 3, 4, 0, 'Entering Form :\r\n\r\nSit and extend your left leg diagonally.\r\nBend your right knee and pull your heel in.\r\nHold both arms straight up.\r\n\r\nRing\'s Tips :\r\n\r\nYou don\'t have to force your legs open!\r\nBe sure to keep your upper body straight!', 'https://static.wikia.nocookie.net/ringfitadventure/images/7/71/Fan.jpeg/revision/latest/scale-to-width-down/161?cb=20200402010326', 4),
(29, 'Warrior II Pose', 'Warrior II Pose is a yoga Fit Skill.\r\nWarrior II Pose is granted to the player upon reaching Lv. 32.', 2, 60, 5, '', 'https://static.wikia.nocookie.net/ringfitadventure/images/e/ea/2.jpeg/revision/latest/scale-to-width-down/185?cb=20200402005927', 4),
(30, 'Tree Pose', 'Tree Pose is a yoga Fit Skill.\r\nTree Pose is granted to the player upon reaching Lv. 68.', 2, 220, 1, '', '', 4),
(31, 'Standing Forward Fold', 'Standing Forward Fold is a yoga Fit Skill.\r\nStanding Forward Fold is granted to the player when it\'s unlocked from the Skill Tree.', 3, 8, 0, '', '', 4),
(32, 'Boat Pose', 'Boat Pose is a yoga Fit Skill.\r\nBoat Pose is granted to the player when it\'s found from a treasure chest in World 10.', 3, 155, 5, '', '', 4);

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

CREATE TABLE `rfa_mondes` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rfa_mondes`
--

INSERT INTO `rfa_mondes` (`id`, `nom`, `description`, `image`) VALUES
(1, 'Là où tout commence…', 'Vous avez voyagé depuis un lieu lointain et avez rejoint les forces de l\'être mythique Ring. Ensemble, vous devez défendre les innocents contre le sinistre dresseur Dragaux et sa sombre influence ! Tout dépend de toi, joueur ! ', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/96/Screenshot_2020-08-18_at_10.48.01_AM.png'),
(2, 'Les contrées nocturnes', 'Vous avez rejoint les forces de Ring et presque battu Dragaux avant que le méchant ne s\'enfuie. Plus Dragaux exercera sa sombre influence, plus il deviendra fort. Tu dois l\'arrêter !\r\n\r\nLes monstres que Dragaux a créés ont commencé à attaquer les gens ! Il y a une ville à proximité qui pourrait être en danger. Protège les habitants du règne de terreur de Dragaux !\r\n\r\nAvec Ring, tu as protégé les habitants de la ville des monstres envahisseurs. Mais il y a sûrement d\'autres personnes en danger. Continue à avancer, joueur !', 'https://static.wikia.nocookie.net/ringfitadventure/images/e/ed/RingFitWorld2.PNG'),
(3, 'La boutique et la pierre brillante', 'Dragaux a atteint une terre à forte population humaine. Travaillez avec Ring pour empêcher Dragaux de répandre sa sombre influence !\r\n\r\nTu as retrouvé Bichon au magasin général, mais des monstres ont volé les ingrédients de son smoothie. Prétextant qu\'il ne peut pas rentrer chez lui sans un cadeau pour sa femme, est parti à la recherche d\'un souvenir.\r\n\r\nBichette et Bichon ont un nouveau problème : leur mixeur est cassé. Ils ont dit qu\'un nouveau mixeur pouvait être trouvé dans l\'Usine Générale, mais cette zone est pleine de monstres !\r\n\r\nToi et Ring avez récupéré un nouveau mixeur. Maintenant, vous pouvez acheter des smoothies au magasin général ! Les smoothies sont excellents pour la récupération, alors essaie d\'en avoir toujours à portée de main !\r\n\r\nLa pierre brillante que cherchait Bichette était en fait un pouvoir volé à Ring ! Maintenant que son pouvoir des smoothies est restauré, Ring peut te préparer des smoothies à tout moment !', 'https://static.wikia.nocookie.net/ringfitadventure/images/2/27/Screenshot_2020-09-21_at_3.37.58_PM.png'),
(4, 'Le royaume de Sporte', 'Dragaux a fui vers le Royaume de Sporte. Ring pense que les Sportiates seront à l\'abri de l\'influence de Dragaux, mais tu sais mieux.\r\n\r\nDragaux est de l\'autre côté d\'une large rivière que tu ne peux pas traverser, mais ne t\'inquiète pas. Le commandant Sportiate t\'entraînera à traverser cette rivière à la manière des Sportiates !\r\n\r\nDragaux est de l\'autre côté d\'une large rivière. Comme toi et Ring n\'avez aucun moyen de la traverser, le commandant Sportiate a commencé à t\'entraîner à la traverser comme un sportif !\r\n\r\nAprès avoir obtenu l\'approbation du Commandant Sportan, des monstres sont soudainement apparus dans le Trésor de Sporte, où l\'on dit qu\'un joyau étincelant se trouve. Détruis les monstres et recherche le joyau brillant !\r\n\r\nTu as aidé Ring à vaincre les monstres et à récupérer la pierre brillante, qui contenait la capacité d\'aviron de rivière volée à Ring ! Tu peux maintenant traverser la plus large des rivières !\r\n\r\nTu as aidé Ring à récupérer sa capacité à ramer, ce qui vous a permis à tous les deux de traverser la rivière Sportiate en toute sécurité. Prochaine étape, Dragaux !', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f2/World_4_map.png'),
(5, 'Drago contre les quatre maîtres', 'Tu as chassé Dragaux du Royaume de Sporte et ramené l\'espoir au peuple Sportan. Pourtant, le discours de Dragaux sur le renforcement de ses défenses est inquiétant.\r\n\r\nTu as rencontré Allegra, le maître des jambes. Quand elle a appris que tu cherchais Dragaux, elle est allée consulter les autres maîtres. Va rejoindre Allegra pour voir ce qu\'ils pensent.\r\n\r\nAllegra t\'a approuvé, mais maintenant tu dois gagner le respect d\'Armando, le maître des bras.\r\n\r\nVous avez rencontré le maître de bras, Armando. Il est aussi intense que musclé, et il semble très méfiant à ton égard. Attention, car son épreuve sera très délicate.\r\n\r\nVous avez obtenu les approbations d\'Allegra et d\'Armando. Vous devez maintenant relever le défi d\'Abdonis, le maître des abdos !\r\n\r\nVous avez sauvé un jeune homme piégé par des chutes de pierres. Maintenant que la route est dégagée, vous pouvez continuer votre voyage pour rencontrer Abdonis, le maître des abdos !\r\n\r\nLe jeune homme que vous avez sauvé était en fait Abdonis, le maître des abdos lui-même ! Maintenant que vous avez passé l\'épreuve d\'Abdonis, il ne reste plus que Guru Andma, le maître de l\'équilibre !\r\n\r\nAprès que tu aies vaincu la boule de compagnie de Guru Andma au combat, les quatre maîtres ont accepté de t\'aider à vaincre Dragaux. Ils vous attendent maintenant dans le stade à venir. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/9b/World_5_map_2.png'),
(6, 'Le pays sous emprise', 'Dragaux a capturé les quatre maîtres ! Tu dois les libérer avant que le plan diabolique qu\'il a en tête ne se réalise !\r\n\r\nCette terre est complètement sous le contrôle de la sombre influence de Dragaux. Même les quatre maîtres sont en danger de succomber à son pouvoir. Arrêter Dragaux devra attendre - tu dois d\'abord sauver les quatre maîtres !\r\n\r\nTu as retrouvé Allegra, Armando et Abdonis et tu as découvert qu\'ils sont complètement sous le contrôle de la sombre influence de Dragaux.\r\n\r\nTu as retrouvé le gourou Andma et découvert que, tout comme Allegra, Armando et Abdonis, elle était complètement sous le contrôle de la sombre influence de Dragaux. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/8/8c/World_6_map.png'),
(7, 'La beauté filante de la forêt', 'Dragaux s\'est envolé avec les quatre maîtres sous son emprise. Poursuivez-les, et libérez-les de sa sombre influence !\r\n\r\nEn cherchant Allegra, tu as entendu parler d\'une femme nommée Dashley, qui pourrait savoir où la trouver. Voyagez jusqu\'à Trotter\'s Grove et trouvez Dashley !\r\n\r\nDashley ne peut conserver sa jeunesse que si elle continue à courir, mais des monstres bloquent son chemin de jogging dans la forêt. Aide Dashley pour pouvoir lui demander des nouvelles d\'Allegra !\r\n\r\nDashley était autrefois le maître d\'Allegra. Allegra pensait qu\'elle pouvait empêcher Dashley de courir et ainsi devenir elle-même un coureur de haut niveau. Allegra peut-elle être sauvée de la sombre influence ? ', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f3/World_7_map.png'),
(8, 'Les larmes d\'Ondine', 'Dashley a accepté de veiller sur son élève, Allegra, et d\'essayer d\'avoir une influence positive. Toi et Ring êtes passés à la terre suivante, après Dragaux.\r\n\r\nCette terre est en proie à une pluie incessante formée par les larmes d\'une déesse appelée Solar Plexia, qui ne devrait apporter que des jours ensoleillés à son peuple. Peut-être pouvez-vous aider ?\r\n\r\nLa prêtresse vous a indiqué comment vous rendre au sanctuaire de Solar Plexia, mais elle vous a également révélé que les gouttes de pluie que vous aviez recueillies n\'avaient aucune utilité. Vous commencez à vous interroger sur l\'identité du jeune homme qui a mentionné les gouttes de pluie...\r\n\r\nAbdonis a bloqué la route menant au sanctuaire de Solar Plexia. Vous réalisez maintenant que le jeune homme qui a mentionné les gouttes de pluie était aussi lui déguisé. Vous vous rendez compte qu\'Abdonis semble bien connaître cet endroit... ', 'https://static.wikia.nocookie.net/ringfitadventure/images/a/a0/Screenshot_20200818-071429.png'),
(9, 'Le temple de Grodur', 'La prêtresse servant Solar Plexia était en réalité la mère d\'Abdonis. Mais il n\'y a pas de temps pour digérer cela, car Dragaux a volé la sphère de lumière de Solar Plexia !\r\n\r\nTu as appris que Dragaux a laissé l\'orbe de lumière de Ring à Armando dans son Dojo Flex. Le récupérer pourrait être un problème. L\'orbe (ou la sphère) est le jump boost de Ring ! !! Tu as récupéré la capacité Jump Boost de Ring ! Dragaux a répondu en déchargeant sa rage sur Armando, en envoyant des monstres dans son gymnase d\'entraînement. Ne sont-ils pas dans le même camp ?!', 'https://static.wikia.nocookie.net/ringfitadventure/images/e/ed/World_9_map.png'),
(10, 'Bienvenue en Amusie', 'Vous avez récupéré la capacité Jump Boost de Ring ! Il ne lui reste plus qu\'une capacité avant d\'avoir récupéré tous ses pouvoirs.\r\n\r\nLe paradis des enfants, Grandminion Gauntlet, se dresse entre toi et Dragaux. Si tu espères l\'atteindre, tu devras gagner des parties contre tous les Grandminions que Guru Andma a formés.\r\n\r\nTu as vaincu Guru Andma et ses Grandminions ! Tu peux maintenant affronter Dragaux !', 'https://static.wikia.nocookie.net/ringfitadventure/images/3/3b/World_10_map.png'),
(11, 'La vallée des vœux', 'Vous avez été victorieux dans la bataille contre Dragaux, mais le méchant reste imperturbable. Insistant sur le fait que la victoire finale (et en fait, le monde) est à sa portée, il s\'est envolé vers la terre suivante.\r\n\r\nRing a l\'idée de sauver Dragaux en visitant la Vallée des souhaits, où tous les souhaits peuvent se réaliser. Cependant, la Vallée s\'est avérée insaisissable. Une diseuse de bonne aventure prétend que trois amis détiennent la clé pour trouver la Vallée.\r\n\r\nPour atteindre la Vallée, vous devez vous faire trois amis. Votre première rencontre est avec Scarecruel, dont la personnalité abrasive vous fait vous demander, à vous et à Ring, si elle peut vraiment être considérée comme une amie. Lorsque vous rencontrez Scarecruel, elle vous demande de vaincre des monstres sans utiliser de smoothies, car elle prétend ne pas les aimer. Après avoir rencontré Scarecruel, tu as rencontré un jeune homme que Scarecruel t\'a ordonné de poursuivre, mais il était trop rapide pour toi, mais l\'homme a laissé tomber ses caisses. Après avoir brisé les caisses, vous rencontrez une matte noire. Après l\'avoir vaincue, l\'homme fort et lâche vous rejoint. Après avoir rencontré Scarecruel, ta prochaine rencontre est celle du Cowardly Strongman, qui semble être un dur à cuire mais qui est en fait un grand tendre. Maintenant, tu as deux amis... ou pas ?\r\n\r\nTrois amis sont nécessaires pour atteindre la Vallée des souhaits. Après l\'épouvantail sadique et l\'homme fort lâche, tu as rencontré un troisième \"ami\", le vaniteux Toned man. Ce trio douteux devrait satisfaire à la condition d\'entrée dans la Vallée.\r\n\r\nVous avez été rejoint dans votre voyage vers la Vallée des souhaits par le sadique Scarecruel, le lâche Strongman et le vaniteux Toned Man. Le chemin de la Vallée des souhaits est enfin ouvert !', 'https://static.wikia.nocookie.net/ringfitadventure/images/1/12/World_11_map_2.png'),
(12, 'L\'invention de Brikare', 'Scarecruel, Cowardly Strongman et Toned Man se sont révélés être Allegra, Armando et Abdonis déguisés ! Et pourtant ! L\'endroit où se trouve Guru Andma est inconnu, alors soyez prêts à tout !\r\n\r\nAu Battle Gym, tu as gagné le boulon d\'oiseau dont Daddalus a besoin pour continuer à travailler sur le dirigeable. Va maintenant le lui livrer au studio Upsurge !\r\n\r\nTu as vaincu les monstres et récupéré la capacité d\'aile de Ring ! Tu peux maintenant traverser la falaise et te diriger vers le Mont Fearmenot.\r\n\r\nAvec la capacité d\'aile de l\'anneau, vous avez traversé la falaise dangereuse du mont Fearmenot. Maintenant, célébrez le retour du pouvoir final de l\'anneau en battant Dragaux ! ', 'https://static.wikia.nocookie.net/ringfitadventure/images/d/db/Screenshot_20200827-103618.png'),
(13, 'L\'Eldorago', 'Tu t\'attendais à combattre Dragaux mais tu as rencontré Guru Andma à la place. On dirait que Dragaux utilise les 4 maîtres pour gagner du temps. Mais... du temps pour faire quoi ?\r\n\r\nPendant que tu étais occupé avec les Quatre Maitres. Dragaux a construit El Dorago, son utopie remplie de l\'influence des ténèbres. Avec ses citoyens sous le charme de Dragaux, il est peu probable que tu obtiennes leur aide dans ta recherche.\r\n\r\nL\'influence noire de Dragaux a rempli El Dorago. Les citoyens de la ville étant tous sous son emprise, aucun d\'entre eux n\'est prêt à vous aider dans votre recherche de Dragaux. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/fa/World_13_map.png'),
(14, 'Les enfants disparus', 'Tu as trouvé la cachette de Dragaux, mais il s\'est échappé une fois de plus. Qu\'est-ce qu\'il voulait dire quand il a mentionné \"ce pouvoir\" ?\r\n\r\nTu as rencontré un fantôme dans un endroit étrange, entouré de brouillard. Ring a nié avoir peur des fantômes, mais tu peux dire qu\'il en a vraiment peur.\r\n\r\nRing et toi êtes arrivés en ville, où vous avez appris que tous les enfants du pays ont disparu. Vous devrez continuer à enquêter pour découvrir le fin mot de ce mystère.\r\n\r\nAvec Ring, vous avez vaincu les monstres et libéré les enfants. Mais les enfants sont toujours sous forme de fantômes ! Y a-t-il un moyen de ramener les enfants à la normale ? !\r\n\r\nTu as appris que les enfants sont devenus des fantômes parce qu\'ils ont traité Abdonis de vieil homme pendant un séminaire d\'exercices abdominaux. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/6/6a/World_14_map_1.png'),
(15, 'Quizbourg', 'Abdonis, contrarié que les enfants l\'appellent \"le vieux\", les a transformés en fantômes. Il s\'est repenti quand il a vu leur innocence retrouvée, mais cela ne vous rapproche pas de la découverte de Dragaux.\r\n\r\nTout commence par un quiz et se termine par un quiz à Quizton. Vous devez trouver la bonne réponse pour avancer !\r\n\r\nTout commence par un quiz et se termine par un quiz à Quizton. Le quiz du chef est \"Lequel contient le plus de vitamine C par gramme ?\".\r\n\r\nLe joueur a choisi la bonne réponse, alors on continue !\r\n\r\nAprès avoir nettoyé le Battle Gym, le fils du chef du village vous a approché, souhaitant discuter de quelque chose.\r\n\r\nA Quizton, tout commence par un quiz et se termine par un quiz. Le quiz du fils du chef est \"Que signifie se calmer ?\".\r\n\r\nHeureusement, Player connaissait la réponse ! Sur quoi allez-vous être interrogé la prochaine fois ?\r\n\r\nTout commence par un quiz et se termine par un quiz à Quizton. Le deuxième quiz du fils du chef est \"Quel exercice ne fait pas partie des trois grands ?\" Répondez correctement à la question pour passer à la suite. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/b/ba/World_15_map_2.png'),
(16, 'Le robot magique', 'Dragaux a utilisé sa sombre influence pour renforcer ses abdos. Maintenant, il va renforcer le reste de son corps aussi ! Cours après Dragaux, et empêche-le de devenir encore plus fort !\r\n\r\nAllegra a demandé à son robot magique qui avait les fesses les plus solides. Le robot magique a répondu \"Titanium White\", ce qui a mis Allegra en colère. Elle est allée capturer Titanium White. Tu l\'as suivi, mais tu ne peux pas suivre le rythme de ces puissantes jambes.\r\n\r\nAllegra était occupée à faire quelque chose avec \"Blanc de Titane\". Alors, elle a demandé à son Cobalt Sufferfish de te battre. Tu l\'as vaincu, non ?\r\n\r\nAllegra a capturé Blanc Titane et a menacé de l\'éliminer en tant que rivale. Ça sent les ennuis pour Titanium White ! Rattrape-les, vite !\r\n\r\nTu as sauvé Titanium White... en quelque sorte. Malheureusement, Allegra a volé sa motivation, sa persévérance et son enthousiasme - les trois clés de l\'entraînement de Blanche-Neige. Il doit y avoir un moyen de les récupérer !\r\n\r\nVous avez gagné la première clé du gymnase ! Mais cela n\'a pas eu beaucoup d\'effet sur le Blanc de Titane. Il semble que tu auras besoin des trois clés avant qu\'elle ne redevienne normale.\r\n\r\nTu as gagné la troisième clé du gymnase ! Blanche Titane est redevenue son ancienne cybernétique. Allegra a été choquée par cette révélation mais semble bien contente d\'être la meilleure coureuse entièrement naturelle. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/4/49/World_16_map_2.png'),
(17, 'Le garçon qui criait au loup', 'Vous avez vaincu Allegra, mais Dragaux est toujours dehors à travailler sur ses jambes. Vas-y et arrête-le !\r\n\r\nTu as rencontré Linus, un garçon qui ment... pour une raison quelconque. Les habitants de la ville le détestent, car il ment toujours. Ring et le Stagiaire ont découvert que les animaux pouvaient être contrôlés par l\'influence obscure !\r\n\r\nLinus vous a suivi tranquillement, pour voir comment vous alliez gérer les animaux enragés. Quand il a vu votre pouvoir, il vous a supplié d\'être son entraîneur. Il semble qu\'il y ait quelqu\'un en ville qu\'il veut garder en sécurité.\r\n\r\nTu as compris plus tard que Dragaux avait dit à Linus de mentir, pour qu\'il puisse rendre ses jambes plus fortes. Dragaux a menti, et tu veux le poursuivre avant qu\'il ne soit trop tard !\r\n\r\nTu as rencontré Honey, qui semblait être la personne pour laquelle Linus s\'inquiétait. Elle a promis de retourner en ville et de dire à tout le monde à quel point Linus était utile. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/6/6f/World_17_map.png'),
(18, 'L\'homme bouillant des contrées gelées', 'Il s\'est avéré que c\'était Dragaux qui a piégé Linus en lui faisant mentir. Vous avez renvoyé Dragaux et les habitants ont pardonné à Linus, ce qui a permis une fin heureuse pour tous.\r\n\r\n(parenthèse de remplacement car il peut manquer un résumé, n\'hésitez pas à l\'enlever si ce n\'est pas le cas).\r\n\r\nL\'ami de Thermia bloqué dans la neige s\'est avéré être Honey du magasin général. Grâce à toi, Thermia et Honey ont pu rentrer saines et sauves en ville. Mais pourquoi n\'étaient-elles pas habillées pour le temps ?\r\n\r\nThermia et Honey ont expliqué qu\'elles n\'étaient pas habillées à cause des ordres de leur nouveau chef. D\'après ce que j\'ai entendu, ce nouveau chef ne peut être qu\'Armando !\r\n\r\nVous avez aidé un jeune homme en lui donnant de la soupe chaude. L\'homme se rendait à la maison du chef mais il t\'a prévenu qu\'il y avait un chien de garde chez le chef. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/3/30/World_18_map.png'),
(19, 'Le pays des Robots', 'Tu as vaincu Armando, qui a glissé quelques informations sur les plans de Dragaux. Il est parti entraîner ses bras dans le prochain pays !\r\n\r\nTu as voyagé avec Ring jusqu\'au Royaume des Robots. Comme tu ne comprenais pas le langage des robots, le binarese, Honey a suggéré de porter des vêtements du set Fitness Machine, qui permet de communiquer avec les robots et de comprendre le binarese.\r\n\r\nBien que Honey du magasin général parle couramment le binarese, vous ne le comprenez pas du tout. Heureusement, il y a une solution facile : tous ceux qui portent l\'ensemble de vêtements Fitness Machine peuvent parler le binarais.\r\n\r\nVous avez trouvé un robot couché sur le sol et incapable de bouger. Lorsque vous lui avez donné un smoothie, il s\'est rétabli et a eu quelques mots désagréables à propos d\'un certain dragon. Est-ce que Dragaux prépare quelque chose de sinistre ici aussi ?\r\n\r\nTu as rencontré un robot qui avait du mal à passer le point de contrôle que Dragaux avait mis en place. Tu as éliminé le Miel du magasin général qui parlait couramment le binaire, mais tu ne le comprenais pas du tout. Heureusement, il y a une solution facile : tous ceux qui portent l\'ensemble de vêtements Fitness Machine peuvent prononcer le binarese.\r\n\r\nAvant le début de l\'usine Ohwanoh, vous avez trouvé un robot allongé sur le sol et incapable de bouger. Lorsque vous avez donné un smoothie au robot, il s\'est rétabli et a eu quelques mots peu amènes à l\'égard d\'un dragon. Est-ce que Dragaux prépare quelque chose de sinistre ici aussi ?\r\n\r\nAvant le point de contrôle de Heave-Ho, tu as rencontré un robot qui avait du mal à passer le point de contrôle que Dragaux avait mis en place. Tu as nettoyé le point de contrôle et reçu les remerciements inimitables du robot.\r\n\r\nTu as trouvé un autre robot effondré sur le sol. Lorsque tu as donné au robot le smoothie qu\'il voulait, même Ring a été surpris par ses caractéristiques avancées.\r\n\r\nTu as parlé à un robot qui se plaignait que Dragaux avait fermé tous les gymnases d\'entraînement qui n\'étaient pas spécialisés dans les armes. Le Battle Gym, par contre, était toujours ouvert. Vous n\'avez pas perdu de temps pour vaincre le Battle Gym le plus proche.\r\n\r\nVous avez trouvé un robot doré effondré sur le sol. Ring était excité de voir les caractéristiques de celui-ci, mais lorsque vous lui avez donné un smoothie, le spectacle l\'a laissé sans voix. Peut-être que vous feriez mieux de vous diriger vers Dragaux. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/9/95/World_19_map.png'),
(20, 'Le pays sans sommeil', 'Tu as vaincu Dragaux une fois de plus, malgré tout son entraînement. Il semble convaincu que ce dont il a besoin maintenant, c\'est de se concentrer sur l\'équilibre de ses groupes musculaires. Ce qui doit signifier qu\'il prévoit de s\'entraîner avec Guru Andma !\r\n\r\nTu as découvert que c\'était Guru Andma qui enseignait à Dragaux comment équilibrer son entraînement. Maintenant Dragaux est toujours en liberté quelque part, faisant ses derniers préparatifs !\r\n\r\nEn cherchant la raison des bruits sourds provenant du stade de Dragaux, tu as rencontré Snoozie, qui courait fébrilement pour résister à l\'appel du sommeil. Ring a réussi à la faire dormir, lui offrant ainsi un repos bien mérité.\r\n\r\nBien que Ring ait réussi à endormir Snoozie, elle vous a rendu la pareille en vous incitant à lui donner des smoothies qui la maintiennent éveillée. Le seul moyen de l\'aider semble être de trouver Dragaux et d\'arrêter son cruel projet !', 'https://static.wikia.nocookie.net/ringfitadventure/images/7/7a/World_20_map_2.png'),
(21, 'Le pays des Limbes', 'Réalisant que sa seule énergie d\'exercice ne suffisait pas, Dragaux a absorbé les Quatre Maîtres et a fui vers Finalia. Il n\'y a pas de temps à perdre !\r\n\r\nEn poursuivant Dragaux jusqu\'à Finalia, tu t\'es perdu dans Between Land, où le monde des vivants est relié à l\'au-delà. Soudain, un fantôme est apparu devant vous !\r\n\r\nAvec l\'aide du mystérieux fantôme, vous avez surmonté les obstacles. Ring a été ému par votre force lorsque vous vous êtes approché de l\'entrée du Pays d\'Hadès. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/a/af/World_21_map.png'),
(22, 'Le pays des Ames', 'Le mystérieux fantôme est parti après avoir murmuré \"Quatre... maîtres...\". Les quatre maîtres sont-ils au pays d\'Hadès ? Et où se trouve cette \"Finalia\" où Dragaux attend ?\r\n\r\nL\'entraînement de Dragaux sera terminé à tout moment, et tu es le seul à pouvoir l\'arrêter ! Les quatre maîtres sont prêts à te former, mais il y a un petit problème : ils ont été réduits à n\'être que des âmes errantes.\r\n\r\nTu as rencontré l\'esprit d\'Allegra, qui t\'a aidé à t\'entraîner sur les jambes. Bien qu\'Allegra ait été consumée par la jalousie, elle semble avoir surmonté cela.\r\n\r\nTu as rencontré l\'esprit d\'Armando, qui t\'a aidé à t\'entraîner au bras. Il s\'est avéré qu\'Armando avait commencé à faire du fitness afin d\'avoir une petite amie.\r\n\r\nTu as rencontré l\'esprit d\'Abdonis, qui t\'a aidé à faire tes abdos. En retour, tu as appris à Abdonis l\'importance de faire confiance aux autres.\r\n\r\nL\'esprit de Guru Andma t\'attendait pour t\'instruire dans un entraînement intense. Elle semblait assez énergique, étant donné qu\'elle n\'est qu\'un esprit.\r\n\r\nAprès avoir vaincu le chien de compagnie de Guru Andma, Sir Grrrus, elle vous a déclaré prêt à relever votre dernier défi au pays d\'Hadès. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/f/f7/World_22_map_2.png'),
(23, 'Le pays des Confins', 'Les quatre maîtres ont conquis leurs propres faiblesses et t\'ont aidé à conquérir les tiennes également. En jurant de les sauver à tout prix, tu t\'es dirigé vers Finalia où Dragaux t\'attend !\r\n\r\nTu es enfin arrivé à Finalia. Si tu ne peux pas te débarrasser une fois pour toutes de la sombre influence de Dragaux, ce monde sera perdu à jamais. ', 'https://static.wikia.nocookie.net/ringfitadventure/images/8/82/World_23_map.png');

-- --------------------------------------------------------

--
-- Structure de la table `rfa_muscles`
--

CREATE TABLE `rfa_muscles` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `rfa_niveaux` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `id_monde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `rfa_personnages` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `surnom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `personnalite` text NOT NULL,
  `image` text NOT NULL,
  `id_categorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rfa_personnages`
--

INSERT INTO `rfa_personnages` (`id`, `nom`, `surnom`, `description`, `personnalite`, `image`, `id_categorie`) VALUES
(4, 'Ring Fit Trainee', '', 'Ring Fit Trainee is the main character and player of Ring Fit Adventure. They, along with Ring, are on a journey to take down Dragaux.\r\nThe Ring Fit Trainee resembles a young woman/man with orange hair that resembles a flame during workout sessions. Both wear black and orange fitness sneakers and calf-top leggings. The male trainee wears a full body tank top while the female trainee wears a sports bra.', '', '', 5),
(5, 'Allegra', 'The Legs Master', 'Allegra is a character in Ring Fit Adventure. She is one of The Four Masters.\r\n\r\nShe is based around Leg Fit Skills.\r\n\r\nAllegra is a tall woman with blue hair tied high to a lens shape and magenta eyes. She wears a long-sleeved blue shirt with the leg symbol on it and black circular patterns are seen in the sleeves, with a black belt which is tied to the side of her waist. She also wears two silver oval earrings, black shorts with a blue rim, and black shoes with blue lining the bottom and top of the shoe.', 'Allegra appears to be somewhat arrogant; which shows in both her dialogue and her attack. Her regular attack grinds her sole against the floor aggressively in an attempt to express her dominance. She acts lazily but does the same amount of damage as the other three Masters, which implies she has far stronger capabilities that she lets on. She also may have issues with her appearance, as shown in The Steeliest Buns, when she asks a truth-telling robot how beautiful she is and flies into a rage when she is met with a name other than hers. This behavior is incredibly ironic, however, given the fact that she is very beautiful and should be anything but insecure about herself.\r\n\r\nIn The Forest Runner, it is revealed that her personality stems from wanting to beat her mentor Dashley and failing.', '', 3),
(6, 'Ring', '', 'Ring is a character in Ring Fit Adventure. It helps the Ring Fit Trainee throughout their journey to take down Dragaux.\r\nRing\'s body is, true to its name, a ring, rushing with a fiery, golden energy that shines when it’s in sync with Ring Fit Trainee. Two handles exist on the sides of the body, with gold-bronze patterns swirling up them. Ring has a somewhat cube shaped head at the top of its body, attached with a hinge. It has two, light blue eyes, triangular ears with silver earrings, a thin nose, and a headpiece with structure that resembles hair and a ponytail at the top of its head, along with a fairly pronounced brow.', 'Ring treats people nice, it always encourages the Ring Fit Trainee when battling enemies. Ring is also easy to fool and is not very good at quizzes.', '', 5),
(7, 'Armando', '', 'Armando is a character in Ring Fit Adventure. He is one of The Four Masters.\r\n\r\nHe is based around Arm Fit Skills.\r\n\r\nArmando is a large, muscular man with very beefy arms who wears a sleeveless red judogi uniform with the Arm symbol placed onto it, of which is held together by a black belt. He has red wristbands with a triangular pattern on them as well as black leggings with a white criss-cross pattern. He also wears black shoes with red soles.\r\n\r\nHe has his hair tied all the way up in a pyramid shape alongside having triangular facial hair with his small moustache and beard.', 'Armando is very easy to predict and has a tendency to suddenly yell when finishing his sentences. It\'s later revealed that he was initially jealous of the other masters because of their traits and trained to find a girlfriend.', '', 1),
(8, 'Abdonis', 'The Abs Master', 'Abdonis is a character in Ring Fit Adventure. He is one of the Four Masters.\r\nHe is based around Abdomen Fit Skills.\r\nAbdonis wears a short yellow jacket with square patterns on the short sleeves and plain long black sleeves, this of which visibly shows off his abs. He has dark skin with dark brown hair tied back with a singular yellow streak and golden brown eyes.\r\n\r\nHe also wears black leggings with a yellow cloth with green edges wrapped around it, tied together with a black belt with a checker pattern. His shoes are black with yellow soles.\r\n\r\nHis clothing set is the Abs Master set.', 'He is self-absorbed about his abs. He also has issues with trusting people because he fears they might turn their back on him. He is extremely sensitive, and claims his abs are there to \"guard his delicate heart\".', '', 2),
(9, 'Guru Andma', 'Guru + Andma = Grandma', 'Guru Andma is a character in Ring Fit Adventure. She is one of The Four Masters.\r\n\r\nShe is based around balancing muscle groups, and by extension Yoga Fit Skills since she balances on a ball and has a Green Sufferfish, as a \"pet ball\".\r\n\r\nGuru Andma is an old lady who is always seen on a yoga ball. She has small black eyes and gray hair with a ring-shape motif, having a ring-shaped ponytail with a purple bow headband.\r\n\r\nShe wears a white shirt with green at the collar and ends with longer black sleeves underneath alongside a rope necklace with green ring-shaped pendants, she has a thick rope of some kind with a white and purple pattern connecting from her shoulders to a big bow at her back. She also wears a black belt tied with a bow at the front and green yoga pants. Her shoes are black with a shade of purple at the front and white soles.\r\n\r\nHer yoga ball has the ability to change size, becoming twice as big compared to her.\r\n\r\nHer attacks are very long and deal a lot of damage.', '', '', 4);

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

CREATE TABLE `rfa_smoothies_has_ingredients` (
  `id_smoothie` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
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
-- Index pour les tables déchargées
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
-- Index pour la table `rfa_mondes`
--
ALTER TABLE `rfa_mondes`
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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `rfa_categories`
--
ALTER TABLE `rfa_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `rfa_ennemis`
--
ALTER TABLE `rfa_ennemis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `rfa_exercices`
--
ALTER TABLE `rfa_exercices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `rfa_ingredients`
--
ALTER TABLE `rfa_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `rfa_mondes`
--
ALTER TABLE `rfa_mondes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `rfa_muscles`
--
ALTER TABLE `rfa_muscles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `rfa_niveaux`
--
ALTER TABLE `rfa_niveaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT pour la table `rfa_personnages`
--
ALTER TABLE `rfa_personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `rfa_smoothies`
--
ALTER TABLE `rfa_smoothies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
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
  ADD CONSTRAINT `rfa_exercices_has_muscles_ibfk_2` FOREIGN KEY (`id_muscle`) REFERENCES `rfa_muscles` (`id`),
  ADD CONSTRAINT `rfa_exercices_has_muscles_ibfk_3` FOREIGN KEY (`id_exercice`) REFERENCES `rfa_exercices` (`id`);

--
-- Contraintes pour la table `rfa_niveaux`
--
ALTER TABLE `rfa_niveaux`
  ADD CONSTRAINT `rfa_niveaux_ibfk_1` FOREIGN KEY (`id_monde`) REFERENCES `rfa_mondes` (`id`);

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
