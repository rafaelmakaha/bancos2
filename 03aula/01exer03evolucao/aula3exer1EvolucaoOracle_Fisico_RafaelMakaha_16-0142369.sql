-- --------            << aula3exer1Evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves 			 --
-- 							Eduardo Júnio Veloso Rodrigues
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1Evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 02/10/2019                              --
--    + Criacao da base de dados                                     --
--    + Criacao das tabelas                                          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 3 Usuarios						                                 --
--         => 5 Tabelas                                              --
--         => 1 View                                                      --
-- ----------------------------------------------------------------- --

CREATE DATABASE IF NOT EXISTS aula3exer1Evolucao2;

USE aula3exer1Evolucao2;

CREATE TABLE PLANTONISTA (
    matriculaFuncional NUMBER(10) not null,
    nomeCompleto VARCHAR(120) not null,
    sexo VARCHAR(1) not null,
    constraint PLANTONISTA_PK primary key (matriculaFuncional)
);

CREATE TABLE SETOR (
    codigoSetor NUMBER(10) not null,
    nomeSetor VARCHAR(30) not null,
    constraint SETOR_PK primary key (codigoSetor)
);

CREATE TABLE ESPECIALIDADE (
    codigo NUMBER(10) not null,
    nomeEspecialidade VARCHAR(30) not null,
    constraint ESPECIALIDADE_PK primary key (codigo)
);

CREATE TABLE possui (
    matriculaFuncional NUMBER(10) not null,
    codigo NUMBER(10) not null,
    CONSTRAINT possui_PK PRIMARY KEY (matriculaFuncional, codigo),
    CONSTRAINT possui_PLANTONISTA_FK foreign key (matriculaFuncional) references PLANTONISTA(matriculaFuncional),
    CONSTRAINT possui_ESPECIALIDADE_FK foreign key (codigo) references ESPECIALIDADE(codigo)
);

CREATE TABLE atende (
    codigoSetor NUMBER(10) not null,
    matriculaFuncional NUMBER(10) not null,
    dtHora DATE not null,
    constraint atende_SETOR_FK foreign key (codigoSetor) references SETOR(codigoSetor),
    constraint atende_PLANTONISTA_FK foreign key (matriculaFuncional) references PLANTONISTA(matriculaFuncional),
    constraint atende_UK UNIQUE (dtHora, codigoSetor, matriculaFuncional)
);
 