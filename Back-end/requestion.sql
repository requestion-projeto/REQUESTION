-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.5.8-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------


DROP DATABASE IF EXISTS `requestion`;
CREATE DATABASE IF NOT EXISTS `requestion`;
USE `requestion`;


DROP TABLE IF EXISTS `alternativa`;
CREATE TABLE IF NOT EXISTS `alternativa` (
  `cod_alternativa` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(1000) DEFAULT NULL,
  `cod_questao` int(11) NOT NULL,
  PRIMARY KEY (`cod_alternativa`),
  KEY `fk_questao` (`cod_questao`),
  CONSTRAINT `fk_questao` FOREIGN KEY (`cod_questao`) REFERENCES `questao` (`cod_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=;


INSERT INTO `alternativa` (`cod_alternativa`, `texto`, `cod_questao`) VALUES


DROP TABLE IF EXISTS `anotacao`;
CREATE TABLE IF NOT EXISTS `anotacao` (
  `cod_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) DEFAULT NULL,
  `data_alteracao` date DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `cod_usuario` varchar(11) NOT NULL,
  PRIMARY KEY (`cod_anotacao`),
  KEY `fk_usuario_anotacao` (`cod_usuario`),
  CONSTRAINT `fk_usuario_anotacao` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `anotacao` (`cod_anotacao`, `titulo`, `data_alteracao`, `texto`, `cod_usuario`) VALUES


DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE IF NOT EXISTS `disciplina` (
  `cod_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `cod_tema` int(11) NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_tema_disciplina` (`cod_tema`),
  CONSTRAINT `fk_tema_disciplina` FOREIGN KEY (`cod_tema`) REFERENCES `tema` (`cod_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=;


INSERT INTO `disciplina` (`cod_disciplina`, `nome`, `descricao`, `cod_tema`) VALUES


DROP TABLE IF EXISTS `prova`;
CREATE TABLE IF NOT EXISTS `prova` (
  `cod_prova` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `cod_usuario` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`cod_prova`),
  KEY `fk_usuario_prova` (`cod_usuario`),
  CONSTRAINT `fk_usuario_prova` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `prova` (`cod_prova`, `nome`, `descricao`, `cod_usuario`) VALUES


DROP TABLE IF EXISTS `prova_questao`;
CREATE TABLE IF NOT EXISTS `prova_questao` (
  `cod_prova` int(11) DEFAULT NULL,
  `cod_questao` int(11) NOT NULL,
  KEY `fk_prova_questao1` (`cod_prova`),
  KEY `fk_prova_questao` (`cod_questao`),
  CONSTRAINT `fk_prova_questao` FOREIGN KEY (`cod_questao`) REFERENCES `questao` (`cod_questao`),
  CONSTRAINT `fk_prova_questao1` FOREIGN KEY (`cod_prova`) REFERENCES `prova` (`cod_prova`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `prova_questao` (`cod_prova`, `cod_questao`) VALUES


DROP TABLE IF EXISTS `questao`;
CREATE TABLE IF NOT EXISTS `questao` (
  `cod_questao` int(11) NOT NULL AUTO_INCREMENT,
  `nome_questão` varchar(30) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `privacidade` VARCHAR(50) DEFAULT NULL,
  `data_alteracao` date DEFAULT NULL,
  `cod_tema` int(11) DEFAULT NULL,
  `cod_usuario` varchar(11) NOT NULL,
  PRIMARY KEY (`cod_questao`),
  KEY `fk_usuario_questao` (`cod_usuario`),
  KEY `fk_tema_questao` (`cod_tema`),
  CONSTRAINT `fk_tema_questao` FOREIGN KEY (`cod_tema`) REFERENCES `tema` (`cod_tema`),
  CONSTRAINT `fk_usuario_questao` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `questao` (`cod_questao`, `nome_questao`, `tipo`, `privacidade`, `data_alteracao`, `cod_tema`, `cod_usuario`) VALUES


DROP TABLE IF EXISTS `tema`;
CREATE TABLE IF NOT EXISTS `tema` (
  `cod_tema` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tema` (`cod_tema`, `nome`, `descricao`) VALUES


DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `cod_usuario` varchar(11) NOT NULL DEFAULT 'SP324400X',
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `e-mail` varchar(100) NOT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `instituicao` varchar(30) DEFAULT NULL,
  `grau_ensino` varchar(20) DEFAULT NULL,
  `foto_perfil` longblob DEFAULT '0',
  `telefone` varchar(14) DEFAULT NULL,
  `disciplina` varchar(2) DEFAULT NULL,
  `UF` char(2) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `usuario` (`cod_usuario`, `nome`, `sobrenome`, `e-mail`, `senha`, `instituicao`, `grau_ensino`, `foto_perfil`, `telefone`, `disciplina`, `UF`) VALUES
