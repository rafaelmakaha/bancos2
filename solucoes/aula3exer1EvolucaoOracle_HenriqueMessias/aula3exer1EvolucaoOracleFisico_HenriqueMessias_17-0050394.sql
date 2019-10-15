-- --------     << aula3exer1evolucao4 >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- date Criacao ...........: 07/10/2019
-- Autor(es) ..............: Henrique Martins de Messias
-- Banco de Dados .........: Oracle
-- Base de Dados(nome) ....: aula3exer1evolucao4
-- 
-- date Ultima Alteracao ..: 07/10/2019
--   => Criacao das tabelas
-- 
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 03 Usuarios
--         => 01 Visao 
--         => 03 Sequences
-- 
-- -----------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS aula3exer1evolucao4;

CREATE SEQUENCE SETOR_SEQ;
CREATE SEQUENCE ESPECIALIDADE_SEQ;
CREATE SEQUENCE PLANTONISTA_SEQ;

CREATE TABLE SETOR (
    idSetor NUMBER(4) NOT NULL,
    nomeSetor VARCHAR2(30) NOT NULL,
    CONSTRAINT SETOR_PK PRIMARY KEY(idSetor)
);

CREATE TABLE ESPECIALIDADE (
    idEspecialidade NUMBER(3) NOT NULL,
    tipoEspecialidade VARCHAR2(50) NOT NULL,
    CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY(idEspecialidade)
);

CREATE TABLE PLANTONISTA (
    matricula NUMBER(8) NOT NULL,
    nome VARCHAR2(40) NOT NULL,
    sexo CHAR(1) CHECK(sexo IN ('M','F')) NOT NULL,
    idEspecialidade NUMBER(3) DEFAULT 0,
    CONSTRAINT PLANTONISTA_ESPECIALIDADE_FK FOREIGN KEY(idEspecialidade) REFERENCES ESPECIALIDADE(idEspecialidade),
    CONSTRAINT PLANTONISTA_PK PRIMARY KEY(matricula)
);

CREATE TABLE alocado (
    idSetor NUMBER(4) NOT NULL,
    matricula NUMBER(8) NOT NULL,
    datahora TIMESTAMP NOT NULL,
    CONSTRAINT alocado_SETOR_FK FOREIGN KEY(idSetor) REFERENCES SETOR(idSetor),
    CONSTRAINT alocado_PLANTONISTA_FK FOREIGN KEY(matricula) REFERENCES PLANTONISTA(matricula),
    CONSTRAINT alocado_UK UNIQUE (matricula, datahora)
);
