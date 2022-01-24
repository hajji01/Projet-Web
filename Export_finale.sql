-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 18 avr. 2021 à 15:51
-- Version du serveur :  10.3.9-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `zfl2-zhajjiza0`
--

-- --------------------------------------------------------

--
-- Structure de la table `TJ_RELIE_REL`
--

CREATE TABLE `TJ_RELIE_REL` (
  `ELE_ID` int(11) NOT NULL,
  `SELE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `TJ_RELIE_REL`
--

INSERT INTO `TJ_RELIE_REL` (`ELE_ID`, `SELE_ID`) VALUES
(9081801, 3456757),
(9081802, 3456757),
(9081803, 3456757),
(9081804, 3456788),
(9081805, 3456788),
(9081806, 3456788),
(9081807, 3455678),
(9081808, 3455678),
(9081809, 3455678);

-- --------------------------------------------------------

--
-- Structure de la table `T_ACTUALITE_NEW`
--

CREATE TABLE `T_ACTUALITE_NEW` (
  `NEW_ID` int(11) NOT NULL,
  `NEW_TITRE` varchar(50) NOT NULL,
  `NEW_TEXTE` varchar(300) NOT NULL,
  `NEW_DATEPUBLICATION` date NOT NULL,
  `NEW_ETAT` char(1) DEFAULT NULL,
  `CUR_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_ACTUALITE_NEW`
--

INSERT INTO `T_ACTUALITE_NEW` (`NEW_ID`, `NEW_TITRE`, `NEW_TEXTE`, `NEW_DATEPUBLICATION`, `NEW_ETAT`, `CUR_ID`) VALUES
(742510, 'Apple keybord', 'Découvrez comment utiliser les claviers intégrés de votre appareil dans chaque app. Vous pouvez basculer entre les claviers.\r\n', '2020-12-02', 'V', 'saadiya4568'),
(782908, 'Razer Viper 8KHz Fast', 'En tant que marque ayant pratiquement inventé la catégorie des souris de jeu, autant vous dire qu’on sait ce qu’il faut  . \r\n pour concevoir une souris de jeu incroyablement précise et hautement performante. En outre, on s’améliore constamment pour vous permettre d’améliorer vos performances.', '2021-01-02', 'V', 'hahsj785645'),
(782911, 'Eval web', 'test vm', '2021-04-16', 'I', 'toktok16'),
(782912, 'draaaf', 'draaaaf', '2021-04-16', 'V', 'abdelali2002');

-- --------------------------------------------------------

--
-- Structure de la table `T_COMPTEUTILISATEUR_CUR`
--

CREATE TABLE `T_COMPTEUTILISATEUR_CUR` (
  `CUR_ID` varchar(20) NOT NULL,
  `CUR_MOTDEPASSE` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_COMPTEUTILISATEUR_CUR`
--

INSERT INTO `T_COMPTEUTILISATEUR_CUR` (`CUR_ID`, `CUR_MOTDEPASSE`) VALUES
('4356896', '548306e6c3a898d44400f61b9fe35eb4'),
('6787900', '319b597a435af089603c65e8696987c7'),
('67879090', '65385fb5e604afdf4ebb5bcf14b31b06'),
('678790980', 'a1c592848532fcb11bcb19343782abb4'),
('6787909890', 'a1c592848532fcb11bcb19343782abb4'),
('67879098990', '39c06e2afbfb12a71b8f92dff37e81e1'),
('67890', '07bd28cc7a93a9f3d77165153a34c4a6'),
('785643333', '099b3b060154898840f0ebdfb46ec78f'),
('abdelali2002', '02ee689361c4ed566fb8ba41f281e2d9'),
('abdellatif', 'dce4761ee042ae0586421801f3512a25'),
('bartal22', '997308ac635aaf9f30496d565e794cd4'),
('daqs', '4e4d6c332b6fe62a63afe56171fd3725'),
('draf', '228726e54acd6765a4bb5d808b0db0de'),
('gestionnaire1', '388d4ca7d89f912a8fe96b04fb3d8e22'),
('hahsj785645', '511ccebb374ca3ef40716f41d43d376a'),
('haj57876543', '8a6682fa249a1262dc6dd8d724422237'),
('hajji01', 'hajji01'),
('hgv', '4e4d6c332b6fe62a63afe56171fd3725'),
('hiho1', 'e43fbc7b3c8d0880c4e97ab83ccc2704'),
('hjkbsq', 'bb0ed6ad56f41c6de469776171261226'),
('hsjbq', '5ddb6a606d19dcc870f23726f2830ce8'),
('jjh234', '255e9c77cd1689c3669ffe8637f5fae0'),
('jjkqd2', 'c0f52a3f575c9508d49af973e49fd8a4'),
('justine6787900', '319b597a435af089603c65e8696987c7'),
('macron9886756', '319b597a435af089603c65e8696987c7'),
('mama', 'eeafbf4d9b3957b139da7b7f2e7f2d4a'),
('nadrog67588', 'd6581d542c7eaf801284f084478b5fcc'),
('nai25', '2fa0fc0b3a32eb7fd709b96b629b9404'),
('rien29', '794e02b5da2f030d01b107540dc8f2df'),
('saadiya4568', '997308ac635aaf9f30496d565e794cd4'),
('sdnkjn', 'eeafbf4d9b3957b139da7b7f2e7f2d4a'),
('toktok16', '91fd65cff7cf2831f0935522f9c82873'),
('vm3103', 'e9c1a6b485ad4980142b49eb21b92c00'),
('vmvm', 'ae715ec79b342916ebad27f29b9f9531'),
('zaka29', '5b8fd50552cb04a29d643efde8c48b06'),
('zakaria2001', '997308ac635aaf9f30496d565e794cd4'),
('zakaria37', 'd45584cc36cd1252d7cd6c1025f6e6cd');

-- --------------------------------------------------------

--
-- Structure de la table `T_ELEMENT_ELE`
--

CREATE TABLE `T_ELEMENT_ELE` (
  `ELE_ID` int(11) NOT NULL,
  `ELE_DESCRIPTION` varchar(600) NOT NULL,
  `ELE_DATE` date NOT NULL,
  `ELE_FICIMAGE` varchar(200) NOT NULL,
  `ELE_STATE` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_ELEMENT_ELE`
--

INSERT INTO `T_ELEMENT_ELE` (`ELE_ID`, `ELE_DESCRIPTION`, `ELE_DATE`, `ELE_FICIMAGE`, `ELE_STATE`) VALUES
(9081801, 'Le clavier gamer Razer Ornata Chroma est un clavier mécanique conçu pour les gamers. Il est équipé de la technologie méca-membrane developpé par Razer, alliant la réactivité des touches mécaniques avec le silence des claviers membranes.', '2020-12-29', 'clavier_razer.png', 'P'),
(9081802, 'La souris G502 HERO présente un capteur optique avancé pour une précision de suivi maximale, un éclairage RVB personnalisable, des profils pour le jeu personnalisables, une sensibilité de 200 à 25 600 PPP et des poids repositionnables. 11 boutons Entièrement programmable', '2021-01-03', 'souris_razer.png', 'P'),
(9081803, ' Transducteurs audio 50 mm - Profitez d\'une expérience de jeu plus immersive et cinématique grâce au son détaillé produit par les grands transducteurs 50 mm.  DTS Headphone:X 2.0 - Le son surround* qui dépasse les canaux 7.1 vous permet de détecter les ennemis de tous les côtés, vous offrant ainsi une clarté positionnelle capable de faire la différence entre une victoire et une défaite.', '2021-01-13', 'casque_razer.png', 'P'),
(9081804, 'Destiné aux home offices, l\'EPSON XP 4105 est une imprimante 3 en 1 qui englobe toutes les fonctionnalités utiles aux télétravailleurs et aux indépendants. Son faible encombrement la rend facile à intégrer dans le bureau. Ses cartouches d\'encre séparées et son impression recto-verso permettent des économies intéressantes.', '2020-11-20', 'epson_imprimante.png', 'P'),
(9081805, 'L\'imprimante multifonction HP LaserJet Pro M148dw imprime recto verso d\'une qualité laser irréprochable. Polyvalente, elle se présente à ses heures en photocopieuse, scanner, fax et télécopieurs. Un package tout-en-un simple d\'utilisation pour un débit de 1000 pages possible avec le premier toner. ', '2020-12-12', 'hp_imprimante.png', 'P'),
(9081806, 'Améliorez votre productivité grâce à une imprimante rapide et économe. Son réservoir d\'encre rechargeable, sa grande capacité de stockage de papier, ainsi que sa rapidité d\'impression, vous offrent un optimisation de votre temps sans altérer la qualité des travaux d\'impression. Connectez-vous facilement à l\'imprimante en Ethernet ou sans fil.', '2021-03-30', 'epson2_imprimante.png', 'P'),
(9081807, 'Profitez d\'une qualité d\'image optimale pour tous vos jeux avec le nouvel écran LED ACER R240Ysi. Un gameplay fluide avec des images de qualité L\'écran LED ACER R240Ysi de 23,8 pouces, en résolution Full HD 1920 x 1080 a été conçu pour vous garantir un gameplay fluide. Son temps de réponse de 1 ms conviendra particulièrement aux jeux où les scènes s\'enchaînent rapidement.', '2021-04-01', 'samsung_ecran.png', 'P'),
(9081808, 'Avec le modèle U28E570DS, Samsung propose un écran pour ordinateur de bureau PC ou Mac qui va ravir les amateurs d\'images d\'excellente qualité. Au programme, une qualité d\'image inégalable, un confort visuel encore amélioré et de puissantes capacités multitâches. Une image de qualité rarement égalée Avec l\'écran U28E570DS de Samsung, c\'est tout un nouveau monde qui s\'ouvre sous vos yeux. ', '2021-01-03', 'lg_ecran.png', 'P'),
(9081809, 'SkillKorp est une marque dédiée à l\'univers du gaming. Alliant performance et sensation, les produits SkillKorp sont conçus pour les joueurs qui veulent révéler leur talent. Les produits sont disponibles exclusivement chez Boulanger.Avec sa fréquence de rafraîchissement maximale, son temps de réponse réduit et son système d\'aide à la visée, l\'écran SkillKorp E20-32 n\'a qu\'un objectif : vous offrir la plus belle expérience.', '2020-12-12', 'skill_ecran.png', 'P');

-- --------------------------------------------------------

--
-- Structure de la table `T_LINK_LINK`
--

CREATE TABLE `T_LINK_LINK` (
  `LINK_ID` int(11) NOT NULL,
  `LINK_TITLE` varchar(100) NOT NULL,
  `LINK_URL` varchar(200) NOT NULL,
  `LINK_AUTEUR` varchar(100) NOT NULL,
  `LINK_DATE` date NOT NULL,
  `ELE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `T_PRESENTATION_PRE`
--

CREATE TABLE `T_PRESENTATION_PRE` (
  `PRE_ID` int(11) NOT NULL,
  `PRE_STRUCTURE` varchar(60) NOT NULL,
  `PRE_ADRESSE` varchar(100) NOT NULL,
  `PRE_EMAIL` varchar(100) NOT NULL,
  `PRE_NUMBERPHONE` int(10) NOT NULL,
  `PRE_HORAIRE` varchar(60) NOT NULL,
  `CUR_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_PRESENTATION_PRE`
--

INSERT INTO `T_PRESENTATION_PRE` (`PRE_ID`, `PRE_STRUCTURE`, `PRE_ADRESSE`, `PRE_EMAIL`, `PRE_NUMBERPHONE`, `PRE_HORAIRE`, `CUR_ID`) VALUES
(3456729, 'zekoouiytrdsfxcvhj', '8 boulevard mountaigne', 'gogo@gmail.com', 345670987, 'boutique vente du matériel informatique ouvert 7jr/7', 'zakaria2001'),
(452781971, 'Lancôme', '8 boulevard mountaigne', 'gogo@gmail.com', 345670987, '9:30am - 6:30pm (Lundi-Samedi)', 'justine6787900');

-- --------------------------------------------------------

--
-- Structure de la table `T_PROFILUTILISATEUR_PUR`
--

CREATE TABLE `T_PROFILUTILISATEUR_PUR` (
  `CUR_ID` varchar(20) NOT NULL,
  `PUR_NOM` varchar(60) NOT NULL,
  `PUR_PRENOM` varchar(60) NOT NULL,
  `PUR_EMAIL` varchar(100) NOT NULL,
  `PUR_STATUT` char(1) NOT NULL,
  `PUR_VALIDITE` char(1) NOT NULL,
  `PUR_DATECREATION` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_PROFILUTILISATEUR_PUR`
--

INSERT INTO `T_PROFILUTILISATEUR_PUR` (`CUR_ID`, `PUR_NOM`, `PUR_PRENOM`, `PUR_EMAIL`, `PUR_STATUT`, `PUR_VALIDITE`, `PUR_DATECREATION`) VALUES
('4356896', 'kenra', 'jhb', 'hcdjb@outlook.fr', 'R', 'A', '2021-01-11'),
('785643333', 'qqqqq', 'qss', 'qdkdq@keke.com', 'R', 'D', '2021-03-30'),
('abdelali2002', 'abdelali', 'mouatassim', 'abdelali@gmail.com', 'R', 'A', '2021-04-13'),
('abdellatif', 'KASSOUR', 'Abdellatif', 'abdellatifkassour@gmail.com', 'R', 'A', '2021-03-30'),
('bartal22', 'Bartal', 'zakaria', 'bartal1@gmail.com', 'A', 'A', '2021-04-07'),
('daqs', 'hajaj', 'cjds', 'jqns@gmail.com', 'R', 'A', '2021-03-31'),
('draf', 'sergio', 'ramos', 'sergio@gmail.com', 'R', 'A', '2021-04-07'),
('gestionnaire1', 'gestionnaire', 'ges', 'ges@gmail.com', 'A', 'A', '2021-04-16'),
('hahsj785645', 'jhsq', 'khjqshjbs', 'hajji2901@gmail.com', 'R', 'A', '2021-03-23'),
('haj57876543', 'hajji', 'jdak', 'jdak@gmail.com', 'R', 'D', '2021-03-24'),
('hajji01', 'HAJJI', 'Zakary', 'zakaria.hajji.92@gmail.com', 'R', 'A', '2021-01-20'),
('hgv', 'hjdbsq', 'sd', 'hajji2ks@gmail.com', 'R', 'A', '2021-03-31'),
('hiho1', 'jshgs', 'dsdzhjagvf', 'zshjkb@gmail.com', 'R', 'A', '2021-04-16'),
('hjkbsq', 'jjhkndqs', 'qdkjn', 'cdqhj@gmail.com', 'R', 'D', '2021-03-31'),
('hsjbq', 'o\'has', 'hjsqsk', 'hjs@gmail.com', 'R', 'D', '2021-03-31'),
('jjh234', 'qscsc', 'sccsq', 'salwa01@kismail.ru', 'R', 'D', '2021-03-24'),
('jjkqd2', 'hjsq', 'qdsjkh', 'salwa01@kismail.ru', 'R', 'D', '2021-03-24'),
('justine6787900', 'ROBERT', 'Paul', 'mamajh8@live.fr', 'R', 'A', '2020-01-01'),
('macron9886756', 'MARTIN', 'JEAN', 'jean294@gmail.com', 'R', 'A', '2019-06-14'),
('mama', 'mama', 'mamaa', 'mama@gmail.com', 'R', 'A', '2021-04-16'),
('nadrog67588', 'DUBOIS', 'Alice', 'nadrog29@gmail.com', 'R', 'A', '2019-09-21'),
('nai25', 'hgqds', 'gygjqsd', 'zakaria.hajji@gmail.com', 'A', 'A', '2021-03-23'),
('rien29', 'csc', 'BREST', 'hqb2901@gmail.com', 'R', 'A', '2021-04-16'),
('saadiya4568', 'HAJJI', 'Zakaria', 'salwa01@kismail.ru', 'A', 'A', '2019-09-09'),
('sdnkjn', 'sxw ', 'cskjn,sc', 'h@hotmail.fr', 'R', 'A', '2021-03-31'),
('toktok16', 'l\'herry', 'l\'imaak', 'zakkjkj@gmail.com', 'R', 'A', '2021-04-16'),
('vm3103', 'vm3103', 'vm3103', 'vm3103@gmail.com', 'A', 'D', '2021-03-31'),
('vmvm', 'o\'neal', 'vmvm', 'vmvm@gmail.com', 'R', 'D', '2021-03-31'),
('zaka29', 'zaka', 'nothing', 'zaka29@gmail.com', 'R', 'D', '2021-04-15'),
('zakaria2001', 'boufarse', 'zakaria', 'boufarse1@gmail.com', 'R', 'D', '2021-04-12');

-- --------------------------------------------------------

--
-- Structure de la table `T_SELECTION_SELE`
--

CREATE TABLE `T_SELECTION_SELE` (
  `SELE_ID` int(11) NOT NULL,
  `SELE_TITRE` varchar(100) NOT NULL,
  `SELE_INTROTEXTE` varchar(200) NOT NULL,
  `SELE_DATE` date NOT NULL,
  `CUR_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `T_SELECTION_SELE`
--

INSERT INTO `T_SELECTION_SELE` (`SELE_ID`, `SELE_TITRE`, `SELE_INTROTEXTE`, `SELE_DATE`, `CUR_ID`) VALUES
(3455678, 'Ecran PC', 'Que vaut un bon ordinateur sans un bon écran ? L’écran pc, ou également appelé moniteur, est l’outil indispensable au confort d’utilisation d’un PC.', '2020-03-22', 'macron9886756'),
(3456757, 'Matériel gaming', 'Nos spécialistes ont sélectionné pour vous un vaste choix de périphériques informatiques.Nous vous invitons à découvrir tous nos produits', '2019-12-12', 'nai25'),
(3456788, 'Les imprimantes', 'Si vous avez besoin d\'imprimer, copier et scanner, une imprimante multifonction sera un bon investissement. Sinon une imprimante standard fera parfaitement l’affaire.', '2020-01-12', 'justine6787900');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `TJ_RELIE_REL`
--
ALTER TABLE `TJ_RELIE_REL`
  ADD PRIMARY KEY (`ELE_ID`,`SELE_ID`),
  ADD KEY `fk_TJ_RELIE_REL_T_SELECTION_SELE` (`SELE_ID`);

--
-- Index pour la table `T_ACTUALITE_NEW`
--
ALTER TABLE `T_ACTUALITE_NEW`
  ADD PRIMARY KEY (`NEW_ID`),
  ADD KEY `fk_T_ACTUALITE_NEW_T_COMPTEUTILISATEUR_CUR` (`CUR_ID`);

--
-- Index pour la table `T_COMPTEUTILISATEUR_CUR`
--
ALTER TABLE `T_COMPTEUTILISATEUR_CUR`
  ADD PRIMARY KEY (`CUR_ID`);

--
-- Index pour la table `T_ELEMENT_ELE`
--
ALTER TABLE `T_ELEMENT_ELE`
  ADD PRIMARY KEY (`ELE_ID`);

--
-- Index pour la table `T_LINK_LINK`
--
ALTER TABLE `T_LINK_LINK`
  ADD PRIMARY KEY (`LINK_ID`),
  ADD KEY `fk_T_LINK_LINK_T_ELEMENT_ELE` (`ELE_ID`);

--
-- Index pour la table `T_PRESENTATION_PRE`
--
ALTER TABLE `T_PRESENTATION_PRE`
  ADD PRIMARY KEY (`PRE_ID`),
  ADD KEY `fk_T_PRESENTATION_PRE_T_COMPTEUTILISATEUR_CUR` (`CUR_ID`);

--
-- Index pour la table `T_PROFILUTILISATEUR_PUR`
--
ALTER TABLE `T_PROFILUTILISATEUR_PUR`
  ADD PRIMARY KEY (`CUR_ID`);

--
-- Index pour la table `T_SELECTION_SELE`
--
ALTER TABLE `T_SELECTION_SELE`
  ADD PRIMARY KEY (`SELE_ID`),
  ADD KEY `fk_T_SELECTION_SELE_T_COMPTEUTILISATEUR_CUR` (`CUR_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `T_ACTUALITE_NEW`
--
ALTER TABLE `T_ACTUALITE_NEW`
  MODIFY `NEW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=782913;

--
-- AUTO_INCREMENT pour la table `T_ELEMENT_ELE`
--
ALTER TABLE `T_ELEMENT_ELE`
  MODIFY `ELE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9092349;

--
-- AUTO_INCREMENT pour la table `T_LINK_LINK`
--
ALTER TABLE `T_LINK_LINK`
  MODIFY `LINK_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `T_PRESENTATION_PRE`
--
ALTER TABLE `T_PRESENTATION_PRE`
  MODIFY `PRE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452781972;

--
-- AUTO_INCREMENT pour la table `T_SELECTION_SELE`
--
ALTER TABLE `T_SELECTION_SELE`
  MODIFY `SELE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45678956;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `TJ_RELIE_REL`
--
ALTER TABLE `TJ_RELIE_REL`
  ADD CONSTRAINT `fk_TJ_RELIE_REL_T_ELEMENT_ELE` FOREIGN KEY (`ELE_ID`) REFERENCES `T_ELEMENT_ELE` (`ELE_ID`),
  ADD CONSTRAINT `fk_TJ_RELIE_REL_T_SELECTION_SELE` FOREIGN KEY (`SELE_ID`) REFERENCES `T_SELECTION_SELE` (`SELE_ID`);

--
-- Contraintes pour la table `T_ACTUALITE_NEW`
--
ALTER TABLE `T_ACTUALITE_NEW`
  ADD CONSTRAINT `fk_T_ACTUALITE_NEW_T_COMPTEUTILISATEUR_CUR` FOREIGN KEY (`CUR_ID`) REFERENCES `T_COMPTEUTILISATEUR_CUR` (`CUR_ID`);

--
-- Contraintes pour la table `T_LINK_LINK`
--
ALTER TABLE `T_LINK_LINK`
  ADD CONSTRAINT `fk_T_LINK_LINK_T_ELEMENT_ELE` FOREIGN KEY (`ELE_ID`) REFERENCES `T_ELEMENT_ELE` (`ELE_ID`);

--
-- Contraintes pour la table `T_PRESENTATION_PRE`
--
ALTER TABLE `T_PRESENTATION_PRE`
  ADD CONSTRAINT `fk_T_PRESENTATION_PRE_T_COMPTEUTILISATEUR_CUR` FOREIGN KEY (`CUR_ID`) REFERENCES `T_COMPTEUTILISATEUR_CUR` (`CUR_ID`);

--
-- Contraintes pour la table `T_PROFILUTILISATEUR_PUR`
--
ALTER TABLE `T_PROFILUTILISATEUR_PUR`
  ADD CONSTRAINT `fk_T_PROFILUTILISATEUR_PUR_T_COMPTEUTILISATEUR_CUR` FOREIGN KEY (`CUR_ID`) REFERENCES `T_COMPTEUTILISATEUR_CUR` (`CUR_ID`);

--
-- Contraintes pour la table `T_SELECTION_SELE`
--
ALTER TABLE `T_SELECTION_SELE`
  ADD CONSTRAINT `fk_T_SELECTION_SELE_T_COMPTEUTILISATEUR_CUR` FOREIGN KEY (`CUR_ID`) REFERENCES `T_COMPTEUTILISATEUR_CUR` (`CUR_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
