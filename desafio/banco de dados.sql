-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Nov-2022 às 13:51
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `desafio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `banda`
--

CREATE TABLE `banda` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `banda`
--

INSERT INTO `banda` (`id`, `nome`) VALUES
(1, 'Ramones'),
(2, 'U2'),
(3, 'Blink 182'),
(4, 'Garbage'),
(5, 'Pitty'),
(6, 'Legião Urbana');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disco`
--

CREATE TABLE `disco` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `ano` int(11) NOT NULL,
  `banda_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disco`
--

INSERT INTO `disco` (`id`, `titulo`, `ano`, `banda_id`) VALUES
(1, 'Ramones', 1976, 1),
(2, 'Rocket to Russia', 1977, 1),
(3, 'Pleasant Drems', 1981, 1),
(4, 'Acid Eaters', 1993, 1),
(5, 'Brain Drain', 1989, 1),
(6, 'Adios Amigos', 1995, 1),
(7, 'Blink 182', 2003, 3),
(8, 'Enema of The State', 1999, 3),
(9, 'California', 2016, 3),
(10, 'Neighborhoods', 2011, 3),
(11, 'Garbage', 1995, 4),
(12, 'Beautiful Garbage', 2001, 4),
(13, 'No Gos No Masters', 2021, 4),
(14, 'Version 2.0', 1998, 4),
(15, 'Absolute Garbage', 2007, 4),
(16, 'Special Collection', 2002, 4),
(17, 'Dois', 1986, 6),
(18, 'As Quatro Estações', 1989, 6),
(19, 'Que Pais é Este', 1987, 6),
(20, 'Uma Outra Estação', 1997, 6),
(21, 'Acústico MTV', 1999, 6),
(22, 'A Tempestade', 1996, 6),
(23, 'Música para Acampamentos', 1992, 6),
(24, 'Lado Z', 2003, 5),
(25, 'Admirável Chip Novo', 2003, 5),
(26, 'Matriz', 2019, 5),
(27, 'Sete Vidas', 2014, 5),
(28, 'Pela Fresta', 2015, 5),
(29, 'War', 1983, 2),
(30, 'Boy', 1980, 2),
(31, 'October', 1981, 2),
(32, 'The Joshua Tree', 1987, 2),
(33, 'U22', 2012, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `banda`
--
ALTER TABLE `banda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `disco`
--
ALTER TABLE `disco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banda_id` (`banda_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banda`
--
ALTER TABLE `banda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `disco`
--
ALTER TABLE `disco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `disco`
--
ALTER TABLE `disco`
  ADD CONSTRAINT `disco_ibfk_1` FOREIGN KEY (`banda_id`) REFERENCES `banda` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
