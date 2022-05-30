-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 23/06/2019 às 16:56
-- Versão do servidor: 10.1.37-MariaDB-0+deb9u1
-- Versão do PHP: 7.0.33-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pinkfloydsite`
--
CREATE DATABASE IF NOT EXISTS `pinkfloydsite` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pinkfloydsite`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `cod` int(11) NOT NULL,
  `usuario` varchar(12) NOT NULL,
  `senha` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `admin`
--

INSERT INTO `admin` (`cod`, `usuario`, `senha`) VALUES
(1, 'art', '123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `cod` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `album` varchar(30) NOT NULL,
  `comentario` varchar(144) NOT NULL,
  `nota` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`cod`, `nome`, `album`, `comentario`, `nota`, `status`) VALUES
(7, 'Lilian Magela Carneiro Proença', 'The Dark Side of the Moon', 'aaaaaaaaaaaaaaaa', 5, 'Lido'),
(9, '', 'The Dark Side of the Moon', '', 5, 'Lido'),
(10, 'Lilian Magela Carneiro Proença', 'The Dark Side of the Moon', 'aaaaaaaaaaa\r\n\r\n', 5, 'Lido'),
(11, 'Lilian Magela Carneiro Proença', 'The Piper at the Gates of Down', '	Lorem ipsum conubia arcu integer ac etiam curabitur id velit tristique diam vestibulum venenatis neque vehicula, volutpat ligula risus iaculis ', 0, 'Lido'),
(12, '', 'Nenhum', '', 5, 'Não lido'),
(14, 'Lilian Magela Carneiro Proença', 'The Dark Side of the Moon', '	Lorem ipsum conubia arcu integer ac etiam curabitur id velit tristique diam vestibulum venenatis neque vehicula, volutpat ligula risus iaculis ', 5, 'Lido'),
(16, '', 'The Dark Side of the Moon', '	Lorem ipsum conubia arcu integer ac etiam curabitur id velit tristique diam vestibulum venenatis neque vehicula, volutpat ligula risus iaculis ', 5, 'Não lido'),
(17, '', 'The Dark Side of the Moon', '', 5, 'Não lido'),
(18, '', 'The Dark Side of the Moon', '', 5, 'Lido');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
