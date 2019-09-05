-- --------     << aula4extra1 >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 04/09/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ....: aula4extra1
-- 
-- Data Ultima Alteracao ..: 04/09/2019
--   => Adiciona script de criacao da base e tabelas
-- 
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
-- 
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula4extra1;

USE aula4extra1;

CREATE TABLE ESTADO (
    sigla VARCHAR(2) NOT NULL,
    nome VARCHAR(20) NOT NULL,
CONSTRAINT ESTADO_PK PRIMARY KEY (sigla)
) ENGINE=InnoDB;

CREATE TABLE CIDADE (
    codigo INT(5) NOT NULL,
	nome VARCHAR(50) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    habitantes INT NOT NULL,
CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
CONSTRAINT CIDADE_ESTADO_FK FOREIGN KEY (sigla)
	REFERENCES ESTADO (sigla),
CONSTRAINT CIDADE_UK UNIQUE (nome, sigla)
) ENGINE=InnoDB;
