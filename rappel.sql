-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 09 avr. 2021 à 21:43
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rappel`
--

-- --------------------------------------------------------

--
-- Structure de la table `grille_question`
--

CREATE TABLE `grille_question` (
  `idGr` int(10) NOT NULL,
  `idQ` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `idMat` int(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `idTh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `idN` int(10) NOT NULL,
  `valeur` int(5) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `idQ` varchar(10) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `idResp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`idQ`, `nom`, `idResp`) VALUES
('3', 'bien bougouri Keita', 7),
('4', 'Souteance', 9),
('5', 'Bougouri signifie', 5);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `idResp` varchar(10) NOT NULL,
  `Rep1` varchar(150) DEFAULT NULL,
  `Rep2` varchar(150) NOT NULL,
  `Rep3` varchar(150) NOT NULL,
  `Rep4` varchar(150) NOT NULL,
  `idN` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`idResp`, `Rep1`, `Rep2`, `Rep3`, `Rep4`, `idN`) VALUES
('1', 'gerfv', '', '', '', 12),
('2', 'Je ne sais pas', 'je connais une partie de la reponse', 'Je connais toute la reponse , mais je ne suis pas sur', 'Je connais toute la reponse et je suis certain de ma reponse à 100%', 1);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `idTh` varchar(10) NOT NULL,
  `titre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`idTh`, `titre`) VALUES
('1', ' c'),
('10', 'fbjefrvnrfl'),
('11', 'Informatique'),
('2', 'ege'),
('3', 'dfb'),
('4', 'bougouri est belle'),
('5', 'Djeneba est vilaine'),
('6', 'Informatique'),
('7', 'sdfv'),
('8', 'vssd'),
('9', 'hbih');

-- --------------------------------------------------------

--
-- Structure de la table `themequestion`
--

CREATE TABLE `themequestion` (
  `idTh` int(10) NOT NULL,
  `idQ` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUser` int(10) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `grille_question`
--
ALTER TABLE `grille_question`
  ADD PRIMARY KEY (`idGr`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`idMat`),
  ADD UNIQUE KEY `idTh` (`idTh`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`idN`),
  ADD UNIQUE KEY `idUser` (`idUser`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`idQ`),
  ADD UNIQUE KEY `idResp` (`idResp`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`idResp`),
  ADD UNIQUE KEY `idN` (`idN`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`idTh`);

--
-- Index pour la table `themequestion`
--
ALTER TABLE `themequestion`
  ADD PRIMARY KEY (`idQ`,`idTh`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `grille_question`
--
ALTER TABLE `grille_question`
  MODIFY `idGr` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `idMat` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `idN` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
