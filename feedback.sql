SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Base de dados: "feedback"

-- --------------------------------------------------------

-- Tabela "administrador"

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `adminid` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dados inseridos na tabela "administrador"

INSERT INTO `administrador` (`adminid`, `nome`, `senha`) VALUES
('admin', 'Admin User', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

-- Tabela "departamentos", que não foi modificada durante os semestres

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `cod` VARCHAR(255) , 
  `departamento` VARCHAR(255)) 
  ENGINE = MyISAM DEFAULT CHARSET=latin1;

-- Para inserir dados na tabela "departamentos", importar no 
-- phpMyAdmin os arquivos "departamentos_2022-1.csv", "departamentos_2022-2.csv" e "departamentos_2023-1.csv".


-- --------------------------------------------------------

-- Tabela "disciplinas"

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `cod` varchar(255),
  `nome` varchar(255),
  `cod_depto` int(255)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Para inserir dados na tabela "disciplinas", importar no 
-- phpMyAdmin os arquivos "disciplinas_2022-1.csv", "disciplinas_2022-2.csv" e "disciplinas_2023-1.csv"

-- --------------------------------------------------------

-- Table structure for table `turmas`


DROP TABLE IF EXISTS `turmas`;
CREATE TABLE IF NOT EXISTS `turmas` (
  `turma_no` varchar(255) NOT NULL,
  `semestre` varchar(255) NOT NULL,
  `nome_professor` varchar(255) NOT NULL,
  `horario` varchar(255),
  `vagas_ocupadas` int(255),
  `total_vagas` int(255),
  `local` varchar(255),
  `cod_disciplina` varchar(255),
  `cod_departamento` int(255)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Para inserir dados na tabela "turmas", importe os dados dos arquivos
-- "turmas_2022-1.csv", "turmas_2022-2.csv" e "turmas_2023-1.csv" no phpMyAdmin

-- --------------------------------------------------------

-- Tabela "perguntas"

DROP TABLE IF EXISTS `perguntas`;
CREATE TABLE IF NOT EXISTS `perguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `q1` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dados inseridos na tabela "perguntas"

INSERT INTO `perguntas` (`id`, `q1`) VALUES
(1, 'De 1 (muito ruim) a 5 (excelente), que nota você atribui a este professor?');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
