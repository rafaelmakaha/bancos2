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
    matriculaFuncional bigint(10) not null,
    nomeCompleto varchar(120) not null,
    sexo enum('M', 'F') not null,
    constraint PLANTONISTA_PK primary key (matriculaFuncional)
)engine=InnoDb;

CREATE TABLE SETOR (
    codigoSetor bigint(10) not null,
    nomeSetor varchar(30) not null,
    constraint SETOR_PK primary key (codigoSetor)
)engine=InnoDb;

CREATE TABLE ESPECIALIDADE (
    codigo bigint(10) not null,
    nomeEspecialidade varchar(30) not null,
    constraint ESPECIALIDADE_PK primary key (codigo)
)engine=InnoDb;

CREATE TABLE possui (
    matriculaFuncional bigint(10) not null,
    codigo bigint(10) not null,
    CONSTRAINT possui_PK PRIMARY KEY (matriculaFuncional, codigo),
    CONSTRAINT possui_PLANTONISTA_FK foreign key (matriculaFuncional) references PLANTONISTA(matriculaFuncional),
    CONSTRAINT possui_ESPECIALIDADE_FK foreign key (codigo) references ESPECIALIDADE(codigo)
)engine=InnoDb;

CREATE TABLE atende (
    codigoSetor bigint(10) not null,
    matriculaFuncional bigint(10) not null,
    dtHora datetime not null,
    constraint atende_SETOR_FK foreign key (codigoSetor) references SETOR(codigoSetor),
    constraint atende_PLANTONISTA_FK foreign key (matriculaFuncional) references PLANTONISTA(matriculaFuncional),
    constraint atende_UK UNIQUE (dtHora, codigoSetor, matriculaFuncional)
)engine=InnoDB;
 