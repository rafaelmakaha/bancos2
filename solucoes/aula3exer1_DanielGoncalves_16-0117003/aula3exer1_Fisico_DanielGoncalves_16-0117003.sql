-- --------            << aula3exer1 >>                 ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1                               --
--                                                                   --
-- Data Ultima Alteracao ..: 27/09/2019                              --
--    + Criacao da base de dados                                     --
--    + Criacao das tabelas                                          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 6 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula3exer1;

USE aula3exer1;

CREATE TABLE PLANTONISTA (
    nomeCompleto VARCHAR(120) NOT NULL,
    matriculaFuncional BIGINT(10) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    CONSTRAINT PLANTONISTA_PK PRIMARY KEY (matriculaFuncional)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE SETOR (
    codigoSetor BIGINT(10) NOT NULL,
    nomeSetor VARCHAR(30) NOT NULL,
    CONSTRAINT SETOR_PK PRIMARY KEY (codigoSetor)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE ESPECIALIDADE (
    codigoEspecialidade BIGINT(10) NOT NULL,
    nomeEspecialidade VARCHAR(30) NOT NULL,
    CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY (codigoEspecialidade)
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE PLANTAO (
    idPlantao BIGINT(10) AUTO_INCREMENT NOT NULL,
    dthrPlantao DATE NOT NULL,
    codigoSetor BIGINT(10) NOT NULL,
    duracaoPlantao TIME NOT NULL,
    CONSTRAINT PLANTAO_PK PRIMARY KEY (idPlantao),
    CONSTRAINT PLANTAO_UC UNIQUE (dthrPlantao, idPlantao),
    CONSTRAINT PLANTAO_SETOR_FK FOREIGN KEY (codigoSetor) REFERENCES SETOR (codigoSetor) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB DEFAULT CHARSET = UTF8 AUTO_INCREMENT = 1;

CREATE TABLE possui (
    matriculaFuncional BIGINT(10) NOT NULL,
    codigoEspecialidade BIGINT(10) NOT NULL,
    CONSTRAINT possui_PLANTONISTA_FK FOREIGN KEY (matriculaFuncional) REFERENCES PLANTONISTA (matriculaFuncional) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT possui_ESPECIALIDADE_FK FOREIGN KEY (codigoEspecialidade) REFERENCES ESPECIALIDADE (codigoEspecialidade) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;

CREATE TABLE faz (
    dthrPlantao DATE NOT NULL,
    idPlantao BIGINT(10) NOT NULL,
    matriculaFuncional BIGINT(10) NOT NULL,
    CONSTRAINT faz_UC UNIQUE (dthrPlantao, matriculaFuncional),
    CONSTRAINT faz_PLANTAO_FK FOREIGN KEY (dthrPlantao, idPlantao) REFERENCES PLANTAO (dthrPlantao, idPlantao) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT faz_PLANTONISTA_FK FOREIGN KEY (matriculaFuncional) REFERENCES PLANTONISTA (matriculaFuncional) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB DEFAULT CHARSET = UTF8;