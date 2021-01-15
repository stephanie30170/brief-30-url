-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 15 jan. 2021 à 13:51
-- Version du serveur :  8.0.22-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `_url`
--

-- --------------------------------------------------------

--
-- Structure de la table `assoc_url_mot_clef`
--

CREATE TABLE `assoc_url_mot_clef` (
  `assoc_id` int NOT NULL,
  `assoc_url` int NOT NULL,
  `assoc_mots` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `assoc_url_mot_clef`
--

INSERT INTO `assoc_url_mot_clef` (`assoc_id`, `assoc_url`, `assoc_mots`) VALUES
(1, 6, 1),
(2, 6, 1),
(3, 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mots`
--

CREATE TABLE `mots` (
  `id_mots` int NOT NULL,
  `mots` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `mots`
--

INSERT INTO `mots` (`id_mots`, `mots`) VALUES
(1, 'piratage'),
(2, 'piratage'),
(3, 'piratage'),
(4, 'piratage');

-- --------------------------------------------------------

--
-- Structure de la table `url_table`
--

CREATE TABLE `url_table` (
  `id_url` int NOT NULL,
  `url_texte` text NOT NULL,
  `shorcut` varchar(255) NOT NULL,
  `url_datetime` datetime NOT NULL,
  `url_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `url_table`
--

INSERT INTO `url_table` (`id_url`, `url_texte`, `shorcut`, `url_datetime`, `url_description`) VALUES
(2, '🤠 youpi', 'essai', '2021-01-15 11:57:30', 'essai'),
(3, 'essai', 'essai', '2021-01-15 12:08:26', 'essai'),
(5, 'essai', 'essai', '2021-01-15 12:16:48', 'essai'),
(6, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 12:16:48', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(7, 'essai', 'essai', '2021-01-15 13:04:13', 'essai'),
(8, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:04:13', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(9, 'essai', 'essai', '2021-01-15 13:04:37', 'essai'),
(10, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:04:37', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(11, 'essai', 'essai', '2021-01-15 13:07:17', 'essai'),
(12, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:07:17', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(13, 'essai', 'essai', '2021-01-15 13:14:14', 'essai'),
(14, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:14:14', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(15, 'essai', 'essai', '2021-01-15 13:43:57', 'essai'),
(16, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:43:57', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(17, 'essai', 'essai', '2021-01-15 13:46:40', 'essai'),
(18, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:46:40', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assoc_url_mot_clef`
--
ALTER TABLE `assoc_url_mot_clef`
  ADD KEY `assoc_id` (`assoc_id`),
  ADD KEY `assoc_url` (`assoc_url`),
  ADD KEY `assoc_mots` (`assoc_mots`);

--
-- Index pour la table `mots`
--
ALTER TABLE `mots`
  ADD PRIMARY KEY (`id_mots`);

--
-- Index pour la table `url_table`
--
ALTER TABLE `url_table`
  ADD PRIMARY KEY (`id_url`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `assoc_url_mot_clef`
--
ALTER TABLE `assoc_url_mot_clef`
  MODIFY `assoc_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `mots`
--
ALTER TABLE `mots`
  MODIFY `id_mots` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `url_table`
--
ALTER TABLE `url_table`
  MODIFY `id_url` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assoc_url_mot_clef`
--
ALTER TABLE `assoc_url_mot_clef`
  ADD CONSTRAINT `assoc_url_mot_clef_ibfk_1` FOREIGN KEY (`assoc_url`) REFERENCES `url_table` (`id_url`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assoc_url_mot_clef_ibfk_2` FOREIGN KEY (`assoc_mots`) REFERENCES `mots` (`id_mots`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
