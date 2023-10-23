-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/10/2023 às 01:51
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
(80, 'Emanuel Torres', '1990-12-30', 7, 4);

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
(16, 'Uruguai', 'Sergio Diaz'),
(17, 'Espanha', 'Luiz Henrique'),
(18, 'Inglaterra', 'George Russell'),
(19, 'Africa do Sul', 'Lucas Mabu'),
(20, 'China', 'Xi Qin'),
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
  MODIFY `id_Atleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de tabela `estadio`
--
ALTER TABLE `estadio`
  MODIFY `id_Estadio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id_Pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
