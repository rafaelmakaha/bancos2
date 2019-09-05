-- --------               << aula4extra1 >>              ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 04/09/2019                               --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira             --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula4extra1                               --
--                                                                   --
-- Data Ultima Alteracao ..: 04/09/2019                              --
--                                                                   --
--                                                                   --
-- PROJETO => SCRIPT DE CRIACAO DE TABELAS                           --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula4extra1;

USE aula4extra1;

CREATE TABLE ESTADO (
    sigla varchar(2) NOT NULL,
    nome varchar(20) UNIQUE,
    CONSTRAINT PK_ESTADO PRIMARY KEY (sigla)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE CIDADE (
    codigo int(5) NOT NULL,
    nome varchar(20) NOT NULL UNIQUE,
    sigla varchar(2) NOT NULL,
    habitantes int,
    CONSTRAINT PK_CIDADE PRIMARY KEY (codigo),
    CONSTRAINT FK_CIDADE_ESTADO FOREIGN KEY (sigla) REFERENCES ESTADO (sigla)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;