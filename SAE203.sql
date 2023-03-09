-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 03 Mai 2022 à 06:48
-- Version du serveur :  5.7.37-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `SAE203`
--

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_ALBUMS`
--

CREATE TABLE `SAE203_ALBUMS` (
  `idalbums` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `idartistes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `SAE203_ALBUMS`
--

INSERT INTO `SAE203_ALBUMS` (`idalbums`, `nom`, `type`, `description`, `image`, `idartistes`) VALUES
(1, 'Acme', 'Album', 'Date de sortie : 2010', 'acme.png', 1),
(2, 'Hard Times And Nursery Rhymes', 'Album', 'Date de sortie : 2011', 'Hard-Times-And-Nursery-Rhymes.png', 2),
(3, 'Power Trio', 'Album', 'Date de sortie : 2021', 'Power-Trio.jpg', 3),
(4, 'Psychic Warfare', 'Album', 'Date de sortie : 2015', 'Psychic-Warfare.jpg', 4),
(5, 'Meat And Bone', 'Album', 'Date de sortie : 2012', 'Meat-and-Bone.jpg', 1),
(6, 'King Of The Road', 'Album', 'Date de sortie : 1999', 'king-of-the-road.jpg', 5),
(7, 'Suck It', 'Album', 'Date de sortie : 2018', 'Suck-It.jpg', 6);

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_ARTISTES`
--

CREATE TABLE `SAE203_ARTISTES` (
  `idartistes` int(11) NOT NULL,
  `nom` varchar(150) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `SAE203_ARTISTES`
--

INSERT INTO `SAE203_ARTISTES` (`idartistes`, `nom`, `type`, `description`, `image`) VALUES
(1, 'The Jon Spencer Blues Explosion', 'Artiste', '305 049 auditeurs par mois', 'PP-JSBX.jpg'),
(2, 'Social Distortion', 'Artiste', '1 052 194 auditeurs par mois', 'PP-Social-Distortion.jpg'),
(3, 'Danko Jones', 'Artiste', '501 851 auditeurs par mois', 'PP-Danko-Jones.jpg'),
(4, 'Clutch', 'Artiste', '735 296 auditeurs par mois', 'PP-Clutch.jpg'),
(5, 'Fu Manchu', 'Artiste', '242 579 auditeurs par mois', 'PP-Fu-Manchu.jpg'),
(6, 'Supersuckers', 'Artiste', '93 024 auditeurs par mois', 'PP-Supersuckers.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_CONTENIR`
--

CREATE TABLE `SAE203_CONTENIR` (
  `idplaylists` int(11) NOT NULL,
  `idmorceaux` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `SAE203_CONTENIR`
--

INSERT INTO `SAE203_CONTENIR` (`idplaylists`, `idmorceaux`) VALUES
(2, 1),
(3, 1),
(2, 2),
(3, 2),
(2, 3),
(3, 3),
(1, 4),
(2, 4),
(3, 4),
(1, 14),
(1, 15),
(1, 16),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(2, 25),
(3, 25);

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_MORCEAUX`
--

CREATE TABLE `SAE203_MORCEAUX` (
  `idmorceaux` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `duree` time DEFAULT NULL,
  `morceaux-image` varchar(50) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `idartistes` int(11) NOT NULL,
  `idalbums` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `SAE203_MORCEAUX`
--

INSERT INTO `SAE203_MORCEAUX` (`idmorceaux`, `titre`, `duree`, `morceaux-image`, `video`, `idartistes`, `idalbums`) VALUES
(1, 'High Gear', '00:02:07', 'acme.png', 'https://www.youtube.com/embed/CCg75wBi3mQ', 1, 1),
(2, 'Machine Gun Blues', '00:07:37', 'Hard-Times-And-Nursery-Rhymes.png', 'https://www.youtube.com/embed/otZ1SfwbE64', 2, 2),
(3, 'Flaunt It', '00:03:05', 'Power-Trio.jpg', 'https://www.youtube.com/embed/YG7qxm2iIgE', 3, 3),
(4, 'A Quick Death in Texas', '00:04:00', 'Psychic-Warfare.jpg', 'https://www.youtube.com/embed/6Sj76eCy6ag', 4, 4),
(5, 'Start The Show', '00:04:02', 'Power-Trio.jpg', 'https://www.youtube.com/embed/zej8uz1Wh_Q', 3, 3),
(6, 'Calvin', '00:03:04', 'acme.png', 'https://www.youtube.com/embed/itPb4tv6ia0', 1, 1),
(7, 'Talk About The Blues', '00:03:58', 'acme.png', 'https://www.youtube.com/embed/gySf6c4eNPw', 1, 1),
(8, 'Torture', '00:04:09', 'acme.png', 'https://www.youtube.com/embed/Z35NqxhY8e8', 1, 1),
(9, 'Gimme The Sweet And Lowdown', '00:03:19', 'Hard-Times-And-Nursery-Rhymes.png', 'https://www.youtube.com/embed/9VUABOYWA1Y', 2, 2),
(10, 'Bakersfield', '00:06:24', 'Hard-Times-And-Nursery-Rhymes.png', 'https://www.youtube.com/embed/FJNjujbx8h8', 2, 2),
(11, 'California (Hustle and Flow)', '00:04:59', 'Hard-Times-And-Nursery-Rhymes.png', 'https://www.youtube.com/embed/qhs1Pt40PGc', 2, 2),
(12, 'I Want Out', '00:03:56', 'Power-Trio.jpg', 'https://www.youtube.com/embed/TX_Wv9-KO4o', 3, 3),
(13, 'Ship Of Lies', '00:03:39', 'Power-Trio.jpg', 'https://www.youtube.com/embed/Pa4SubJKesI', 3, 3),
(14, 'X-Ray Visions', '00:03:35', 'Psychic-Warfare.jpg', 'https://www.youtube.com/embed/X8cmbmwFAl8', 4, 4),
(15, 'Noble Savage', '00:02:49', 'Psychic-Warfare.jpg', 'https://www.youtube.com/embed/1gBrGD_GXXk', 4, 4),
(16, 'Son of Virginia', '00:07:15', 'Psychic-Warfare.jpg', 'https://www.youtube.com/embed/FLWHhhcMZCw', 4, 4),
(17, 'Ice Cream Killer', '00:03:18', 'Meat-and-Bone.jpg', 'https://www.youtube.com/embed/EvGMB9ibhzk', 1, 5),
(18, 'Zimgar', '00:04:08', 'Meat-and-Bone.jpg', 'https://www.youtube.com/embed/qkmMwZTnvr8', 1, 5),
(19, 'Bottle Baby', '00:03:05', 'Meat-and-Bone.jpg', 'https://www.youtube.com/embed/4dM5sSBO7E0', 1, 5),
(20, 'Danger', '00:02:43', 'Meat-and-Bone.jpg', 'https://www.youtube.com/embed/i2xBtZ3OX5k', 1, 5),
(21, 'Hell On Wheels', '00:04:48', 'king-of-the-road.jpg', 'https://www.youtube.com/embed/CcoSQN4a8gc', 5, 6),
(22, 'King Of The Road', '00:04:03', 'king-of-the-road.jpg', 'https://www.youtube.com/embed/e3BfZjklxsM', 5, 6),
(23, 'Over The Edge', '00:05:01', 'king-of-the-road.jpg', 'https://www.youtube.com/embed/v6fZHf1fTmI', 5, 6),
(24, 'Boogie Van', '00:04:17', 'king-of-the-road.jpg', 'https://www.youtube.com/embed/kQ66-8voGec', 5, 6),
(25, 'Breakin\' My Balls', '00:03:10', 'Suck-It.jpg', 'https://www.youtube.com/embed/e9g4Iu5okPE', 6, 7),
(26, 'Dead Inside', '00:03:46', 'Suck-It.jpg', 'https://www.youtube.com/embed/-RSfSzJie7o', 6, 7),
(27, 'History Of Rock n\' Roll', '00:05:09', 'Suck-It.jpg', 'https://www.youtube.com/embed/SkdbmtY0kfE', 6, 7),
(28, 'Til I Die', '00:02:52', 'Suck-It.jpg', 'https://www.youtube.com/embed/X6WRq0OFZxY', 6, 7);

-- --------------------------------------------------------

--
-- Structure de la table `SAE203_PLAYLISTS`
--

CREATE TABLE `SAE203_PLAYLISTS` (
  `idplaylists` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `SAE203_PLAYLISTS`
--

INSERT INTO `SAE203_PLAYLISTS` (`idplaylists`, `nom`, `type`, `description`, `image`) VALUES
(1, 'Daily Mix 3', 'Playlist', 'Votre playlist du jour', 'daily-mix3.jpg'),
(2, 'Découvertes de la semaine', 'Playlist', 'De nouveaux titres à découvrir chaque semaines', 'decouverte-semaine.jpg'),
(3, 'Radar des sorties', 'Playlist', 'Une playlist vous alertant des nouvelles sorties', 'radar-sorties.png');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `SAE203_ALBUMS`
--
ALTER TABLE `SAE203_ALBUMS`
  ADD PRIMARY KEY (`idalbums`),
  ADD KEY `idartistes` (`idartistes`);

--
-- Index pour la table `SAE203_ARTISTES`
--
ALTER TABLE `SAE203_ARTISTES`
  ADD PRIMARY KEY (`idartistes`);

--
-- Index pour la table `SAE203_CONTENIR`
--
ALTER TABLE `SAE203_CONTENIR`
  ADD PRIMARY KEY (`idplaylists`,`idmorceaux`),
  ADD KEY `idmorceaux` (`idmorceaux`);

--
-- Index pour la table `SAE203_MORCEAUX`
--
ALTER TABLE `SAE203_MORCEAUX`
  ADD PRIMARY KEY (`idmorceaux`),
  ADD KEY `idartistes` (`idartistes`),
  ADD KEY `idalbums` (`idalbums`);

--
-- Index pour la table `SAE203_PLAYLISTS`
--
ALTER TABLE `SAE203_PLAYLISTS`
  ADD PRIMARY KEY (`idplaylists`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `SAE203_ALBUMS`
--
ALTER TABLE `SAE203_ALBUMS`
  ADD CONSTRAINT `SAE203_ALBUMS_ibfk_1` FOREIGN KEY (`idartistes`) REFERENCES `SAE203_ARTISTES` (`idartistes`);

--
-- Contraintes pour la table `SAE203_CONTENIR`
--
ALTER TABLE `SAE203_CONTENIR`
  ADD CONSTRAINT `SAE203_CONTENIR_ibfk_1` FOREIGN KEY (`idplaylists`) REFERENCES `SAE203_PLAYLISTS` (`idplaylists`),
  ADD CONSTRAINT `SAE203_CONTENIR_ibfk_2` FOREIGN KEY (`idmorceaux`) REFERENCES `SAE203_MORCEAUX` (`idmorceaux`);

--
-- Contraintes pour la table `SAE203_MORCEAUX`
--
ALTER TABLE `SAE203_MORCEAUX`
  ADD CONSTRAINT `SAE203_MORCEAUX_ibfk_1` FOREIGN KEY (`idartistes`) REFERENCES `SAE203_ARTISTES` (`idartistes`),
  ADD CONSTRAINT `SAE203_MORCEAUX_ibfk_2` FOREIGN KEY (`idalbums`) REFERENCES `SAE203_ALBUMS` (`idalbums`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
