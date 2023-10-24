-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/10/2023 às 00:55
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `copa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `id_Atleta` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `id_Posicao` int(11) DEFAULT NULL,
  `id_Pais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`id_Atleta`, `Nome`, `DataNascimento`, `id_Posicao`, `id_Pais`) VALUES
(1, 'Lucas da Silva', '1993-02-12', 1, 1),
(2, 'Rafael Costa', '1988-06-05', 1, 1),
(3, 'Felipe Santos', '1990-03-20', 1, 1),
(4, 'João Oliveira', '1995-09-15', 3, 1),
(5, 'Marcos Pereira', '1992-08-08', 7, 1),
(6, 'Thiago Souza', '1991-01-03', 3, 1),
(7, 'Pedro Santos', '1987-04-14', 4, 1),
(8, 'Guilherme Lima', '1994-07-27', 4, 1),
(9, 'Matheus Fernandes', '1996-05-17', 2, 1),
(10, 'André Costa', '1989-09-02', 2, 1),
(11, 'Leandro Silva', '1994-03-12', 2, 1),
(12, 'Gabriel Oliveira', '1993-10-20', 1, 1),
(13, 'Fernando Sousa', '1998-06-19', 5, 1),
(14, 'José Santos', '1990-12-07', 6, 1),
(15, 'Luiz Pereira', '1988-02-25', 5, 1),
(16, 'Marcelo Fernandes', '1997-01-11', 6, 1),
(17, 'Ricardo Costa', '1992-04-04', 4, 1),
(18, 'Eduardo Oliveira', '1991-09-09', 4, 1),
(19, 'Victor Santos', '1995-03-18', 2, 1),
(20, 'Gustavo Silva', '1996-10-15', 7, 1),
(21, 'Diego Martinez', '1992-07-08', 2, 1),
(22, 'Matías Lopez', '1989-05-14', 2, 1),
(23, 'Javier Fernandez', '1991-03-19', 2, 2),
(24, 'Juan Perez', '1993-09-06', 2, 2),
(25, 'Pablo Rodriguez', '1990-01-10', 3, 2),
(26, 'Santiago Gonzalez', '1994-06-25', 3, 2),
(27, 'Carlos Martinez', '1995-12-07', 4, 2),
(28, 'Luis Ramirez', '1996-02-12', 4, 2),
(29, 'Gonzalo Fernandez', '1993-04-04', 4, 2),
(30, 'Javier Torres', '1988-08-20', 5, 2),
(31, 'Martín Lopez', '1996-03-05', 5, 2),
(32, 'Federico Perez', '1990-10-18', 6, 2),
(33, 'Facundo Fernandez', '1994-07-10', 7, 2),
(34, 'Matias Sanchez', '1992-01-30', 7, 2),
(35, 'Alejandro Rodriguez', '1997-09-09', 1, 2),
(36, 'Lucas Gomez', '1988-03-15', 1, 2),
(37, 'Ignacio Martinez', '1995-06-23', 5, 2),
(38, 'Rodrigo Diaz', '1991-04-08', 6, 2),
(39, 'Emanuel Perez', '1992-09-11', 2, 2),
(40, 'Facundo Fernandez', '1995-01-07', 7, 2),
(41, 'Juan Rodriguez', '1991-10-18', 1, 3),
(42, 'Carlos Gonzalez', '1989-04-03', 1, 3),
(43, 'Andres Gomez', '1987-03-14', 1, 3),
(44, 'Luis Ramirez', '1997-09-30', 1, 3),
(45, 'Santiago Perez', '1994-08-09', 2, 3),
(46, 'Sofio Hernandez', '1996-01-07', 2, 3),
(47, 'Diego Martinez', '1990-04-11', 3, 3),
(48, 'Mario Torres', '1993-05-25', 3, 3),
(49, 'Manuel Gomez', '1992-07-22', 5, 3),
(50, 'Lauro Rodriguez', '1995-12-15', 5, 3),
(51, 'Oscar Ramirez', '1993-09-18', 4, 3),
(52, 'Camilo Gomez', '1994-02-20', 4, 3),
(53, 'Juan Carlos Rodriguez', '1998-03-01', 6, 3),
(54, 'Andre Ramirez', '1988-05-05', 6, 3),
(55, 'Daniel Gomez', '1996-09-10', 7, 3),
(56, 'Sergi Hernandez', '1997-01-12', 7, 3),
(57, 'Santiago Perez', '1991-07-04', 5, 3),
(58, 'Carlos Rodriguez', '1994-03-03', 6, 3),
(59, 'Andres Gomez', '1992-11-14', 2, 3),
(60, 'Mariano Torres', '1990-12-30', 4, 3),
(61, 'Pablo Rodriguez', '1991-10-18', 2, 4),
(62, 'Carlos Gonzalez', '1989-04-03', 2, 4),
(63, 'Andres Gomez', '1987-03-14', 6, 4),
(64, 'Luis Ramirez', '1997-09-30', 5, 4),
(65, 'Santiago Perez', '1994-08-09', 4, 4),
(66, 'Samuel Hernandez', '1996-01-07', 1, 4),
(67, 'Diego Martinez', '1990-04-11', 1, 4),
(68, 'Mateo Torres', '1993-05-25', 1, 4),
(69, 'Manuel Gomez', '1992-07-22', 2, 4),
(70, 'Lautaro Rodriguez', '1995-12-15', 2, 4),
(71, 'Oscar Ramirez', '1993-09-18', 3, 4),
(72, 'Camillo Gomez', '1994-02-20', 3, 4),
(73, 'Juan  Rodriguez', '1998-03-01', 4, 4),
(74, 'Andrea Ramirez', '1988-05-05', 4, 4),
(75, 'Daniel Gomez', '1996-09-10', 5, 4),
(76, 'Sergio Hernandez', '1997-01-12', 5, 4),
(77, 'Santiago Perez', '1991-07-04', 6, 4),
(78, 'Carli Rodriguez', '1994-03-03', 6, 4),
(79, 'Andres Gomez', '1992-11-14', 7, 4),
(80, 'Emanuel Torres', '1990-12-30', 7, 4),
(180, 'Pierre Dubois', '1990-08-02', 1, 4),
(181, 'Mathieu Dupont', '1988-06-19', 1, 4),
(182, 'Hugo Martin', '1991-03-15', 2, 4),
(183, 'Camille Lambert', '1993-12-09', 2, 4),
(184, 'Antoine Lefebvre', '1992-09-18', 2, 4),
(185, 'Elodie Martin', '1995-04-12', 3, 4),
(186, 'Thibault Moreau', '1990-01-20', 3, 4),
(187, 'Margaux Dupuis', '1994-07-30', 4, 4),
(188, 'Olivier Rousseau', '1996-01-07', 4, 4),
(189, 'Leo Bernard', '1993-05-05', 5, 4),
(190, 'Lucien Girard', '1989-08-12', 5, 4),
(191, 'Isabelle Leroux', '1992-03-03', 6, 4),
(192, 'Julien Dubois', '1997-04-22', 6, 4),
(193, 'Suli Lefèvre', '1991-11-10', 6, 4),
(194, 'Jérôme Martin', '1987-06-27', 7, 4),
(195, 'Noémie Lambert', '1994-02-19', 7, 4),
(196, 'Sébastien Dubois', '1995-01-08', 5, 4),
(197, 'Mathius Boucher', '1990-10-25', 6, 4),
(198, 'Laurent Petit', '1996-09-14', 3, 4),
(199, 'Marion Rousseau', '1993-07-06', 7, 4),
(200, 'Marco Rossi', '1992-03-25', 1, 5),
(201, 'Sotti Ferrari', '1994-09-07', 1, 5),
(202, 'Alessandro Conte', '1989-01-11', 1, 5),
(203, 'Ignazio Romano', '1996-06-03', 2, 5),
(204, 'Lorenzo Moretti', '1990-12-14', 2, 5),
(205, 'Francesco Bianchi', '1992-04-09', 3, 5),
(206, 'Carlo Marchesi', '1988-08-28', 3, 5),
(207, 'Valentino Ricci', '1995-03-06', 4, 5),
(208, 'Riccardo De Luca', '1993-10-12', 4, 5),
(209, 'Mario Santoro', '1991-07-05', 5, 5),
(210, 'Alessio Marini', '1997-09-18', 5, 5),
(211, 'Giulio Esposito', '1994-01-20', 6, 5),
(212, 'Leonardo Caruso', '1996-06-19', 6, 5),
(213, 'Lucio Galli', '1993-03-11', 7, 5),
(214, 'Matteo Rinaldi', '1989-04-02', 7, 5),
(215, 'Soli Moretti', '1992-10-30', 5, 5),
(216, 'Antonio Ferrari', '1990-05-27', 6, 5),
(217, 'Eleno Lombardi', '1995-09-15', 4, 5),
(218, 'Angelo Rossi', '1991-08-08', 3, 5),
(219, 'Federico Martini', '1997-07-13', 7, 5),
(220, 'Lukas Müller', '1991-07-06', 1, 6),
(221, 'Timo Schmidt', '1994-09-12', 1, 6),
(222, 'Sebastian Bauer', '1988-01-18', 1, 6),
(223, 'Jonas Wagner', '1992-03-25', 2, 6),
(224, 'David Becker', '1989-10-30', 2, 6),
(225, 'Annak Richter', '1996-03-19', 3, 6),
(226, 'Kevin Klein', '1990-08-15', 3, 6),
(227, 'Sarat Schulz', '1995-06-10', 4, 6),
(228, 'Niklas Hoffmann', '1993-04-22', 4, 6),
(229, 'Larant Meyer', '1991-12-07', 5, 6),
(230, 'Marcel Krüger', '1990-02-11', 5, 6),
(231, 'Liko Fischer', '1994-07-03', 6, 6),
(232, 'Maximilian Weber', '1987-09-28', 6, 6),
(233, 'Julis Schneider', '1992-05-09', 7, 6),
(234, 'Christian Schmitt', '1997-06-14', 7, 6),
(235, 'Leni Beck', '1993-04-05', 4, 6),
(236, 'Felix Lehmann', '1995-03-20', 5, 6),
(237, 'Lauro Zimmermann', '1990-10-16', 6, 6),
(238, 'Erik Wagner', '1996-01-08', 7, 6),
(239, 'Soph Krause', '1997-08-12', 2, 6),
(240, 'Kaito Suzuki', '1992-04-04', 1, 7),
(241, 'Yuki Tanaka', '1990-09-10', 1, 7),
(242, 'Haruki Nakamura', '1991-03-18', 1, 7),
(243, 'Takashi Sato', '1993-07-05', 2, 7),
(244, 'Yuta Kobayashi', '1995-01-15', 2, 7),
(245, 'Sakura Yamamoto', '1994-06-22', 2, 7),
(246, 'Hiroshi Aoki', '1997-12-07', 3, 7),
(247, 'Yui Ono', '1996-02-12', 3, 7),
(248, 'Shota Ito', '1993-08-20', 4, 7),
(249, 'Hikari Nakajima', '1991-10-09', 4, 7),
(250, 'Kazuki Kato', '1990-03-30', 5, 7),
(251, 'Riko Suzuki', '1992-09-19', 5, 7),
(252, 'Kenji Watanabe', '1988-07-11', 6, 7),
(253, 'Mei Tanaka', '1994-05-03', 6, 7),
(254, 'Taro Saito', '1996-06-14', 7, 7),
(255, 'Aiko Okada', '1997-03-01', 7, 7),
(256, 'Yuto Matsuda', '1995-08-08', 5, 7),
(257, 'Ema Yamashita', '1993-04-27', 6, 7),
(258, 'Hiroki Kawaguchi', '1997-10-14', 4, 7),
(259, 'Mika Nakamura', '1990-11-05', 3, 7),
(260, 'Ji-hoon Kim', '1991-09-15', 1, 8),
(261, 'Min-seok Park', '1990-03-18', 1, 8),
(262, 'Hyun-woo Lee', '1988-08-10', 1, 8),
(263, 'Ji-yoon Choi', '1993-07-02', 2, 8),
(264, 'Seung-ho Jung', '1992-01-04', 2, 8),
(265, 'Soo-min Kang', '1995-06-20', 3, 8),
(266, 'Dong-hyun Shin', '1996-04-07', 3, 8),
(267, 'Ji-eun Song', '1997-10-13', 4, 8),
(268, 'Min-woo Yoon', '1994-05-11', 4, 8),
(269, 'Ji-soo Park', '1991-01-26', 5, 8),
(270, 'Seong-ho Kim', '1990-09-09', 5, 8),
(271, 'Mi-kyung Lee', '1992-07-22', 6, 8),
(272, 'Tae-ho Cho', '1995-12-03', 6, 8),
(273, 'Ji-min Moon', '1994-03-14', 7, 8),
(274, 'Kyung-ho Kim', '1989-08-28', 7, 8),
(275, 'Yeon-ju Han', '1997-06-10', 2, 8),
(276, 'Sang-woo Lim', '1993-04-05', 4, 8),
(277, 'Ji-hye Kim', '1996-10-16', 5, 8),
(278, 'Min-seok Oh', '1993-05-02', 6, 8),
(279, 'Yoon-ji Yang', '1990-11-08', 2, 8),
(280, 'Chukwudi Okonkwo', '1993-01-07', 1, 9),
(281, 'Uchenna Eze', '1992-03-22', 1, 9),
(282, 'Ifeanyi Amadi', '1988-09-15', 1, 9),
(283, 'Ngozi Adebayo', '1995-07-10', 2, 9),
(284, 'Olumide Okafor', '1990-05-04', 2, 9),
(285, 'Amina Mohammed', '1991-08-18', 2, 9),
(286, 'Eze Onyekachi', '1994-06-28', 3, 9),
(287, 'Chinwe Okoro', '1996-12-11', 3, 9),
(288, 'Oluwaseun Okeke', '1993-10-09', 4, 9),
(289, 'Nkechi Uzor', '1997-04-05', 4, 9),
(290, 'Chinedu Nwankwo', '1994-01-30', 4, 9),
(291, 'Chiamaka Okafor', '1992-03-20', 5, 9),
(292, 'Ikechukwu Afolabi', '1989-06-10', 5, 9),
(293, 'Ijeoma Adekunle', '1991-09-03', 5, 9),
(294, 'Emeka Nnamdi', '1995-02-02', 6, 9),
(295, 'Chisom Okeke', '1990-07-15', 6, 9),
(296, 'Ugochukwu Ekwueme', '1996-04-12', 7, 9),
(297, 'Nneka Amaechi', '1993-10-07', 7, 9),
(298, 'Obinna Nwachukwu', '1992-11-08', 7, 9),
(299, 'Ifunanya Okoro', '1997-05-20', 6, 9),
(300, 'André dos Santos', '1993-01-05', 1, 10),
(301, 'Maria da Silva', '1990-09-18', 1, 10),
(302, 'José Manuel', '1988-07-10', 2, 10),
(303, 'Sofia Gomes', '1991-03-04', 2, 10),
(304, 'Paulo Rodrigues', '1992-04-20', 3, 10),
(305, 'Carla Baptista', '1995-10-15', 3, 10),
(306, 'António Fernandes', '1994-02-09', 4, 10),
(307, 'Marta Ferreira', '1997-06-11', 4, 10),
(308, 'Tiago Costa', '1993-08-22', 5, 10),
(309, 'Ana Luísa', '1992-03-12', 5, 10),
(310, 'Miguel Gonçalves', '1990-09-30', 6, 10),
(311, 'Sofia Machado', '1991-12-03', 6, 10),
(312, 'Carlos Martins', '1994-07-07', 7, 10),
(313, 'Isabel Ferreira', '1993-01-14', 7, 10),
(314, 'Rui Pereira', '1989-05-18', 1, 10),
(315, 'Catarina Rodrigues', '1996-04-10', 2, 10),
(316, 'Francisco Almeida', '1995-06-27', 3, 10),
(317, 'Joana Santos', '1992-03-08', 4, 10),
(318, 'Daniel Mendes', '1993-10-25', 5, 10),
(319, 'Ana Silva', '1994-11-01', 6, 10),
(320, 'Ahmed El Amrani', '1992-03-10', 1, 11),
(321, 'Yasmi Benali', '1990-06-28', 1, 11),
(322, 'Khalid Hassan', '1994-01-05', 1, 11),
(323, 'Amina Abidi', '1996-09-14', 2, 11),
(324, 'Hassan El Saidi', '1993-08-09', 2, 11),
(325, 'Fatim Mansouri', '1991-10-18', 2, 11),
(326, 'Karim Bouzidi', '1995-07-03', 3, 11),
(327, 'Leili Alami', '1990-03-19', 3, 11),
(328, 'Amin El Kaddouri', '1997-04-12', 3, 11),
(329, 'Nadi Azzouzi', '1992-09-27', 4, 11),
(330, 'Omar Chaoui', '1994-02-22', 4, 11),
(331, 'Salma Cherif', '1990-12-11', 4, 11),
(332, 'Karim Belhaj', '1993-05-14', 5, 11),
(333, 'Nawal El Mansouri', '1996-06-07', 5, 11),
(334, 'Yassin Abidi', '1991-01-30', 5, 11),
(335, 'Rania El Amari', '1994-03-15', 6, 11),
(336, 'Sofiane Ben Youssef', '1990-08-20', 6, 11),
(337, 'Yasmino Saidi', '1992-12-07', 6, 11),
(338, 'Mohammed Hamidi', '1995-07-02', 7, 11),
(339, 'Leil Bensouda', '1993-06-15', 7, 11),
(340, 'Pieter de Vries', '1992-07-12', 7, 12),
(341, 'Lotte van Dijk', '1990-04-25', 7, 12),
(342, 'Jan van der Berg', '1993-09-19', 6, 2),
(343, 'Annat anssen', '1995-03-08', 6, 2),
(344, 'Michiel Bakker', '1988-12-10', 6, 2),
(345, 'Eva Smit', '1991-06-15', 5, 12),
(346, 'Maarten van Rijn', '1994-02-03', 5, 12),
(347, 'Laur e Boer', '1997-05-27', 5, 12),
(348, 'Joris Visser', '1996-08-04', 4, 2),
(349, 'Sophieto an leuwen', '1990-11-21', 4, 12),
(350, 'Daan de Jong', '1989-03-16', 4, 12),
(351, 'Femke Molenaar', '1993-07-30', 3, 12),
(352, 'Tim van den Heuvel', '1995-10-22', 3, 12),
(353, 'Mara Hendriks', '1992-01-14', 3, 12),
(354, 'Niels van der Meij', '1991-04-11', 2, 12),
(355, 'Lisanne Smit', '1994-06-09', 2, 12),
(356, 'Bram de Graaf', '1996-02-27', 2, 12),
(357, 'Eline Bakker', '1997-09-01', 1, 12),
(358, 'Simon Visser', '1990-08-15', 1, 12),
(359, 'Tess de Vos', '1993-12-03', 1, 12),
(360, 'Rui Silva', '1990-07-15', 7, 13),
(361, 'Sofia Gonçalves', '1992-05-28', 7, 13),
(362, 'Pedro Almeida', '1991-08-12', 6, 13),
(363, 'Martin Pereira', '1993-11-06', 6, 13),
(364, 'João Santos', '1989-04-18', 6, 13),
(365, 'antonio Rodrigues', '1995-01-22', 5, 13),
(366, 'Tiago Fernandes', '1994-09-30', 5, 13),
(367, 'Inês Costa', '1990-02-14', 5, 13),
(368, 'Luís Ribeiro', '1992-03-07', 4, 13),
(369, 'Carlos Pereira', '1991-06-25', 4, 13),
(370, 'André Silva', '1996-10-02', 4, 13),
(371, 'Rivaldo Santos', '1993-12-19', 3, 13),
(372, 'Hugo Oliveira', '1995-07-10', 3, 13),
(373, 'Italo Mendes', '1988-09-03', 3, 13),
(374, 'Dani Fernandes', '1994-08-15', 2, 13),
(375, 'Miguel Barbosa', '1990-01-27', 2, 13),
(376, 'Filipe Martins', '1991-04-12', 2, 13),
(377, 'claudio Silva', '1997-03-28', 1, 13),
(378, 'Ricardo Santos', '1993-06-20', 1, 13),
(379, 'Carmelo Oliveira', '1992-02-11', 1, 13),
(380, 'Juan González', '1990-07-15', 7, 14),
(381, 'Mariano Rodríguez', '1992-05-28', 7, 14),
(382, 'Carlos Pérez', '1991-08-12', 6, 14),
(383, 'Marcos López', '1993-11-06', 6, 14),
(384, 'Luis Martínez', '1989-04-18', 6, 14),
(385, 'Antonio Sánchez', '1995-01-22', 5, 14),
(386, 'Pedro Fernández', '1994-09-30', 5, 14),
(387, 'Eleno García', '1990-02-14', 5, 14),
(388, 'Hector Rodríguez', '1992-03-07', 4, 14),
(389, 'Carmentino Pérez', '1991-06-25', 4, 14),
(390, 'Andrés López', '1996-10-02', 4, 14),
(391, 'Laurano Torres', '1993-12-19', 3, 14),
(392, 'Mario González', '1995-07-10', 3, 14),
(393, 'Rosalito Martínez', '1988-09-03', 3, 14),
(394, 'Javier García', '1994-08-15', 2, 14),
(395, 'Lucío Torres', '1990-01-27', 2, 14),
(396, 'Antonio López', '1991-04-12', 2, 14),
(397, 'Samuel Ruiz', '1997-03-28', 1, 14),
(398, 'José Pérez', '1993-06-20', 1, 14),
(399, 'Daniel Rodríguez', '1992-02-11', 1, 14),
(400, 'John Smith', '1990-07-15', 1, 15),
(401, 'Sam Johnson', '1992-05-28', 1, 15),
(402, 'Michael Davis', '1991-08-12', 2, 15),
(403, 'carl White', '1993-11-06', 2, 15),
(404, 'David Wilson', '1989-04-18', 2, 15),
(405, 'Jake Brown', '1995-01-22', 3, 15),
(406, 'Daniel Miller', '1994-09-30', 3, 15),
(407, 'Jerry Clark', '1990-02-14', 4, 15),
(408, 'Ryan Martin', '1992-03-07', 4, 15),
(409, 'Marlo Lee', '1991-06-25', 4, 15),
(410, 'Matthew Anderson', '1996-10-02', 5, 15),
(411, 'Anthony Turner', '1993-12-19', 5, 15),
(412, 'Kevin Moore', '1995-07-10', 5, 15),
(413, 'Michel King', '1988-09-03', 5, 15),
(414, 'Jason Lewis', '1994-08-15', 6, 15),
(415, 'Larry Hall', '1990-01-27', 6, 15),
(416, 'William Davis', '1991-04-12', 6, 15),
(417, 'Carter Smith', '1997-03-28', 6, 15),
(418, 'Christopher Johnson', '1993-06-20', 7, 15),
(419, 'Amand White', '1992-02-11', 7, 15),
(420, 'Li Wei', '1990-07-15', 7, 16),
(421, 'Zhang Mei', '1992-05-28', 7, 16),
(422, 'Wang Chen', '1991-08-12', 6, 16),
(423, 'Liu Yan', '1993-11-06', 6, 16),
(424, 'Zhao Lei', '1989-04-18', 5, 16),
(425, 'Wu Xin', '1995-01-22', 5, 16),
(426, 'Cheng Yang', '1994-09-30', 5, 16),
(427, 'Li Hua', '1990-02-14', 5, 16),
(428, 'Xu Ming', '1992-03-07', 4, 16),
(429, 'Yang Jie', '1991-06-25', 4, 16),
(430, 'Liu Fang', '1996-10-02', 4, 16),
(431, 'Zhou Mei', '1993-12-19', 3, 16),
(432, 'Chen Wei', '1995-07-10', 3, 16),
(433, 'Gu Li', '1988-09-03', 3, 16),
(434, 'Xia Yu', '1994-08-15', 2, 16),
(435, 'Lin Qing', '1990-01-27', 2, 16),
(436, 'Wang Xin', '1991-04-12', 2, 16),
(437, 'Huang Min', '1997-03-28', 1, 16),
(438, 'He Peng', '1993-06-20', 1, 16),
(439, 'Gao Wei', '1992-02-11', 1, 16);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

CREATE TABLE `estadio` (
  `id_Estadio` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estadio`
--

INSERT INTO `estadio` (`id_Estadio`, `Nome`) VALUES
(1, 'Arena Fonte Nova'),
(2, 'Ilha do Retiro'),
(3, 'Engenhão'),
(4, 'Arena Corinthians'),
(5, 'Allianz Park'),
(6, 'Morumbi'),
(7, 'Beira-Rio'),
(8, 'Maracanã'),
(9, 'Arena Pantanal'),
(10, 'Arena Grêmio'),
(11, 'Mineirão'),
(12, 'Vila Belmiro'),
(13, 'São Januário');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `id_Pais` int(11) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Tecnico` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`id_Pais`, `Nome`, `Tecnico`) VALUES
(1, 'Brasil', 'Tite'),
(2, 'Argentina', 'Juan Perez'),
(3, 'Colombia', 'Pablo Vilas'),
(4, 'França', 'Pierre Gasly'),
(5, 'Itália', 'Valentino Rossi'),
(6, 'Alemanha', 'Werner Frantz'),
(7, 'Japão', 'yuki Hiro'),
(8, 'Coreia do Sul', 'Kim Jung Seok'),
(9, 'Nigeria', 'Marrudem Eto'),
(10, 'Angola', 'Roberto Satos'),
(11, 'Marrocos', 'Mohamed Hadid'),
(12, 'Holanda', 'Marcus De Jong'),
(13, 'Portugal', 'Antonio Pereira'),
(14, 'Cuba', 'Emanuel Cruz'),
(15, 'Estados Unidos', 'James Lambert'),
(16, 'China', 'Xi Qin'),
(17, 'Espanha', 'Luiz Henrique'),
(18, 'Inglaterra', 'George Russell'),
(19, 'Africa do Sul', 'Lucas Mabu'),
(20, 'Uruguai', 'Sergio Diaz'),
(21, 'Canadá', 'William Norris'),
(22, 'Australia', 'Derek Willer'),
(23, 'Polonia ', 'Aleksy Wolski'),
(24, 'Ghana', 'Kudus'),
(25, 'Arabia Saudita', 'Salem Al-Dawsari');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `id_Posicao` int(11) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posicao`
--

INSERT INTO `posicao` (`id_Posicao`, `Nome`) VALUES
(1, 'Atacante'),
(2, 'Zagueiro'),
(3, 'Goleiro'),
(4, 'Meio-campista'),
(5, 'Lateral Esquerdo'),
(6, 'Lateral Direito'),
(7, 'Volante');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`id_Atleta`),
  ADD KEY `id_Posicao` (`id_Posicao`),
  ADD KEY `id_Pais` (`id_Pais`);

--
-- Índices de tabela `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`id_Estadio`);

--
-- Índices de tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_Pais`);

--
-- Índices de tabela `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`id_Posicao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `id_Atleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT de tabela `estadio`
--
ALTER TABLE `estadio`
  MODIFY `id_Estadio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id_Pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `posicao`
--
ALTER TABLE `posicao`
  MODIFY `id_Posicao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `atleta_ibfk_1` FOREIGN KEY (`id_Posicao`) REFERENCES `posicao` (`id_Posicao`),
  ADD CONSTRAINT `atleta_ibfk_2` FOREIGN KEY (`id_Pais`) REFERENCES `pais` (`id_Pais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
