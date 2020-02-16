-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 16 fév. 2020 à 09:26
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `handivity`
--

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `id_competition` int(11) NOT NULL AUTO_INCREMENT,
  `nom_competition` varchar(15) NOT NULL,
  `annee_competition` year(4) NOT NULL,
  PRIMARY KEY (`id_competition`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competition`
--

INSERT INTO `competition` (`id_competition`, `nom_competition`, `annee_competition`) VALUES
(1, 'Paralympique', 2016),
(2, 'Paralympique', 2012),
(3, 'Para athlétisme', 2018);

-- --------------------------------------------------------

--
-- Structure de la table `rel_sportif_competition`
--

DROP TABLE IF EXISTS `rel_sportif_competition`;
CREATE TABLE IF NOT EXISTS `rel_sportif_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sportif` int(11) NOT NULL,
  `id_competition` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rel_sportif_competition`
--

INSERT INTO `rel_sportif_competition` (`id`, `id_sportif`, `id_competition`) VALUES
(1, 3042015, 1),
(2, 3308685, 2),
(3, 7029767, 3),
(4, 26921008, 1),
(5, 1066335, 2);

-- --------------------------------------------------------

--
-- Structure de la table `rel_sportif_sport`
--

DROP TABLE IF EXISTS `rel_sportif_sport`;
CREATE TABLE IF NOT EXISTS `rel_sportif_sport` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_sportif` int(10) NOT NULL,
  `id_sport` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rel_sportif_sport`
--

INSERT INTO `rel_sportif_sport` (`id`, `id_sportif`, `id_sport`) VALUES
(1, 3042015, 13),
(2, 3308685, 13),
(3, 7029767, 13),
(4, 3588012, 10),
(5, 3588012, 3),
(6, 3588012, 10),
(7, 7192205, 1),
(8, 3526002, 12),
(9, 597033, 1),
(10, 2867156, 1),
(11, 2960162, 10),
(12, 2966219, 12),
(13, 3018805, 10),
(14, 3189412, 1),
(15, 3285605, 1),
(16, 3291459, 1),
(17, 3336539, 3),
(18, 3434808, 7),
(19, 3559501, 12),
(20, 5285220, 1),
(21, 16014276, 1),
(22, 19602152, 13),
(23, 3335785, 1),
(24, 19587416, 13),
(25, 26920844, 12),
(26, 677594, 6),
(27, 3009022, 9),
(28, 3009890, 14),
(29, 3471977, 9),
(30, 3491559, 8),
(31, 3524179, 1),
(32, 5257350, 1),
(33, 7029805, 12),
(34, 8043265, 1),
(35, 17134257, 1),
(36, 26505636, 5),
(37, 26857695, 1),
(38, 2829470, 1),
(39, 5527928, 1),
(40, 7142331, 1),
(41, 16980147, 1),
(42, 17484219, 10),
(43, 19587425, 13),
(44, 23926192, 1),
(45, 26921008, 7),
(46, 27651477, 9),
(47, 4705654, 1),
(48, 7365480, 1),
(49, 7629974, 1),
(50, 26505549, 5),
(51, 26505584, 5),
(52, 26505603, 5),
(53, 26505620, 5),
(54, 26505652, 5),
(55, 26597827, 7),
(56, 26920625, 7),
(57, 26920636, 6),
(58, 6169959, 1),
(59, 26920961, 12),
(60, 68469656, 12),
(61, 23681719, 10),
(62, 1066335, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sport`
--

DROP TABLE IF EXISTS `sport`;
CREATE TABLE IF NOT EXISTS `sport` (
  `id_sport` int(11) NOT NULL AUTO_INCREMENT,
  `nom_discipline` varchar(255) NOT NULL,
  PRIMARY KEY (`id_sport`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sport`
--

INSERT INTO `sport` (`id_sport`, `nom_discipline`) VALUES
(1, 'athlétisme'),
(3, 'aviron'),
(5, 'basket-ball en fauteuil roulant'),
(6, 'canoë-kayak'),
(7, 'escrime'),
(8, 'haltérophilie'),
(9, 'judo'),
(10, 'natation'),
(12, 'tennis'),
(13, 'tennis de table'),
(14, 'tennis en fauteuil roulant'),
(15, 'tir sportif');

-- --------------------------------------------------------

--
-- Structure de la table `sportif`
--

DROP TABLE IF EXISTS `sportif`;
CREATE TABLE IF NOT EXISTS `sportif` (
  `id_sportif` int(11) NOT NULL AUTO_INCREMENT,
  `nom_sportif` varchar(50) NOT NULL,
  `prenom_sportif` varchar(50) NOT NULL,
  `carte` mediumtext,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(50) DEFAULT NULL,
  `sexe` varchar(15) NOT NULL,
  `description` mediumtext,
  `lien_video` mediumtext,
  `photo_profil` mediumtext,
  `photo_fond` mediumtext,
  `facebook_sportif` mediumtext,
  `instagram_sportif` mediumtext,
  PRIMARY KEY (`id_sportif`)
) ENGINE=MyISAM AUTO_INCREMENT=68469657 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sportif`
--

INSERT INTO `sportif` (`id_sportif`, `nom_sportif`, `prenom_sportif`, `carte`, `date_naissance`, `lieu_naissance`, `sexe`, `description`, `lien_video`, `photo_profil`, `photo_fond`, `facebook_sportif`, `instagram_sportif`) VALUES
(3042015, 'Houdet', 'Stéphane', 'http://commons.wikimedia.org/wiki/Special:FilePath/Stephane%20Houdet%20US%20Open.jpg', '1970-11-20', 'Saint-Nazaire', 'Masculin', 'C’est un joueur français de tennis en fauteuil roulant médaillé aux jeux paralympiques ,qui le 9 août 1996, à Mondsee près de Salzbourg en Autriche, d’un accident de moto le prive de l\'usage de son genou gauche. Il s\'accommode dans un premier temps de son genou raide. Il est ancien numéro 1 mondial et vainqueur de 23 tournois du Grand Chelem en simple et en double. Il a notamment été médaillé d\'or aux Jeux paralympiques d\'été de 2008 à Pékin et aux Jeux paralympiques d\'été de 2016 à Rio ; médaillé d\'argent et de bronze aux Jeux paralympiques d\'été de 2012 à Londres. Il a remporté Roland Garros deux fois en simple (2012 et 2013), et l\'US Open également deux fois en simple (2013 et 2017).', NULL, NULL, NULL, 'HoudetStephane/', 'stephanehoudet/'),
(3308685, 'Jeremiasz', 'Michael', 'http://commons.wikimedia.org/wiki/Special:FilePath/Micha%C3%ABl%20Jeremiasz%20-%202015.JPG', '1981-10-15', 'Paris', 'Masculin', 'Il pratique le tennis depuis l\'âge de 6 ans et a été classé 5/6. Le 7 février 2000, alors qu\'il était en vacances à Avoriaz, il est victime d\'un accident de ski qui le laisse paraplégique. Il passe 9 mois en rééducation et devient en même temps titulaire d\'un DEUG de LEA2. Il a notamment remporté quatre médailles lors de Jeux paralympiques de 2004, 2008 et 2012, dont une en or en double, ainsi que 7 titres du Grand Chelem en double. Il a été numéro 1 mondial en double en 2004 et en simple en 2005. ', NULL, NULL, NULL, 'MichaJeremiasz/', 'michaeljeremiasz/'),
(7029767, 'Peifer', 'Nicolas', 'http://commons.wikimedia.org/wiki/Special:FilePath/Nicolas%20Peifer%20at%20the%202010%20US%20Open%2001.jpg', '1990-10-18', 'Sarreguemines', 'Masculin', 'joueur de tennis français', NULL, NULL, NULL, 'Peifer-Nicolas-364153490609/', NULL),
(3588012, 'Lorandi', 'Élodie', 'http://commons.wikimedia.org/wiki/Special:FilePath/Didinewsite2008.jpg', '1989-05-31', 'Cannes', 'Féminin', 'Elodie Lorandi est née avec une maladie orpheline qui paralyse un nerf de sa jambe gauche, du genou à la cheville. Elle fait ses classes chez les valides jusqu\'en Nationale 2, aux côtés de Camille Muffat mais à 17 ans, elle se rend compte qu\'elle ne peut plus rivaliser avec les valides. Elle se tourne alors vers le handisport .Elle fait ses débuts aux Jeux paralympiques d\'été de Pékin en 2008 dans la catégorie S10, remportant la médaille d\'argent du 200 m nages. Lors des championnats du monde handisport en 2013, elle remporte la médaille de bronze du 50 m nage libre (catégorie S10) et du 100 m papillon, nage qu\'elle n\'avait pas travaillée depuis plus d\'un an, suite à une tendinite à l\'épaule.Lors des Jeux paralympiques de 2018 à Rio, elle rafle le bronze sur le 100 mètres et 400 mètres. ', NULL, NULL, NULL, 'pg/Elodie.Lorandi1/posts/', 'elodie_lorandi/?hl=fr'),
(7192205, 'Fairbank', 'Pierre', 'http://commons.wikimedia.org/wiki/Special:FilePath/Flickr%20-%20toffehoff%20-%20Pierre%20Fairbank.jpg%20-%20cropped.jpg', '1971-07-27', 'Hienghène', 'Masculin', 'Il est le fils d\'André et de Marie Fairbank. Atteint d\'une poliomyélite, il participe à sa première compétition handisport à l\'âge de 15 ans. Depuis l\'âge de 7 ans, il est membre du Handi Club calédonien .Son niveau de handicap est T53 (classification du sport pour les personnes handicapées faisant de l\'athlétisme). Il a été champion des Jeux paralympiques d\'été de 2000 à Sydney et a également obtenu trois médailles d\'argent (2000, 2004 et 2016) et quatre de bronze (2000, 2004, 2008 et 2016). ', NULL, NULL, NULL, 'pierrefairbank/', NULL),
(3526002, 'Kamkasomphou', 'Thu', 'http://commons.wikimedia.org/wiki/Special:FilePath/KAMKASOMPHOU%20Thu%20%28FRA%29%20IMG%203168%20DxO%20%2815476691788%29.jpg', '1968-10-12', '', 'Féminin', 'Promise à un bel avenir, elle intègre rapidement le Centre de haut niveau de Caen. Elle atteint même la 8ème place junior nationale. Malheureusement, à l\'âge de 18 ans, on lui diagnostique une périartérite noueuse (PAN) et elle doit abandonner la compétition chez les valides. Elle représenta la France aux Jeux paralympiques d\'été de 2008, en classe 8, et remporte pour la deuxième fois de sa carrière la médaille d\'or dans sa catégorie, battant en finale la Suédoise Josefin Abrahamsson 3-6. Lors des Jeux paralympiques de Londres, elle remporte la médaille d\'argent en s\'inclinant (11-3, 11-4, 12-14, 11-5) face à la Chinoise Mao Jingdian. En 2019, elle remporte son septième titre de championne d\'Europe aux Championnats d\'Europe handisport 2019.', NULL, NULL, NULL, NULL, 'kamkasomphouthu/'),
(597033, 'Assoumani', 'Arnaud', 'http://commons.wikimedia.org/wiki/Special:FilePath/ArnaudAssoumani.png', '1985-09-04', 'Orsay', 'Masculin', 'Arnaud Assoumani est né sans avant-bras gauche. Il a grandi à Rochefort-sur-Loire (Maine-et-Loire). Il a étudié à l\'Institut d\'études politiques de Paris et obtenu un BTS montage et post production en 2006 à l’EICAR. Il est médaillé de bronze aux Jeux Paralympiques d\'été de 2004. Il représente à nouveau la France en saut en longueur (catégorie F46) aux Jeux paralympiques d\'été de 2008 et remporte l\'or avec un nouveau record du monde à 7,23 mètres. Il a battu son propre record du monde aux championnats de France Élite en salle (valides) à Bercy en 2010 en effectuant un saut à 7,82 mètres. Il tente de participer aux Jeux olympiques d\'été de 2012 à Londres avec les valides, mais doit renoncer à sa qualification à la suite d\'une blessure au tendon d\'Achille. ', NULL, NULL, NULL, 'arnaudassoumani/', 'arnaudassoumani/'),
(2867156, 'El Hannouni', 'Assia', 'http://commons.wikimedia.org/wiki/Special:FilePath/Hassia%20El%20Hanouni%202008.JPG', '1981-05-30', 'Dijon', 'Féminin', 'Après avoir commencé sa carrière sportive en 1999, elle perd progressivement la vue à cause d\'une maladie dégénérative (rétinite pigmentaire). Son investissement sportif l\'aide à se surpasser et à dépasser son handicap. Lors des Jeux paralympiques d\'été 2004, elle remporte 4 médailles d\'or sur 100 mètres, 200 mètres, 400 mètres et 800 mètres. Après avoir arrêté sa carrière après les jeux de Pékin, elle renoue avec la compétition. Lors des Jeux paralympiques 2012 de Londres, elle remporte le 400 mètres, remportant ainsi son troisième titre consécutif sur cette distance. Elle remporte ensuite le 200 mètres, distance qu\'elle avait également remporté en 2004 et 2008, en établissant un nouveau record du monde de la discipline pour sa catégorie de handicap, T12, avec le temps de 24 secondes 46. Ses résultats lui valent d\'être élevées au titre d\'officier de la Légion d\'honneur le 31 décembre 2012, cet honneur faisant suite au titre de Chevalier de la Légion d\'Honneur.', NULL, NULL, NULL, NULL, NULL),
(2960162, 'Rozoy', 'Charles', 'http://commons.wikimedia.org/wiki/Special:FilePath/Charles%20Rozoy%202.jpg', '1987-03-04', 'Chenôve', 'Masculin', 'Encore valide, commence une carrière, mais ses temps de qualification insuffisants ne lui permettent pas de rester au sein du pôle Espoir, où il était entrainé par Sylvain Fréville. Un accident de moto lui paralysant le bras gauche en juillet 2008, il rejoint la natation handisport. En octobre 2009, lors de sa première compétition internationale à Reykjavik (Islande), il devient champion d\'Europe en grand bassin du 100 mètres papillon dans la catégorie S8 avec un nouveau record d\'Europe à la clé. Il devient champion du Monde en petit bassin du 100 mètres papillon de sa catégorie (S8) avec un nouveau record du monde. Il améliore son palmarès lors de ces championnats du monde avec deux médailles de bronze au 50 et 100 mètres nage libre. Aux Jeux paralympiques d\'été de 2012 de Londres, il remporte la médaille d\'or au 100 mètres papillon. ', NULL, NULL, NULL, 'rozoycharles/', NULL),
(2966219, 'Durand', 'Christophe', 'http://commons.wikimedia.org/wiki/Special:FilePath/Christophe%20Durand%20%282%29.jpg', '1973-04-05', 'Décines-Charpieu', 'Masculin', 'Atteint d’une tumeur de la moelle épinière, Christophe est opéré alors qu’il n’a pas encore deux ans. Les nerfs sont touchés. Le futur champion handisport souffre d’une paralysie incomplète des jambes et d’une perte de muscles dans le bas du dos. Il s’assied alors sur un fauteuil roulant. Il remporta sa première médaille paralympique, une médaille d\'or, lors des Jeux paralympiques d\'été de 2000. Aux Jeux de 2004, il obtint une médaille de bronze en individuel, et une seconde en équipe. Il représenta à nouveau la France aux Jeux paralympiques d\'été de 2008, en classe 4/5, et remporta la finale dans sa catégorie, battant le Coréen Jung Eun-Chang en cinq sets.', NULL, NULL, NULL, NULL, NULL),
(3018805, 'Smétanine', 'David', 'http://commons.wikimedia.org/wiki/Special:FilePath/David%20Smetanine.jpg', '1974-10-21', 'Grenoble', 'Masculin', 'David Smétanine subit un accident de voiture qui le blesse grièvement à la moelle épinière. Il subit aussi de nombreuses fractures de la colonne vertébrale. Avec le choc, ces deux poumons ont été comprimés et lui ont servi de « air bag ». Heureusement pour lui, il était sportif et donc ses poumons bien gonflés ont pu tenir le choc. Il a remporté le 7 septembre 2008 la première médaille d\'or française des Jeux paralympiques de Pékin sur le 100 mètres nage libre en 1 minute 24 secondes 47. À égalité \r\navec l\'athlète Assia El\'Hannouni, il revient de ces jeux avec le plus important palmarès de la délégation française : deux médailles d\'or et deux médailles d\'argent (il est aussi détenteur de quatre records d\'Europe sur 50, 100 et 200 mètres nage libre et 50 mètres dos). Il est également détenteur de 150 titres de champion de France.', NULL, NULL, NULL, NULL, NULL),
(3189412, 'Casoli', 'Julien', 'http://commons.wikimedia.org/wiki/Special:FilePath/Julien%20Casoli%20-%202015%20Doha%202.jpg', '1982-07-05', 'Vesoul', 'Masculin', 'Il perd l\'usage de ses jambes à l\'âge de 14 ans à cause d\'une artère qui se boucha dans sa colonne vertébrale. Il essaye plusieurs disciplines sportives comme le basket-ball en fauteuil et l\'haltérophilie, mais décide de se consacrer à l\'athlétisme handisport. De catégorie T54. Il a participé aux Jeux paralympiques d\'été de 2008, 2012 et 2016. Il est également vainqueur du marathon de Paris en 2012 et en 2015 dans la catégorie handisport. Spécialiste du 400, 800 et 1 500 mètres, il conquiert régulièrement les plus hautes marches des podiums en championnats de France et championnats d’Europe depuis 2005. ', NULL, NULL, NULL, 'Julien-Casoli-191602394186126/', 'casolijulien/?hl=fr'),
(3285605, 'François-Elie', 'Mandy', 'http://commons.wikimedia.org/wiki/Special:FilePath/Mandy%20Fran%C3%A7ois-Elie%20-%202013%20IPC%20Athletics%20World%20Championships.jpg', '1989-09-27', 'Le Lamentin', 'Féminin', 'Victime d\'un accident vasculaire cérébral en 2008, à l\'âge de 18 ans, elle passe trois semaines dans le coma. Elle se réveille hémiplégique et partiellement paralysée, du côté droit du corps. A cette époque, elle était détentrice du record de Martinique sur 400 m en 55.23 secpndes. Elle remporte lors des Jeux paralympiques d\'été de 2012 à Londres la médaille d\'or sur 100 mètres dans la catégorie T37. Aux Championnats du monde d\'athlétisme handisport 2013, elle est sacrée championne sur 100 mètres et sur 200 mètres. Elle remporte lors des Jeux paralympiques d\'été de 2016 à Rio la médaille d\'argent sur 100 mètres dans la catégorie T37. L\'année suivante, elle est vice-championne du monde du 200 m catégorie T37 lors des Championnats du monde d\'athlétisme handisport 2017. Elle est sacrée meilleure sportive de l\'année 2017 lors de la Nuit des Champions par le CROSMA (Comité régional olympique et sportif de Martinique). ', NULL, NULL, NULL, 'francoiselie.mandy.officiel', 'mandy_francois_elie/'),
(3291459, 'Le Fur', 'Marie', 'http://commons.wikimedia.org/wiki/Special:FilePath/Meeting%20d%27Athl%C3%A9tisme%20Paralympique%20de%20Paris%20-%20Marie-Am%C3%A9lie%20Le%20Fur%2002%20%28cropped%29.jpg', '1988-09-26', 'Vendôme', 'Féminin', 'Elle pratique l’athlétisme depuis l’âge de 6 ans et voulait devenir pompier professionnel, mais à la suite d\'un accident routier en scooter le 31 mars 2004, elle est amputée de la jambe gauche sous le genou. Elle recommence cependant à courir quatre mois après jour pour jour le 31 juillet 2004.Elle est détentrice de huit médailles lors des Jeux paralympiques : deux médailles d\'argent lors de l\'édition de Pékin, trois médailles lors de l\'édition de Londres et trois médailles, dont deux d\'or, lors de l\'édition de Rio. Son palmarès se complète également par douze médailles mondiales, dont quatre titres de championne. Elle est élue en décembre 2018 présidente du Comité paralympique et sportif français.', NULL, NULL, NULL, 'marieamelie.lefur/', 'marieamelielefur/'),
(3336539, 'Benoit', 'Nathalie', '', '1980-06-12', 'Aix-en-Provence', 'Féminin', 'Nathalie Benoit souffre de sclérose en plaques, une maladie dégénérative qui la prive de l\'usage de ses jambes. L\'Aixoise professeur des écoles, atteinte d\'une sclérose en plaques, réside aux PennesMirabeau, près de Marseille. Elle participe aux épreuves d\'aviron en catégorie bras-épaules et remporte sa première médaille paralympique aux Jeux d\'été de 2012 à Londres avec une deuxième place en skiff. En 2013, elle décide d\'effectuer le trajet Paris-Lyon-Marseille à la rame. En 1997, elle termine 8e des championnats de France de pentathlon (catégorie valide) et est sélectionnée en équipe de France de basket handisport en 2007. Elle débute l\'aviron en 2008. ', NULL, NULL, NULL, NULL, 'nathalie.benoit1/'),
(3434808, 'Citerne', 'Robert', 'http://commons.wikimedia.org/wiki/Special:FilePath/Robert%20Citerne%202014%20IWAS%20European%20Championships%20EMS-EQ%20t172055.jpg', '1961-02-10', 'Paris', 'Masculin', 'Robert Citerne est atteint d\'une infirmité motrice cérébrale (hémiplégie droite). En 30 ans de carrière, il s’est forgé un des palmarès les plus importants de l\'escrime handisport avec 10 médailles olympiques dont une médaille d\'or en individuel aux Jeux paralympiques de Séoul en 1988. 28 ans plus tard, en septembre 2016, il renoue avec l\'or lors de Jeux Paralympiques de Rio.', NULL, NULL, NULL, NULL, 'robertciterne/'),
(3559501, 'Boury', 'Vincent', 'http://commons.wikimedia.org/wiki/Special:FilePath/Vincent%20Boury.jpg', '1969-06-21', 'Colmar', 'Masculin', 'Il représenta la France aux Jeux paralympiques d\'été de 2008, en classe 2, et remporta la finale dans sa catégorie, battant le Français Stéphane Molliens. Outre son titre de champion paralympique, il avait précédemment remporté une médaille d\'argent aux Jeux paralympiques de 1996, et une médaille de bronze aux Jeux de 2000. Il fut vice-champion du monde à trois reprises, en 1998, en 2002 et en 2006. Il remporta la Coupe du Monde par équipe en 2002. Sa devise, \"A donf\", reflète bien son état d\'esprit.   ', NULL, NULL, NULL, NULL, NULL),
(5285220, 'Mastouri', 'Djamel', 'http://commons.wikimedia.org/wiki/Special:FilePath/Meeting%20d%27Athl%C3%A9tisme%20Paralympique%20de%20Paris%20-%20Djamel%20Mastouri%2001.jpg', '1972-01-17', 'Paris', 'Masculin', 'Sergent-chef de l\'Armée de terre, Djamel Mastouri souffre d’une hémiplégie du côté droit, à la suite d\'un accident vasculaire cérébral à l\'âge de 3 ans. Aux Championnats d\'Europe 2005 à Espoo, il est médaillé d\'or sur 800 mètres et médaillé de bronze sur 1 500 mètres. Il est sacré champion du monde sur 1 500 mètres et médaillé de bronze aux Mondiaux de 2006 à Assen. Aux Jeux paralympiques d\'été de 2008 à Pékin, il est médaillé de bronze sur 800 mètres. Il est fait chevalier de l\'ordre national du Mérite après ces Jeux. Il est médaillé d\'argent sur 400 mètres aux Jeux mondiaux militaires de 2019 à Wuhan. \r\n ', NULL, NULL, NULL, 'djamel.mastouri', 'djamel_mastouri/?hl=fr'),
(16014276, 'Deleplace', 'Hyacinthe', 'http://commons.wikimedia.org/wiki/Special:FilePath/2013%20IPC%20Athletics%20World%20Championships%20-%2026072013%20-%20Hyacinthe%20Deleplace%20after%20the%20Men%27s%20400m%20-%20T12%20third%20semifinal.jpg', '1989-06-25', 'Villeurbanne', 'Masculin', 'athlète handisport français', NULL, NULL, NULL, 'profile.php?id=100014432109514', 'hyacinthe_dlp/?hl=fr'),
(19602152, 'Racineux', 'Arlette', '', '1961-03-02', 'Saint-Nazaire', 'Féminin', '', NULL, NULL, NULL, NULL, NULL),
(3335785, 'Keïta', 'Nantenin', 'http://commons.wikimedia.org/wiki/Special:FilePath/Nantenin%20Ke%C3%AFta.jpg', '1984-11-05', '', 'Féminin', 'athlète franco-malienne', NULL, NULL, NULL, 'NanteninKeitaOfficial/', 'nanto_k/?hl=fr'),
(19587416, 'Cattaneo', 'Frédéric', '', '1978-12-03', '', 'Masculin', '', NULL, NULL, NULL, 'CattaneoFrederic/', 'frederic_cattaneo/?hl=fr'),
(26920844, 'Molliens', 'Stéphane', 'http://commons.wikimedia.org/wiki/Special:FilePath/MOLLIENS%20St%C3%A9phane%20%28FRA%29.jpg', '1974-09-23', 'Arras', 'Masculin', 'pongiste handisport français', NULL, NULL, NULL, 'stephanemollienstennisdetable/', NULL),
(677594, 'Farineaux', 'Martin', '', '1981-08-13', 'Lille', 'Masculin', 'kayakiste français', NULL, NULL, NULL, NULL, NULL),
(3009022, 'onard', 'Kyrill', '', '1976-02-23', 'Eymoutiers', 'Masculin', 'judoka français', NULL, NULL, NULL, NULL, NULL),
(3009890, 'Fèvre-Chevalier', 'Cédric', '', '1983-11-01', 'Dijon', 'Masculin', '', NULL, NULL, NULL, 'cedric.fevre.chevalier/', 'cedric_fevre/?hl=fr'),
(3471977, 'Aurières', 'Sandrine', '', '1982-11-10', 'Montreuil', 'Féminin', '', NULL, NULL, NULL, NULL, NULL),
(3491559, 'Ghazouani', 'Souhad', '', '1982-08-07', 'Saint-Saulve', 'Féminin', '', NULL, NULL, NULL, NULL, NULL),
(3524179, 'Cibone', 'Thierry', '', '1973-08-08', 'Lifou', 'Masculin', '', NULL, NULL, NULL, NULL, NULL),
(5257350, 'Lemeunier', 'Denis', '', '1965-02-12', 'Tours', 'Masculin', 'athlète français', NULL, NULL, NULL, 'denis.lemeunier', 'denislmnr/?hl=fr'),
(7029805, 'Savant-Aira', 'Nicolas', 'http://commons.wikimedia.org/wiki/Special:FilePath/Savant-Aira%20Nicolas.jpg', '1980-11-03', 'Aix-en-Provence', 'Masculin', '', NULL, NULL, NULL, 'nicolas.savantaira', NULL),
(8043265, 'Le Draoullec', 'Xavier', '', '1961-07-26', 'Paris', 'Masculin', '', NULL, NULL, NULL, NULL, NULL),
(17134257, 'Royer', 'Daniel', 'http://commons.wikimedia.org/wiki/Special:FilePath/Meeting%20d%27Athl%C3%A9tisme%20Paralympique%20de%20Paris%20-%20Daniel%20Royer%2001.jpg', '1986-02-13', 'Saint-Dizier', 'Masculin', 'athlète français', NULL, NULL, NULL, NULL, NULL),
(26505636, 'Awad', 'Sandrella', '', '1983-08-02', 'Marseille', 'Féminin', 'basketteuse française', NULL, NULL, NULL, NULL, NULL),
(26857695, 'Radius', 'Louis', 'http://commons.wikimedia.org/wiki/Special:FilePath/Louis%20Radius%202016.jpg', '1979-12-09', 'Suresnes', 'Masculin', 'athlète handisport français', NULL, NULL, NULL, 'Louis-Radius-316960531805882/', 'radiuslouis/?hl=fr'),
(2829470, 'Ba', 'Aladji', '', '1973-12-15', '', 'Masculin', 'athlète handisport français', NULL, NULL, NULL, 'profile.php?id=100014754004443', NULL),
(5527928, 'akunda', 'Gautier', '', '1983-09-15', '', 'Masculin', 'athlète français', NULL, NULL, NULL, NULL, NULL),
(7142331, 'Gallo', 'Pasquale', '', '1988-08-15', '', 'Masculin', '', NULL, NULL, NULL, 'KeomaDjango?fref=search&__tn__=%2Cd%2CP-R&eid=ARCXLA4sEDpbwxlbkL2KMJPYXjT_IohXBPzetUzun30kTEOB-inh25whZGvcRktyKR4cwkBta7IOFH24', 'gallopasquale/?hl=fr'),
(16980147, 'Perel', 'Antoine', 'http://commons.wikimedia.org/wiki/Special:FilePath/Antoine%20Perel%20-%202013%20IPC%20Athletics%20World%20Championships.jpg', '1986-04-09', '', 'Masculin', '', NULL, NULL, NULL, 'Paratriathlon/', 'antoineperel/?hl=fr'),
(17484219, 'Meunier', 'Fabrice', '', '1973-06-03', '', 'Masculin', '', NULL, NULL, NULL, NULL, NULL),
(19587425, 'Majdi', 'Lahcen', '', '1970-11-03', '', 'Masculin', '', NULL, NULL, NULL, NULL, NULL),
(23926192, 'Lanza', 'Angelina', 'http://commons.wikimedia.org/wiki/Special:FilePath/Angelina%20Lanza.jpg', '1993-06-06', '', 'Féminin', 'athlète française', NULL, NULL, NULL, 'Angelina.Lanza.athlete/', 'lanzaa_angelina/?hl=fr'),
(26921008, 'Valet', 'Maxime', 'http://commons.wikimedia.org/wiki/Special:FilePath/Maxime%20Valet%20Rio%202016.jpg', '1987-05-18', 'Toulouse', 'Masculin', 'escrimeur handisport français', NULL, NULL, NULL, NULL, NULL),
(27651477, 'Medjeded', 'Karima', '', '1972-05-11', 'Toulouse', 'Féminin', 'judokate handisport française', NULL, NULL, NULL, NULL, NULL),
(4705654, 'Fuss', 'Alain', '', '1968-07-10', 'La Tronche', 'Masculin', '', NULL, NULL, NULL, NULL, NULL),
(7365480, 'Pallier', 'Ronan', '', '1970-10-23', 'Sainte-Marie', 'Masculin', '', NULL, NULL, NULL, 'ronan.pallier.9', NULL),
(7629974, 'Bozzolo', 'Stéphane', '', '1975-05-02', 'Épinal', 'Masculin', 'Athlète français', NULL, NULL, NULL, NULL, NULL),
(26505549, 'Laurent', 'Kathy', '', '1976-02-10', 'Saint-Étienne', 'Féminin', 'Basketteuse française d’handisport', NULL, NULL, NULL, NULL, NULL),
(26505584, 'Ménard', 'Émilie', '', '1981-09-30', 'Angers', 'Féminin', 'Basketteuse française d’handisport', NULL, NULL, NULL, NULL, NULL),
(26505603, 'Pichon', 'Angélique', '', '1978-09-26', 'Mespaul', 'Féminin', 'Basketteuse française d’handisport', NULL, NULL, NULL, 'angelique.pichon.31', NULL),
(26505620, 'Saint-Omer-Delepine', 'Fabienne', '', '1972-02-19', 'Borre', 'Féminin', 'Basketteuse française d’handisport', NULL, NULL, NULL, 'people/Fabienne-Saint-omer-Delepine/1715015268', NULL),
(26505652, 'Buso', 'Marianne', '', '1992-05-28', 'Marseille', 'Féminin', 'Basketteuse française d’handisport', NULL, NULL, NULL, 'marianne.buso', NULL),
(26597827, 'Demaude', 'Cécile', '', '1972-06-01', 'Maisons-Alfort', 'Féminin', 'Escrimeuse spécialiste en fleuret et en épée handisport française', NULL, NULL, NULL, 'cdemaude', NULL),
(26920625, 'Ifebe', 'Yannick', '', '1992-06-03', 'Longjumeau', 'Masculin', 'Escrimeur handisport français', NULL, NULL, NULL, NULL, 'yifence/'),
(26920636, 'Moreau', 'Cindy', '', '1983-10-11', 'Angers', 'Féminin', 'Kayakiste handisport française', NULL, NULL, NULL, NULL, NULL),
(6169959, 'Talatini', 'Jean-Pierre', '', '1976-04-18', '', 'Masculin', '', NULL, NULL, NULL, NULL, NULL),
(26920961, 'Thomas', 'Maxime', 'http://commons.wikimedia.org/wiki/Special:FilePath/THOMAS%20Maxime%20%28FRA%29.jpg', '1983-09-17', 'Nancy', 'Masculin', 'pongiste handisport français', NULL, NULL, NULL, 'mthomas.athlete/', 'mthomas.athlete/'),
(68469656, 'Barneoud', 'Anne', '', '1983-10-31', '', 'Féminin', 'joueuse de tennis de table handisport', NULL, NULL, NULL, NULL, NULL),
(23681719, 'Supiot', 'Claire', '', '1968-02-28', 'Angers', 'Féminin', 'Débutant la natation à l\'âge de cinq ans, elle fait une formation sport-études à Dinard. Elle est membre de l\'équipe de France aux Jeux olympiques d\'été de 1988 où elle prend part au 200 mètres papillon; elle est éliminée en série.. Elle a été championne de France de natation en bassin de 50 mètres sur 100 mètres papillon en hiver 1984 et sur 200 mètres papillon aux hivers 1984, 1985, 1987 et 1988 et aux étés 1984, 1986, 1987 et 1988 . Elle est diagnostiquée en 2009 de la maladie de Charcot-Marie-Tooth . Elle est classée en S9 puis passe en S8 en 2018 .En 2016, elle participe aux Championnats de France pour tenter de se qualifier pour les Jeux paralympiques d\'été3. Le 15 août 2018, elle remporte la médaille d\'or sur 50 mètres nage libre aux Championnats d\'Europe de natation handisport à Dublin. ', 'https://www.youtube.com/embed/-FlxM_0S2lA', 'http://handivity.fr/parasportifs/profil-claire-supiot.png', NULL, 'pages/category/Athlete/Claire-Supiot-1550849748559375/', 'clairesupiot/'),
(1066335, 'Adolphe', 'Timothée', 'http://perso-etudiant.u-pem.fr/~rlerou02/images/carte-adolphe.png', '1989-12-29', 'Versailles', 'Masculin', 'Timothée Adolphe est atteint d\'un glaucome congénital dès la naissance (il voyait donc flou de l\'œil gauche et relativement bien de l\'œil droit). En conséquence d\'un accident survenu à l\'âge de 3 ans, sa rétine de l\'œil droit s\'est décollée et il est ainsi devenu aveugle de cet œil. Il aura ensuite un ulcère à la cornée gauche à cause d\'un coup de pied à 6 ans. Enfin, à 19 ans, après un coup à l\'œil gauche encore une fois dans un mouvement de foule, un décollement de la rétine le rend complètement aveugle .Timothée est devenu athlète paralympique français polyvalent sur les épreuves de sprint d\'athlétisme, détenteur du record du monde du 60 mètres et des records d\'Europe du 100 mètres et du 200 mètres. Il concourt dans la catégorie T11 du fait de sa cécité. On le surnomme le « guépard blanc ». Il est entraîné par Arthémon Hatungimana et est guidé actuellement par Jeffrey Lami, Bruno Naprix, Dérick Ondée et Cedric Felip. ', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Meeting_d%27Athl%C3%A9tisme_Paralympique_de_Paris_-_Timoth%C3%A9e_Adolphe_%26_C%C3%A9dric_Felip_08.jpg/800px-Meeting_d%27Athl%C3%A9tisme_Paralympique_de_Paris_-_Timoth%C3%A9e_Adolphe_%26_C%C3%A9dric_Felip_08.jpg', '', 'TimotheeAdolphe/?locale2=fr_FR', 'timotheeadolphe/?hl=fr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
