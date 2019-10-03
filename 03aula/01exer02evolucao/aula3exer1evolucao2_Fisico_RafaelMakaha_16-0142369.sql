-- --------            << aula3exer1evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 02/10/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 02/09/2019                              --
--    + Criacao da base de dados                                     --
--    + Criacao das tabelas                                          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 5 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula3exer1evolucao2;

USE aula3exer1evolucao2;

CREATE TABLE PLANTONISTA (
    nomeCompleto VARCHAR(50) NOT NULL,
    matriculaFuncional INT(11) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    CONSTRAINT PLANTONISTA_PK PRIMARY KEY (matriculaFuncional)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE SETOR (
    codigoSetor INT(5) NOT NULL,
    nomeSetor VARCHAR(50) NOT NULL,
    CONSTRAINT SETOR_PK PRIMARY KEY (codigoSetor)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE ESPECIALIDADE (
    codigoEspecialidade INT(5) NOT NULL,
    nomeEspecialidade VARCHAR(50) NOT NULL,
    CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY (codigoEspecialidade)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE possui (
    matriculaFuncional INT(11) NOT NULL,
    codigoEspecialidade INT(5) NOT NULL,
    CONSTRAINT possui_PLANTONISTA_FK FOREIGN KEY (matriculaFuncional) REFERENCES PLANTONISTA (matriculaFuncional) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT possui_ESPECIALIDADE_FK FOREIGN KEY (codigoEspecialidade) REFERENCES ESPECIALIDADE (codigoEspecialidade) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE trabalha (
    horarioInicio TIMESTAMP NOT NULL,
    horarioFim TIMESTAMP NOT NULL,
    matriculaFuncional INT(11) NOT NULL,
    codigoSetor INT(5) NOT NULL,
    CONSTRAINT FK_trabalha_PLANTONISTA FOREIGN KEY (matriculaFuncional) REFERENCES PLANTONISTA (matriculaFuncional),
    CONSTRAINT FK_trabalha_SETOR FOREIGN KEY (codigoSetor) REFERENCES SETOR (codigoSetor)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;