-- --------     << rafaelferreiraP1 >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 17/10/2019
-- Autor(es) ..............: RafaelMakaha
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: rafaelferreiraP1
--
-- Data Ultima Alteracao ..: 17/10/2019
--   => Criacao de nova tabela
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS rafaelferreiraP1;

USE rafaelferreiraP1;

CREATE TABLE DISCIPLINA (
    idDisciplina int(8) NOT NULL AUTO_INCREMENT,
    periodo ENUM('M','V','N') NOT NULL,
    sigla VARCHAR(3) NOT NULL,
    quantidadeCreditos INT(3) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    CONSTRAINT PK_DISCIPLINA PRIMARY KEY (idDisciplina)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PROFESSOR (
    matriculaFuncional INT(8) NOT NULL AUTO_INCREMENT,
    primeiroNome VARCHAR(50) NOT NULL,
    ultimoNome VARCHAR(50) NOT NULL,
    dataNascimento DATETIME NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    CONSTRAINT PK_PROFESSOR PRIMARY KEY (matriculaFuncional)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE email (
    matriculaFuncional INT(8) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT PK_email PRIMARY KEY (matriculaFuncional,email),
    CONSTRAINT FK_email_PROFESSOT FOREIGN KEY (matriculaFuncional) REFERENCES PROFESSOR(matriculaFuncional) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB;

CREATE TABLE requer (
    idDisciplina int(8) NOT NULL,
    idDisciplinaPreRquisito int(8) NOT NULL,
    CONSTRAINT FK_requer_DISCIPLINA FOREIGN KEY (idDisciplina) REFERENCES DISCIPLINA(idDisciplina) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_requer_DISCIPLINAPRE FOREIGN KEY (idDisciplinaPreRquisito) REFERENCES DISCIPLINA(idDisciplina) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB;

CREATE TABLE leciona (
    idDisciplina int(8) NOT NULL,
    matriculaFuncional INT(8) NOT NULL,
    CONSTRAINT FK_leciona_DISCIPLINA FOREIGN KEY (idDisciplina) REFERENCES DISCIPLINA(idDisciplina) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_leciona_professor FOREIGN KEY (matriculaFuncional) REFERENCES PROFESSOR(matriculaFuncional) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB;
