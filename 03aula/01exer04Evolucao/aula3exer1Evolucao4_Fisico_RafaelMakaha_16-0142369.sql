-- --------     << aula3exer1evolucao4 >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- date Criacao ...........: 07/10/2019
-- Autor(es) ..............: Rafael Makaha Gomes Ferreira
-- Banco de Dados .........: mysql
-- Base de Dados(nome) ....: aula3exer1evolucao4
-- 
-- date Ultima Alteracao ..: 14/10/2019
--   => Criacao das tabelas e ajustes na documentacao dos scritps
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 01 Visao 
--         => 03 Sequences
-- 
-- -----------------------------------------------------------------

CREATE DATABASE aula3exer1evolucao4;

USE aula3exer1evolucao4;

 -- TABELAS
CREATE TABLE SETOR (
    idSetor INT(4) NOT NULL AUTO_INCREMENT,
    nomeSetor VARCHAR(30) NOT NULL,
    CONSTRAINT SETOR_PK PRIMARY KEY(idSetor)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ESPECIALIDADE (
    idEspecialidade INT(3) NOT NULL AUTO_INCREMENT,
    tipoEspecialidade VARCHAR(50) NOT NULL,
    CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY(idEspecialidade)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PLANTONISTA (
    matricula INT(8) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    CONSTRAINT PLANTONISTA_PK PRIMARY KEY(matricula)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE alocado (
    idSetor INT(4) NOT NULL,
    matricula INT(8) NOT NULL,
    datahora TIMESTAMP NOT NULL,
    CONSTRAINT alocado_SETOR_FK FOREIGN KEY(idSetor) REFERENCES SETOR(idSetor),
    CONSTRAINT alocado_PLANTONISTA_FK FOREIGN KEY(matricula) REFERENCES PLANTONISTA(matricula),
    CONSTRAINT alocado_UK UNIQUE (matricula, datahora)
)ENGINE = InnoDB;

CREATE TABLE possui (
    matricula INT(8) NOT NULL,
    idEspecialidade INT(3) NOT NULL
    CONSTRAINT FK_possui_PLANTONISTA FOREIGN KEY PLANTONISTA (matricula) REFERENCES PLANTONISTA (matricula),
    CONSTRAINT FK_possui_ESPECIALIDADE FOREIGN KEY ESPECIALIDADE (idEspecialidade) REFERENCES ESPECIALIDADE (idEspecialidade),
)ENGINE = InnoDB;