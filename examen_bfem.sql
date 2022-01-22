-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 22 jan. 2022 à 00:25
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `examen_bfem`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

DROP TABLE IF EXISTS `candidats`;
CREATE TABLE IF NOT EXISTS `candidats` (
  `numero_table` varchar(25) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `dateNaissance` varchar(30) NOT NULL,
  `lieuNaissance` varchar(20) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `nationalite` varchar(25) NOT NULL,
  `choixEprFacultative` varchar(30) NOT NULL,
  `epreuveFacultative` varchar(30) NOT NULL,
  `aptitudeSport` varchar(20) NOT NULL,
  PRIMARY KEY (`numero_table`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `candidats`
--

INSERT INTO `candidats` (`numero_table`, `prenom`, `nom`, `dateNaissance`, `lieuNaissance`, `sexe`, `nationalite`, `choixEprFacultative`, `epreuveFacultative`, `aptitudeSport`) VALUES
('12', 'Amath', 'SARR', '01/01/1999', 'KL', 'Homme', 'Sénégalaise', 'OUI', 'Couture', 'OUI'),
('123', 'Matar', 'THIAM', '01/01/2001', 'THIES', 'Homme', 'Sénégalaise', 'OUI', 'Couture', 'OUI'),
('13', 'Baye', 'BITEYE', 'KL', '10/10/2000', 'Homme', 'Sénégalaise', 'OUI', 'Couture', 'OUI');

-- --------------------------------------------------------

--
-- Structure de la table `feuille_1`
--

DROP TABLE IF EXISTS `feuille_1`;
CREATE TABLE IF NOT EXISTS `feuille_1` (
  `N° de table` int(3) DEFAULT NULL,
  `Prenom (s)` varchar(19) DEFAULT NULL,
  `NOM` varchar(8) DEFAULT NULL,
  `Date de nais.` varchar(10) DEFAULT NULL,
  `Lieu de nais.` varchar(13) DEFAULT NULL,
  `Sexe` varchar(1) DEFAULT NULL,
  `Nb fois` int(1) DEFAULT NULL,
  `Type de candidat` varchar(10) DEFAULT NULL,
  `Etablissement` varchar(17) DEFAULT NULL,
  `Nationnallité` varchar(3) DEFAULT NULL,
  `Etat Sportif` varchar(6) DEFAULT NULL,
  `Epreuve Facultative` varchar(7) DEFAULT NULL,
  `Moy_6e` varchar(4) DEFAULT NULL,
  `Moy_5e` varchar(4) DEFAULT NULL,
  `Moy_4e` varchar(4) DEFAULT NULL,
  `Moy_3e` varchar(4) DEFAULT NULL,
  `Note EPS` int(2) DEFAULT NULL,
  `Note CF` int(2) DEFAULT NULL,
  `Note Ort` int(2) DEFAULT NULL,
  `Note TSQ` int(2) DEFAULT NULL,
  `Note SVT` int(2) DEFAULT NULL,
  `Note ANG1` int(2) DEFAULT NULL,
  `Note MATH` int(2) DEFAULT NULL,
  `Note HG` int(2) DEFAULT NULL,
  `Note IC` int(2) DEFAULT NULL,
  `Note PC/LV2` int(2) DEFAULT NULL,
  `Note ANG2` int(2) DEFAULT NULL,
  `Note Ep Fac` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `feuille_1`
--

INSERT INTO `feuille_1` (`N° de table`, `Prenom (s)`, `NOM`, `Date de nais.`, `Lieu de nais.`, `Sexe`, `Nb fois`, `Type de candidat`, `Etablissement`, `Nationnallité`, `Etat Sportif`, `Epreuve Facultative`, `Moy_6e`, `Moy_5e`, `Moy_4e`, `Moy_3e`, `Note EPS`, `Note CF`, `Note Ort`, `Note TSQ`, `Note SVT`, `Note ANG1`, `Note MATH`, `Note HG`, `Note IC`, `Note PC/LV2`, `Note ANG2`, `Note Ep Fac`) VALUES
(53, 'DEMBA', 'AGNE', '18/07/2003', 'Bambey', 'M', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'NEUTRE', '9,5', '10', '11', '8', 14, 9, 3, 7, 12, 3, 12, 6, 6, 11, 12, NULL),
(54, 'MBENE', 'AW', '02/10/1990', 'Dakar', 'F', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'DESSIN', NULL, NULL, NULL, NULL, 15, 10, 2, 14, 7, 9, 9, 4, 5, 5, 10, 11),
(55, 'MOR DIEYE', 'BA', '01/10/2004', 'Thies', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'MUSIQUE', '12', '14', '10', '11', 9, 12, 7, 5, 7, 7, 11, 14, 8, 14, 8, 11),
(56, 'THIERNO MOUSSA', 'BA', '15/04/2001', 'Bambey', 'M', 2, 'Officiel', 'Gawane', 'SEN', 'INAPTE', 'NEUTRE', '12', '12', '10', '10', NULL, 5, 2, 7, 16, 9, 10, 8, 20, 5, 11, NULL),
(57, 'BAYE DEMBA', 'BA', '11/02/2005', 'Diofior', 'M', 1, 'Officiel', 'Thiakhar', 'SEN', 'INAPTE', 'DESSIN', '11', '11', '11', '8', NULL, 7, 9, 10, 10, 8, 11, 7, 5, 6, 9, 11),
(58, 'FATOU DIOP', 'BA', '12/11/2003', 'Mauritanie', 'F', 1, 'Officiel', 'Gawane', 'MAU', 'APTE', 'NEUTRE', '11', '9,5', '10', '8', 9, 7, 4, 10, 9, 10, 12, 3, 5, 15, 12, NULL),
(59, 'ABDOU', 'BA', '16/04/2000', 'Touba', 'M', 2, 'Officiel', 'GSM (Privé)', 'SEN', 'INAPTE', 'NEUTRE', '12', '11', '11', '8', NULL, 12, 6, 6, 13, 6, 5, 3, 9, 15, 12, NULL),
(60, 'SAYNABOU', 'BABOU', '27/10/1984', 'Bambey', 'F', 3, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'DESSIN', NULL, NULL, NULL, NULL, 8, 12, 10, 11, 8, 9, 7, 7, 5, 13, 11, 10),
(61, 'MAME THIERNO', 'BADIANE', '30/03/2002', 'Bambey', 'M', 2, 'Officiel', 'Thiakhar', 'SEN', 'APTE', 'COUTURE', '11', '10', '12', '9', 13, 8, 1, 5, 7, 8, 6, 6, 6, 11, 11, 13),
(62, 'SOKHNA', 'BALL', '20/09/2002', 'Bambey', 'F', 2, 'Officiel', 'Gawane', 'SEN', 'INAPTE', 'NEUTRE', '10', '13', '12', '9', NULL, 9, 12, 12, 8, 16, 3, 11, 6, 11, 11, NULL),
(63, 'FATOU DIOP', 'BANE', '06/05/1995', 'Fatick', 'F', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'DESSIN', NULL, NULL, NULL, NULL, 7, 9, 6, 6, 7, 3, 3, 5, 13, 17, 13, 10),
(64, 'ABY', 'BOYE', '16/03/2002', 'Saint Louis', 'F', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'MUSIQUE', '12', '12', '11', '14', 7, 7, 5, 9, 7, 9, 6, 9, 8, 7, 15, 12),
(65, 'CHRISTOPHE', 'CISS', '07/07/1975', 'Mbour', 'M', 3, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'COUTURE', NULL, NULL, NULL, NULL, 9, 7, 2, 14, 7, 5, 9, 3, 8, 7, 16, 12),
(66, 'HABIB', 'CISSE', '18/11/2005', 'Ziguinchor', 'M', 1, 'Officiel', 'Thiakhar', 'SEN', 'APTE', 'DESSIN', '15', '15', '10', '11', 13, 10, 10, 5, 8, 7, 3, 3, 10, 6, 11, 12),
(67, 'KHALIFA', 'CISSE', '06/05/1992', 'Rufisque', 'M', 2, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'NEUTRE', NULL, NULL, NULL, NULL, 9, 11, 4, 14, 9, 4, 5, 11, 5, 6, 9, NULL),
(68, 'OUMAR', 'COLY', '01/01/2005', 'Ziguinchor', 'M', 1, 'Officiel', 'Thiakhar', 'SEN', 'INAPTE', 'DESSIN', '10', '12', '13', '9', NULL, 11, 11, 5, 8, 4, 4, 10, 5, 8, 11, 11),
(69, 'ABDOULAYE', 'COLY', '19/11/2003', 'Ourossogui', 'M', 2, 'Officiel', 'GSM (Privé)', 'SEN', 'APTE', 'COUTURE', '10', '11', '11', '10', 16, 16, 18, 6, 8, 11, 4, 7, 9, 8, 10, 12),
(70, 'MAMADOU', 'DANSOKHO', '06/02/2005', 'Foundioungue', 'M', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'COUTURE', NULL, NULL, NULL, NULL, 12, 5, 1, 14, 8, 5, 8, 9, 5, 12, 11, 10),
(71, 'BOUBACAR', 'DEMBELE', '03/08/2001', 'Bambey', 'M', 2, 'Officiel', 'Gawane', 'SEN', 'APTE', 'NEUTRE', '11', '14', '14', '9', 8, 11, 4, 10, 7, 6, 5, 9, 14, 12, 10, NULL),
(72, 'MOUSTAPHA', 'DEME', '07/09/1980', 'Ndagalma', 'M', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'NEUTRE', NULL, NULL, NULL, NULL, 12, 5, 11, 15, 12, 8, 11, 4, 9, 6, 8, NULL),
(73, 'ABY MARIE', 'DIAFOUNE', '22/07/2004', 'Tambacounda', 'F', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'DESSIN', '10', '13', '11', '11', 8, 10, 1, 5, 12, 5, 15, 5, 13, 5, 11, 10),
(74, 'MASSAER', 'DIAGNE', '29/11/2005', 'Kafrine', 'M', 1, 'Officiel', 'Gawane', 'SEN', 'APTE', 'COUTURE', '10', '11', '9,75', '10', 7, 11, 5, 12, 10, 7, 4, 6, 10, 10, 9, 10),
(75, 'FODE', 'DIALLO', '30/12/2000', 'Guinée', 'M', 3, 'Individuel', 'Encadrement Libre', 'GUI', 'INAPTE', 'COUTURE', NULL, NULL, NULL, NULL, NULL, 11, 5, 8, 14, 11, 2, 12, 9, 13, 9, 10),
(76, 'HENRIETTE', 'DIALLO', '14/03/2003', 'Guinée', 'F', 1, 'Officiel', 'Gawane', 'GUI', 'INAPTE', 'DESSIN', '11', '9,5', '11', '13', NULL, 5, 5, 10, 9, 3, 4, 6, 10, 5, 11, 13),
(77, 'LAHAT', 'DIALLO', '12/03/2001', 'Dakar', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'MUSIQUE', '10', '16', '14', '10', 12, 7, 5, 7, 9, 3, 7, 8, 7, 8, 8, 11),
(78, 'YOUSSOU', 'DIARRA', '01/06/2000', 'Dakar', 'M', 1, 'Officiel', 'Thiakhar', 'SEN', 'INAPTE', 'NEUTRE', '10', '11', '10', '11', NULL, 9, 7, 7, 9, 6, 5, 10, 5, 11, 12, NULL),
(79, 'AICHA', 'DIENG', '19/12/2001', 'Bamako', 'F', 3, 'Officiel', 'GSM (Privé)', 'MAL', 'APTE', 'COUTURE', '10', '9,75', '10', '8', 14, 13, 2, 7, 9, 4, 13, 8, 14, 5, 10, 9),
(80, 'FATOUMATA OUSSEYNOU', 'DIOP', '07/12/2002', 'Case Case', 'F', 4, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'NEUTRE', '11', '11', '11', '13', 8, 11, 12, 18, 7, 6, 10, 5, 6, 7, 8, NULL),
(81, 'AMADOU', 'DIOP', '04/10/2001', 'Thies', 'M', 1, 'Officiel', 'Thiakhar', 'SEN', 'APTE', 'DESSIN', '10', '12', '13', '12', 10, 5, 15, 6, 13, 4, 11, 12, 10, 12, 8, 11),
(82, 'SALIMATA', 'DIOP', '25/07/2000', 'Paris', 'F', 2, 'Individuel', 'Encadrement Libre', 'FRA', 'APTE', 'NEUTRE', NULL, NULL, NULL, NULL, 9, 8, 1, 10, 11, 4, 6, 8, 5, 17, 17, NULL),
(83, 'DAOUDA', 'DIOP', '26/02/2002', 'Touba', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'INAPTE', 'COUTURE', '17', '15', '12', '10', NULL, 14, 1, 14, 10, 12, 8, 5, 5, 18, 9, 14),
(84, 'MOUHAMADOU', 'DIOP', '23/01/2002', 'Kaolack', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'COUTURE', '12', '10', '10', '10', 9, 8, 1, 9, 9, 8, 5, 6, 10, 6, 10, 10),
(85, 'FALLOU', 'DIOP', '24/02/2002', 'Bambey', 'M', 2, 'Officiel', 'Bambey 2', 'SEN', 'INAPTE', 'COUTURE', '10', '11', '12', '9', NULL, 11, 4, 7, 10, 6, 3, 14, 9, 5, 9, 11),
(86, 'FATOU', 'DIOUF', '18/01/2000', 'Bambey', 'F', 1, 'Officiel', 'Baba Garage', 'SEN', 'APTE', 'COUTURE', '10', '11', '12', '8', 11, 6, 4, 13, 12, 5, 5, 8, 5, 7, 15, 10),
(87, 'SAKHER', 'DIOUF', '16/09/2003', 'Bambey', 'M', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'COUTURE', '9,54', '10', '12', '11', 7, 8, 9, 7, 8, 4, 8, 6, 12, 13, 11, 10),
(88, 'ALIOUNE', 'FALL', '16/03/2003', 'Tambacounda', 'M', 1, 'Officiel', 'GSM (Privé)', 'SEN', 'APTE', 'COUTURE', '12', '10', '10', '10', 9, 8, 10, 8, 13, 12, 4, 10, 5, 6, 11, 10),
(89, 'FATOU KANE', 'FALL', '04/02/2004', 'Rufisque', 'F', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'COUTURE', '10', '14', '10', '11', 12, 5, 2, 7, 9, 12, 5, 8, 5, 16, 12, 10),
(90, 'MAGUETTE', 'FALL', '06/05/2000', 'Ziguinchor', 'F', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'COUTURE', '10', '13', '11', '9', 10, 13, 2, 8, 7, 6, 12, 13, 12, 10, 11, 12),
(91, 'AMADOU', 'FALL', '05/02/2003', 'Kaffrine', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'COUTURE', '10', '9,85', '11', '10', 15, 8, 8, 15, 8, 9, 5, 7, 14, 9, 9, 12),
(92, 'MBAYE', 'FALL', '10/02/2003', 'Louga', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'COUTURE', '10', '11', '10', '10', 9, 5, 10, 7, 9, 8, 14, 9, 6, 8, 10, 9),
(93, 'WALLY', 'FALL', '19/08/2001', 'Mbour', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'COUTURE', '11', '12', '14', '8', 7, 6, 6, 5, 7, 7, 2, 9, 8, 19, 15, 9),
(94, 'MAYIB', 'FALL', '22/12/2000', 'Ndiaga Niaw', 'M', 2, 'Officiel', 'Dagalma', 'SEN', 'APTE', 'DESSIN', '9,75', '10', '10', '11', 7, 15, 1, 6, 7, 10, 7, 9, 6, 13, 17, 9),
(95, 'MAMOUR', 'FAYE', '17/12/2001', 'Fatick', 'M', 2, 'Officiel', 'Keur Samba Kane', 'SEN', 'APTE', 'DESSIN', '14', '10', '10', '13', 7, 9, 0, 15, 8, 8, 5, 3, 7, 7, 9, 9),
(96, 'PHILIPPE', 'FAYE', '27/12/2004', 'Guéoul', 'M', 2, 'Officiel', 'Keur Samba Kane', 'SEN', 'APTE', 'DESSIN', '16', '10', '10', '12', 7, 9, 15, 9, 9, 13, 3, 4, 5, 5, 8, 9),
(97, 'BIRANE', 'FAYE', '09/01/2001', 'Guédiawaye', 'M', 1, 'Officiel', 'Keur Samba Kane', 'SEN', 'APTE', 'DESSIN', '14', '10', '9,5', '9', 7, 7, 5, 9, 9, 8, 3, 5, 5, 12, 10, 11),
(98, 'IBRA', 'GOMIS', '16/01/2005', 'Keur Madiabel', 'M', 3, 'Officiel', 'Keur Samba Kane', 'SEN', 'APTE', 'DESSIN', '11', '12', '12', '12', 11, 11, 14, 5, 7, 11, 9, 8, 5, 12, 9, 9),
(99, 'PENDA', 'GUEYE', '24/03/2004', 'Dagana', 'F', 1, 'Officiel', 'Bambey 3', 'SEN', 'INAPTE', 'NEUTRE', '12', '10', '13', '12', NULL, 14, 7, 5, 8, 12, 9, 3, 8, 7, 15, NULL),
(100, 'MADICKE', 'KANE', '14/01/2004', 'Touba', 'M', 1, 'Officiel', 'Le Baol (Privé)', 'SEN', 'APTE', 'NEUTRE', '11', '10', '10', '9', 9, 10, 4, 17, 11, 5, 7, 6, 5, 9, 11, NULL),
(101, 'OUSMANE', 'KANTE', '08/11/2002', 'Bignona', 'M', 1, 'Officiel', 'Dagalma', 'SEN', 'APTE', 'DESSIN', '11', '10', '13', '10', 9, 10, 15, 7, 7, 5, 19, 10, 7, 16, 14, 10),
(102, 'DIEYNABA', 'KASSE', '03/12/1980', 'Thies', 'F', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'DESSIN', NULL, NULL, NULL, NULL, 7, 6, 8, 14, 10, 8, 3, 9, 7, 6, 10, 9),
(103, 'KHAOUSSOU', 'KASSE', '27/11/2005', 'Kébémer', 'M', 2, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'DESSIN', NULL, NULL, NULL, NULL, 11, 10, 5, 12, 9, 3, 6, 7, 15, 13, 17, 10),
(104, 'ANTOINE', 'KEITA', '15/12/2003', 'Matam', 'M', 1, 'Officiel', 'Gawane', 'SEN', 'APTE', 'DESSIN', '9,75', '10', '10', '8', 8, 9, 6, 12, 9, 11, 5, 11, 12, 13, 12, 10),
(105, 'MAURY', 'KOITE', '10/07/2005', 'Podor', 'M', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'DESSIN', NULL, NULL, NULL, NULL, 8, 5, 5, 9, 9, 15, 9, 7, 12, 16, 9, 11),
(106, 'ANSOU', 'KONARE', '11/10/2001', 'Kolda', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'INAPTE', 'MUSIQUE', '15', '14', '11', '8', NULL, 7, 0, 14, 13, 8, 12, 5, 13, 10, 8, 9),
(107, 'CHEIKHOU', 'KOUYATE', '12/07/2000', 'Somone', 'M', 1, 'Officiel', 'Lambaye', 'SEN', 'INAPTE', 'DESSIN', '13', '12', '11', '13', NULL, 5, 1, 11, 12, 8, 4, 6, 10, 15, 13, 10),
(108, 'MAME AISSATOU KATY', 'LEYE', '30/01/2003', 'Thies', 'F', 2, 'Officiel', 'Lambaye', 'SEN', 'INAPTE', 'DESSIN', '10', '11', '12', '12', NULL, 12, 2, 5, 9, 6, 2, 13, 8, 6, 10, 12),
(109, 'BELLA', 'LEYE', '21/12/2004', 'Diourbel', 'F', 3, 'Officiel', 'GSM (Privé)', 'SEN', 'APTE', 'DESSIN', '12', '10', '11', '9', 7, 16, 0, 11, 8, 7, 10, 9, 10, 6, 10, 9),
(110, 'JEAN PIERRE', 'LO', '08/10/2005', 'Nétéboulou', 'M', 2, 'Officiel', 'GSM (Privé)', 'SEN', 'APTE', 'MUSIQUE', '12', '10', '10', '11', 10, 5, 16, 10, 12, 8, 2, 4, 8, 8, 9, 10),
(111, 'CHEIKH', 'LY', '19/05/2003', 'Koumpentoum', 'M', 3, 'Officiel', 'Le Baol (Privé)', 'SEN', 'APTE', 'MUSIQUE', '10', '13', '12', '9', 16, 6, 0, 13, 9, 3, 14, 12, 9, 6, 10, 10),
(112, 'LAMARANA', 'LY', '17/10/2003', 'Bambey', 'M', 2, 'Officiel', 'Gawane', 'SEN', 'APTE', 'MUSIQUE', '11', '13', '12', '11', 7, 8, 15, 10, 7, 8, 6, 12, 12, 7, 10, 9),
(113, 'PAPE DEMBA', 'MANGANE', '07/07/2002', 'Touba', 'M', 2, 'Officiel', 'Gawane', 'SEN', 'APTE', 'COUTURE', '13', '11', '10', '13', 14, 6, 4, 9, 7, 6, 12, 5, 8, 13, 12, 10),
(114, 'SENGANE', 'MBAYE', '21/09/2001', 'Mbacké', 'M', 2, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'COUTURE', '10', '11', '11', '9', 8, 8, 14, 9, 7, 5, 10, 7, 8, 5, 10, 13),
(115, 'KHADY', 'MBENGUE', '27/01/2003', 'Kounguel', 'F', 2, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'COUTURE', '16', '13', '12', '9', 11, 10, 2, 5, 14, 5, 5, 6, 5, 8, 10, 9),
(116, 'FATIMATA', 'MBOW', '30/05/2003', 'Brazaville', 'F', 1, 'Officiel', 'Bambey 3', 'CON', 'APTE', 'COUTURE', '9,75', '10', '13', '10', 7, 6, 13, 15, 13, 10, 2, 4, 7, 16, 8, 10),
(117, 'MANSOUR', 'MBOW', '12/06/2002', 'Pikine', 'M', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'COUTURE', '10', '12', '14', '13', 10, 10, 3, 9, 8, 6, 9, 15, 7, 6, 9, 12),
(118, 'SAMBA', 'NDAO', '16/02/2002', 'Keur Massar', 'M', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'MUSIQUE', '10', '13', '11', '8', 9, 14, 0, 5, 9, 6, 2, 11, 19, 13, 10, 11),
(119, 'MAMDOU BARRY', 'NDIAYE', '21/04/2002', 'Foundioungue', 'M', 2, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'NEUTRE', '10', '10', '10', '9', 7, 11, 14, 6, 10, 13, 7, 7, 7, 13, 10, NULL),
(120, 'DAME', 'NDIAYE', '08/09/1999', 'Ross Béthio', 'M', 2, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'NEUTRE', NULL, NULL, NULL, NULL, 15, 9, 9, 9, 8, 8, 7, 8, 5, 19, 10, NULL),
(121, 'MARCEL', 'NDIAYE', '16/05/2002', 'Kolda', 'F', 2, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'NEUTRE', '13', '11', '13', '8', 7, 5, 0, 5, 7, 6, 11, 9, 7, 14, 8, NULL),
(122, 'MAIMOUNA', 'NDIR', '04/02/2001', 'Cap Skirring', 'F', 1, 'Officiel', 'Bambey 2', 'SEN', 'INAPTE', 'MUSIQUE', '14', '14', '10', '10', NULL, 10, 0, 8, 7, 3, 10, 11, 8, 5, 14, 13),
(123, 'MOHAMED', 'NGUER', '16/03/2001', 'Ranérou', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'INAPTE', 'MUSIQUE', '11', '13', '10', '8', NULL, 15, 7, 7, 7, 9, 13, 6, 16, 5, 15, 12),
(124, 'ARONA', 'NIANG', '19/01/2000', 'Kanel', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'MUSIQUE', '13', '11', '9,5', '9', 7, 12, 2, 12, 9, 4, 8, 15, 9, 5, 12, 10),
(125, 'MBAYE DIEYE', 'NIANG', '28/05/2005', 'Guinguinéo', 'M', 2, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'DESSIN', '11', '13', '10', '10', 14, 6, 1, 7, 8, 6, 9, 5, 5, 11, 17, 10),
(126, 'MAMADOU IBRA', 'NIANG', '17/10/2004', 'Sédhiou', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'DESSIN', '12', '11', '11', '10', 11, 7, 0, 6, 11, 10, 13, 6, 12, 8, 16, 11),
(127, 'BOUBACAR', 'PENE', '21/01/2000', 'Koumpentoum', 'M', 2, 'Officiel', 'Gawane', 'SEN', 'APTE', 'DESSIN', '13', '11', '9,5', '9', 8, 15, 8, 10, 11, 5, 12, 15, 5, 11, 8, 9),
(128, 'FILLY', 'POUYE', '11/04/2000', 'Gath', 'M', 2, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'DESSIN', '12', '11', '10', '8', 9, 10, 12, 10, 9, 6, 19, 5, 8, 5, 16, 9),
(129, 'NDOFENE', 'PRERA', '27/01/2005', 'Ngoundiane', 'M', 2, 'Officiel', 'Gawane', 'SEN', 'APTE', 'DESSIN', '11', '11', '11', '12', 11, 9, 5, 8, 10, 6, 5, 11, 5, 8, 15, 9),
(130, 'NGONE', 'SALL', '03/05/2000', 'Tivaoune', 'F', 1, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'DESSIN', '10', '16', '10', '10', 10, 6, 1, 14, 9, 6, 6, 4, 6, 5, 17, 11),
(131, 'KHADIM', 'SALL', '03/09/2000', 'Fatick', 'M', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'MUSIQUE', NULL, NULL, NULL, NULL, 8, 10, 4, 8, 7, 4, 2, 4, 10, 14, 10, 12),
(132, 'MANDIAYE', 'SAMB', '03/11/2005', 'Kaolack', 'M', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'MUSIQUE', NULL, NULL, NULL, NULL, 8, 11, 0, 14, 10, 6, 10, 8, 9, 5, 14, 13),
(133, 'SERIGNE NGOUDA', 'SARR', '22/07/2000', 'Matam', 'M', 2, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'MUSIQUE', '14', '10', '11', '11', 8, 8, 4, 15, 11, 10, 8, 3, 6, 13, 12, 12),
(134, 'MASSAER', 'SARR', '17/01/1991', 'Kanel', 'M', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'MUSIQUE', NULL, NULL, NULL, NULL, 9, 5, 15, 7, 9, 6, 6, 8, 6, 17, 12, 10),
(135, 'SECKA', 'SASYLVA', '24/11/2002', 'Podor', 'M', 1, 'Officiel', 'Gawane', 'SEN', 'APTE', 'COUTURE', '10', '12', '13', '10', 11, 7, 7, 6, 12, 7, 10, 3, 14, 11, 9, 11),
(136, 'FRANCISCA', 'SECK', '24/03/2001', 'Pout', 'F', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'COUTURE', '13', '10', '14', '10', 11, 14, 6, 16, 7, 7, 8, 12, 14, 7, 12, 13),
(137, 'RAMA', 'SECK', '27/04/2001', 'Pout', 'F', 1, 'Officiel', 'Bambey 3', 'SEN', 'INAPTE', 'COUTURE', '12', '11', '12', '10', NULL, 8, 4, 16, 13, 8, 8, 3, 6, 13, 13, 11),
(138, 'MADJIGUENE', 'SECK', '01/09/1987', 'Bambey', 'F', 1, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'DESSIN', NULL, NULL, NULL, NULL, 9, 15, 3, 7, 9, 8, 6, 10, 19, 6, 9, 9),
(139, 'MEISSA', 'SENE', '17/03/2000', 'Dakar', 'M', 3, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'COUTURE', '13', '10', '10', '10', 8, 6, 10, 13, 7, 13, 6, 3, 6, 19, 11, 9),
(140, 'PAPA MAMADI', 'SENE', '04/02/2001', 'Mbour', 'M', 1, 'Officiel', 'Bambey 2', 'SEN', 'APTE', 'COUTURE', '14', '14', '10', '9', 7, 15, 8, 7, 7, 5, 7, 12, 9, 5, 10, 10),
(141, 'ELODIE', 'SENE', '12/11/2004', 'Aéré Lao', 'F', 1, 'Officiel', 'Gawane', 'SEN', 'APTE', 'MUSIQUE', '11', '10', '12', '10', 8, 6, 1, 15, 8, 4, 5, 7, 6, 5, 15, 10),
(142, 'STEPHANIE', 'SIDIBE', '15/03/2002', 'Mpal', 'F', 1, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'NEUTRE', '10', '10', '11', '11', 11, 7, 5, 8, 14, 9, 10, 6, 14, 7, 8, NULL),
(143, 'FATOU BINETOU', 'SIDIBE', '09/02/2003', 'Mbour', 'F', 2, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'NEUTRE', '10', '14', '12', '9,75', 14, 7, 15, 9, 11, 5, 10, 5, 6, 8, 12, NULL),
(144, 'MAYACINE', 'SOUARE', '08/11/2005', 'Bambey', 'M', 2, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'NEUTRE', '10', '10', '12', '9', 7, 13, 7, 7, 8, 7, 10, 7, 7, 7, 13, NULL),
(145, 'MACKY', 'SY', '06/11/2001', 'Bambey', 'M', 1, 'Officiel', 'Lambaye', 'SEN', 'APTE', 'NEUTRE', '10', '10', '13', '8', 14, 16, 15, 17, 9, 13, 4, 4, 8, 8, 13, NULL),
(146, 'MODOU MACTAR', 'TALL', '28/10/2004', 'Bambey', 'M', 1, 'Officiel', 'Le Baol (Privé)', 'SEN', 'APTE', 'NEUTRE', '11', '13', '10', '9,85', 9, 10, 0, 13, 11, 6, 2, 10, 5, 5, 13, NULL),
(147, 'FANTA FIFI', 'TRAORE', '30/09/2002', 'Bambey', 'F', 1, 'Officiel', 'Le Baol (Privé)', 'SEN', 'APTE', 'NEUTRE', '10', '13', '10', '9', 7, 8, 11, 7, 9, 3, 17, 5, 12, 13, 10, NULL),
(148, 'WAGANE', 'WADE', '28/09/2005', 'Bambey', 'M', 2, 'Officiel', 'Le Baol (Privé)', 'SEN', 'APTE', 'MUSIQUE', '10', '12', '10', '11', 8, 9, 8, 8, 7, 7, 12, 8, 8, 5, 9, 11),
(149, 'MOCTAR', 'WAGUE', '28/05/2000', 'Bambey', 'M', 1, 'Officiel', 'Bambey 3', 'SEN', 'APTE', 'MUSIQUE', '10', '10', '10', '11', 8, 15, 4, 5, 9, 9, 6, 8, 6, 5, 15, 9),
(150, 'FAYA', 'WANE', '19/11/2000', 'Bambey', 'F', 2, 'Individuel', 'Encadrement Libre', 'SEN', 'APTE', 'MUSIQUE', NULL, NULL, NULL, NULL, 10, 12, 10, 6, 15, 10, 3, 3, 10, 5, 9, 10),
(151, 'SOKHNA PENDA', 'XAVIER', '25/07/1990', 'Bambey', 'F', 2, 'Individuel', 'Encadrement Libre', 'SEN', 'INAPTE', 'MUSIQUE', NULL, NULL, NULL, NULL, NULL, 14, 9, 9, 8, 6, 4, 5, 9, 7, 9, 10);

-- --------------------------------------------------------

--
-- Structure de la table `registation`
--

DROP TABLE IF EXISTS `registation`;
CREATE TABLE IF NOT EXISTS `registation` (
  `id` varchar(11) NOT NULL,
  `region` varchar(25) NOT NULL,
  `departement` varchar(20) NOT NULL,
  `localité` varchar(25) NOT NULL,
  `centre` varchar(30) NOT NULL,
  `president` varchar(30) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(26) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Confirm` varchar(25) CHARACTER SET keybcs2 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `registation`
--

INSERT INTO `registation` (`id`, `region`, `departement`, `localité`, `centre`, `president`, `telephone`, `email`, `Password`, `Confirm`) VALUES
('12', 'de', 'de', 'ed', 'eded', 'edde', '234567890', 'bay1@gmail.com', '123564', '123564'),
('13', 'kaolack', 'kaolack', 'sam', 'cem thioffack', 'baye', '+221 77 832 09 15', 'baye@gmail.com', 'passe123', 'passe123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
