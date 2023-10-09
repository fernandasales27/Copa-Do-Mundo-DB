-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/10/2023 às 03:50
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `copabd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `id_Atleta` int(11) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `id_Posicao` int(11) DEFAULT NULL,
  `id_Pais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(11, 'Marrocos', 'Mohamed Hadid');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `id_Posicao` int(11) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
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
-- AUTO_INCREMENT de tabela `estadio`
--
ALTER TABLE `estadio`
  MODIFY `id_Estadio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id_Pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `posicao`
--
ALTER TABLE `posicao`
  MODIFY `id_Posicao` int(11) NOT NULL AUTO_INCREMENT;

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
