-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.26 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para bd_escola
CREATE DATABASE IF NOT EXISTS `bd_escola` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_escola`;

-- Copiando estrutura para tabela bd_escola.tb01_aluno
CREATE TABLE IF NOT EXISTS `tb01_aluno` (
  `tb01_cod_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `tb01_nome` varchar(50) NOT NULL DEFAULT '0',
  `tb01_email` varchar(100) NOT NULL DEFAULT '0',
  `tb01_senha` varchar(20) NOT NULL DEFAULT '0',
  `tb01_cod_curso` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tb01_cod_aluno`),
  KEY `FK_tb01_aluno_tb02_curso` (`tb01_cod_curso`),
  CONSTRAINT `FK_tb01_aluno_tb02_curso` FOREIGN KEY (`tb01_cod_curso`) REFERENCES `tb02_curso` (`tb02_cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_escola.tb01_aluno: ~0 rows (aproximadamente)
DELETE FROM `tb01_aluno`;
/*!40000 ALTER TABLE `tb01_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb01_aluno` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_escola.tb02_curso
CREATE TABLE IF NOT EXISTS `tb02_curso` (
  `tb02_cod_curso` int(11) NOT NULL AUTO_INCREMENT,
  `tb02_descricao` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tb02_cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_escola.tb02_curso: ~0 rows (aproximadamente)
DELETE FROM `tb02_curso`;
/*!40000 ALTER TABLE `tb02_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb02_curso` ENABLE KEYS */;

-- Copiando estrutura para tabela bd_escola.tb03_escola
CREATE TABLE IF NOT EXISTS `tb03_escola` (
  `tb03_cod_escola` int(11) NOT NULL AUTO_INCREMENT,
  `tb03_cod_aluno` int(11) NOT NULL DEFAULT '0',
  `tb03_cod_curso` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tb03_cod_escola`),
  KEY `FK_tb03_escola_tb01_aluno` (`tb03_cod_aluno`),
  KEY `FK_tb03_escola_tb02_curso` (`tb03_cod_curso`),
  CONSTRAINT `FK_tb03_escola_tb01_aluno` FOREIGN KEY (`tb03_cod_aluno`) REFERENCES `tb01_aluno` (`tb01_cod_aluno`),
  CONSTRAINT `FK_tb03_escola_tb02_curso` FOREIGN KEY (`tb03_cod_curso`) REFERENCES `tb02_curso` (`tb02_cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_escola.tb03_escola: ~0 rows (aproximadamente)
DELETE FROM `tb03_escola`;
/*!40000 ALTER TABLE `tb03_escola` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb03_escola` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
