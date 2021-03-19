-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.5.8-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para requestion
DROP DATABASE IF EXISTS `requestion`;
CREATE DATABASE IF NOT EXISTS `requestion` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `requestion`;

-- Copiando estrutura para tabela requestion.alternativa
DROP TABLE IF EXISTS `alternativa`;
CREATE TABLE IF NOT EXISTS `alternativa` (
  `cod_alternativa` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(1000) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `cod_questao` int(11) NOT NULL,
  PRIMARY KEY (`cod_alternativa`),
  KEY `fk_questao` (`cod_questao`),
  CONSTRAINT `fk_questao` FOREIGN KEY (`cod_questao`) REFERENCES `questao` (`cod_questao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.alternativa: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `alternativa` DISABLE KEYS */;
INSERT INTO `alternativa` (`cod_alternativa`, `texto`, `status`, `cod_questao`) VALUES
	(1, 'Verdadeiro', b'0', 7),
	(2, 'Falso', b'1', 7),
	(3, 'a. registro_aluno, altura, idade, nome', b'0', 8),
	(4, 'b. nome, idade, registro_aluno, altura', b'0', 8),
	(5, 'c. nome, idade, altura', b'1', 8),
	(6, 'd. registro_professor, código_curso, nome, idade', b'0', 8),
	(7, 'e. nome, altura, idade, registro_aluno', b'0', 8),
	(8, 'a. ser precisa, única e não-ambígua', b'1', 9),
	(9, 'b. ter no máximo 2 significados', b'0', 9),
	(10, 'c. contém definições embutidas do tipo UsuárioSistema', b'0', 9),
	(11, 'd. ser estabelecida no plural', b'0', 9),
	(12, 'a. data de matricula', b'0', 10),
	(13, 'b. idade', b'0', 10),
	(14, 'c. registro do aluno', b'1', 10),
	(15, 'd. altura', b'0', 10),
	(16, 'e. nome', b'0', 10);
/*!40000 ALTER TABLE `alternativa` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.anotacao
DROP TABLE IF EXISTS `anotacao`;
CREATE TABLE IF NOT EXISTS `anotacao` (
  `cod_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) NOT NULL,
  `data_alteracao` date NOT NULL,
  `texto` varchar(255) NOT NULL,
  `cod_usuario` varchar(11) NOT NULL,
  PRIMARY KEY (`cod_anotacao`),
  KEY `fk_usuario_anotacao` (`cod_usuario`),
  CONSTRAINT `fk_usuario_anotacao` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.anotacao: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `anotacao` DISABLE KEYS */;
INSERT INTO `anotacao` (`cod_anotacao`, `titulo`, `data_alteracao`, `texto`, `cod_usuario`) VALUES
	(1, 'Não esquecer: Prova para turma 231', '2021-03-02', 'Não esquecer de desenvolver as questões e os modelos de prova do assunto Projeto Lógico para a turma 231 do curso de Análise de Sistemas', 'RJ123456789'),
	(2, 'Lembrete: Atividade para nota 10/04/2020', '2020-04-05', 'Desenvolver atividade para nota sobre Romantismo para as turmas da faculdade de Literatura', 'SP11254400X');
/*!40000 ALTER TABLE `anotacao` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.disciplina
DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE IF NOT EXISTS `disciplina` (
  `cod_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.disciplina: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` (`cod_disciplina`, `nome`, `descricao`) VALUES
	(1, 'Matemática', NULL),
	(2, 'Português', NULL),
	(3, 'Inglês', NULL),
	(4, 'História', NULL),
	(5, 'Geografia', NULL),
	(6, 'Filosofia', NULL),
	(7, 'Sociologia', NULL),
	(8, 'Biologia', NULL),
	(9, 'Física', NULL),
	(10, 'Química', NULL),
	(11, 'Literatura', NULL),
	(12, 'Banco de Dados', NULL);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.prova
DROP TABLE IF EXISTS `prova`;
CREATE TABLE IF NOT EXISTS `prova` (
  `cod_prova` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `quant_questoes` int(7) DEFAULT NULL,
  `data_alteração` date DEFAULT NULL,
  `cod_usuario` varchar(11) NOT NULL,
  PRIMARY KEY (`cod_prova`),
  KEY `fk_usuario_prova` (`cod_usuario`),
  CONSTRAINT `fk_usuario_prova` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.prova: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `prova` DISABLE KEYS */;
INSERT INTO `prova` (`cod_prova`, `nome`, `quant_questoes`, `data_alteração`, `cod_usuario`) VALUES
	(1, 'P1- BDD', 6, '2021-03-02', 'RJ123456789');
/*!40000 ALTER TABLE `prova` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.prova_questao
DROP TABLE IF EXISTS `prova_questao`;
CREATE TABLE IF NOT EXISTS `prova_questao` (
  `cod_prova` int(11) NOT NULL,
  `cod_questao` int(11) NOT NULL,
  KEY `fk_prova_questao1` (`cod_prova`),
  KEY `fk_prova_questao` (`cod_questao`),
  CONSTRAINT `fk_prova_questao` FOREIGN KEY (`cod_questao`) REFERENCES `questao` (`cod_questao`),
  CONSTRAINT `fk_prova_questao1` FOREIGN KEY (`cod_prova`) REFERENCES `prova` (`cod_prova`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.prova_questao: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `prova_questao` DISABLE KEYS */;
INSERT INTO `prova_questao` (`cod_prova`, `cod_questao`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 9),
	(1, 8),
	(1, 10);
/*!40000 ALTER TABLE `prova_questao` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.questao
DROP TABLE IF EXISTS `questao`;
CREATE TABLE IF NOT EXISTS `questao` (
  `cod_questao` int(11) NOT NULL AUTO_INCREMENT,
  `nome_questão` varchar(30) NOT NULL,
  `enunciado` varchar(200) NOT NULL,
  `resposta` varchar(1000) DEFAULT NULL,
  `tipo` varchar(50) NOT NULL,
  `privacidade` varchar(200) NOT NULL,
  `data_alteração` date NOT NULL,
  `cod_usuario` varchar(11) NOT NULL,
  PRIMARY KEY (`cod_questao`),
  KEY `fk_usuario_questao` (`cod_usuario`),
  CONSTRAINT `fk_usuario_questao` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.questao: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `questao` DISABLE KEYS */;
INSERT INTO `questao` (`cod_questao`, `nome_questão`, `enunciado`, `resposta`, `tipo`, `privacidade`, `data_alteração`, `cod_usuario`) VALUES
	(1, 'Questão 1_ P1', 'O que é SQL', 'Linguagem de Consulta Estruturada ou SQL, é a linguagem de pesquisa declarativa padrão para banco de dados relacional.', 'Discursiva', 'Público', '2016-01-01', 'RJ123456789'),
	(2, 'Questão 2_ P1', 'Qual a finalidade da linguagem SQL?', 'SQL é uma linguagem usada para executar comando em bancos de dados relacionais, isto é, baseado em tabelas.', 'Discursiva', 'Público', '2013-01-01', 'RJ123456789'),
	(3, 'Questão 3_ P1', 'Qual a finalidade da linguagem DML?', 'DML ou linguagem de manipulação de dados (Data Manipulation Language) é uma linguagem de manipulação de dados (Data Manipulation Language, DML) é a linguagem que permite aos usuários fazer o acesso a os dados ou manipulá-los, conforme modelo de dados apropriado.', 'Discursiva', 'Privado', '2014-01-01', 'RJ123456789'),
	(4, 'Questão 4_ P1', 'Qual a finalidade da linguagem DDL?', 'DML ou linguagem de definição de dados (Data Definition Language) é uma linguagem de computador usada para a definição de estruturas de dados.', 'Discursiva', 'Privado', '2015-01-01', 'RJ123456789'),
	(5, 'Questão 5_ P1', 'Qual é o comando utilizado para criar tabela?', 'CREATE TABLE é o comando para criação da tabela e deve ser seguida pelo nome que daremos à tabela.', 'Discursiva', 'Público', '2019-01-01', 'RJ123456789'),
	(6, 'Questão 6_ P1', 'Com base no material, o que é um relacionamento entre entidades?', 'Relacionamento é uma associação entre entidades que representam situações que acontecem. Ex: Uma entidade Aluno está relacionada com a entidade Disciplina, pois o aluno cursa disciplina. É expresso por uma construção verbal. ', 'Discursiva', 'Privado', '2021-03-08', 'RJ123456789'),
	(7, 'Questão 7_ P1', 'Nome do aluno pode ser considerado um atributos referencial?', '', 'Objetiva', 'Público', '2020-04-14', 'RJ123456789'),
	(8, 'Questão 8_ P1', 'Qual alternativa apresenta apenas atributos descritivos', '', 'Objetiva', 'Público', '2018-12-31', 'RJ123456789'),
	(9, 'Questão 9_ P1', 'Por definição uma entidade deve ser:', '', 'Objetiva', 'Privado', '2011-02-09', 'RJ123456789'),
	(10, 'Questão 10_ P1', 'Quais desses atributos da entidade Aluno pode ser usado como atributo CHAVE', '', 'Objetiva', 'Privado', '2010-10-12', 'RJ123456789');
/*!40000 ALTER TABLE `questao` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.questao_tema
DROP TABLE IF EXISTS `questao_tema`;
CREATE TABLE IF NOT EXISTS `questao_tema` (
  `cod_questao` int(11) NOT NULL,
  `cod_tema` int(11) NOT NULL,
  KEY `fk_questao_tema1` (`cod_questao`) USING BTREE,
  KEY `fk_questao_tema` (`cod_tema`) USING BTREE,
  CONSTRAINT `fk_questao_tema` FOREIGN KEY (`cod_tema`) REFERENCES `tema` (`cod_tema`),
  CONSTRAINT `fk_questao_tema1` FOREIGN KEY (`cod_questao`) REFERENCES `questao` (`cod_questao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela requestion.questao_tema: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `questao_tema` DISABLE KEYS */;
INSERT INTO `questao_tema` (`cod_questao`, `cod_tema`) VALUES
	(1, 16),
	(2, 16),
	(3, 16),
	(4, 16),
	(5, 16),
	(6, 18),
	(7, 18),
	(8, 18),
	(9, 18),
	(10, 18);
/*!40000 ALTER TABLE `questao_tema` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.tema
DROP TABLE IF EXISTS `tema`;
CREATE TABLE IF NOT EXISTS `tema` (
  `cod_tema` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.tema: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` (`cod_tema`, `nome`, `descricao`) VALUES
	(1, 'Grandezas proporcionais.', NULL),
	(2, 'Estatística', NULL),
	(3, 'Aritmética', NULL),
	(4, 'Geometria Plana', NULL),
	(5, 'Segunda Guerra Mundial', NULL),
	(6, 'Era Vargas', NULL),
	(7, 'Meio Ambiente', NULL),
	(8, 'Ecologia', NULL),
	(9, 'Hidrografia', NULL),
	(10, 'Romantismo', NULL),
	(11, 'Barroco', NULL),
	(12, 'Movimento', NULL),
	(13, 'Mecânica', NULL),
	(14, 'Modelo conceitual', NULL),
	(15, 'Modelo lógico', NULL),
	(16, 'Modelo Físico', NULL),
	(17, 'Linguagem SQL', NULL),
	(18, 'Fundamentos de Banco de Dados', NULL);
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.tema_disciplina
DROP TABLE IF EXISTS `tema_disciplina`;
CREATE TABLE IF NOT EXISTS `tema_disciplina` (
  `cod_tema` int(11) NOT NULL,
  `cod_disciplina` int(11) NOT NULL,
  KEY `fk_prova_questao1` (`cod_tema`) USING BTREE,
  KEY `fk_prova_questao` (`cod_disciplina`) USING BTREE,
  CONSTRAINT `fk_temadisciplina` FOREIGN KEY (`cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`),
  CONSTRAINT `fk_temadisciplina1` FOREIGN KEY (`cod_tema`) REFERENCES `tema` (`cod_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela requestion.tema_disciplina: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `tema_disciplina` DISABLE KEYS */;
INSERT INTO `tema_disciplina` (`cod_tema`, `cod_disciplina`) VALUES
	(11, 11),
	(3, 1),
	(2, 1),
	(6, 4),
	(8, 8),
	(5, 4),
	(10, 11),
	(14, 12),
	(16, 12),
	(15, 12),
	(18, 12);
/*!40000 ALTER TABLE `tema_disciplina` ENABLE KEYS */;

-- Copiando estrutura para tabela requestion.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `cod_usuario` varchar(11) NOT NULL DEFAULT 'SP324400X',
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `instituicao` varchar(200) NOT NULL,
  `grau_ensino` varchar(20) NOT NULL,
  `foto_perfil` longblob DEFAULT '0',
  `telefone` varchar(14) DEFAULT NULL,
  `disciplina` varchar(30) DEFAULT NULL,
  `UF` char(2) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela requestion.usuario: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`cod_usuario`, `nome`, `sobrenome`, `email`, `senha`, `instituicao`, `grau_ensino`, `foto_perfil`, `telefone`, `disciplina`, `UF`) VALUES
	('RJ123456789', 'Danilo', 'Viana Rodrigues', 'prof.daniloviana_puc-rio@hotmail.com.', 'Alalal22121', 'PUC-Rio', 'Superior', _binary 0x30, NULL, NULL, 'RJ'),
	('RJ2304015X', 'Patrícia', 'Galindo Malta', 'patricia_galindomalta@hotmail.com.', 'Prof1212', 'UFRJ', 'Superior', _binary 0x30, NULL, NULL, 'RJ'),
	('SP11254400X', 'Jaqueline', 'Souza Gravatto', 'profjaquelinegravatto@outlook.com', 'Jaque_ifsp2012', 'Instituto Federal de São Paulo (IFSP)', 'Médio', _binary 0x30, NULL, NULL, 'SP'),
	('SP324400X', 'João', 'Roberto da Silva', 'joaorobertosilva@gmail.com', 'd2m3a1234', 'Instituto Federal de São Paulo (IFSP)', 'Médio', _binary 0x30, NULL, NULL, 'SP');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
