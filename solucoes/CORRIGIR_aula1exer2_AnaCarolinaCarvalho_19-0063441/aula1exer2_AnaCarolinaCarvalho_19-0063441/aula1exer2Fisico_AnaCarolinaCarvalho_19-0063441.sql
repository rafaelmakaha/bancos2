-- --------     << Aula 1 Exercicio 2 >>     ---------------------
--																--
--                    SCRIPT DE CRIACAO (DDL)					--
--																--
-- Data Criacao ...........: 18/08/2019							--
-- Autor(es) ..............: Ana Carolina Carvalho da Silva		--
-- Banco de Dados .........: MySQL								--
-- Banco de Dados(nome) ...: aula1exer2							--
--																--
-- Data Ultima Alteracao ..: 19/08/2019							--
--   => Criacao do banco de dados								--
-- 																--
-- PROJETO => 01 Base de Dados									--
--         => 06 Tabelas										--
--																--
-- ---------------------------------------------------------------

create database if not exists aula1exer2;

use aula1exer2;

CREATE TABLE IF NOT EXISTS GERENTE (
    formacao CHAR(15) NOT NULL,
    email CHAR(20) NOT NULL,
    nome CHAR(30) NOT NULL,
    cpf BIGINT NOT NULL,
    senha CHAR(15) NOT NULL,
    CONSTRAINT GERENTE_PK PRIMARY KEY(cpf)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS EMPREGADO (
    matricula BIGINT NOT NULL,
    rua CHAR(25) NOT NULL,
    complemento VARCHAR NOT NULL,
	cidade VARCHAR NOT NULL,
    nome CHAR(30) NOT NULL,
    cpf BIGINT NOT NULL,
    senha CHAR(15) NOT NULL,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY(matricula)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS PRODUTO (
    codigo INT NOT NULL,
    precoUnitario FLOAT NOT NULL,
    CONSTRAINT PRODUTO_PK PRIMARY KEY(codigo)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS telefone (
    telefone BIGINT NOT NULL,
    matricula BIGINT NOT NULL,
    CONSTRAINT FK_telefone_EMPREGADO FOREIGN KEY(matricula) references EMPREGADO(matricula)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS supervisiona (
    CPFgerente BIGINT NOT NULL,
    matricula BIGINT NOT NULL,
    CONSTRAINT FK_gerencia_GERENTE FOREIGN KEY (CPFGerente) REFERENCES GERENTE (CPF),
    CONSTRAINT FK_gerencia_EMPREGADO FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS vende (
    matricula BIGINT NOT NULL,
    codigo INT NOT NULL,
    dataVenda DATE NOT NULL,
    precoTotal FLOAT NOT NULL,
    qtdProduto INT NOT NULL,
    CONSTRAINT vende_EMPREGADO_FK FOREIGN KEY(matricula) references EMPREGADO(matricula),
    CONSTRAINT vende_PRODUTO_FK FOREIGN KEY(codigo) references PRODUTO(codigo)
)ENGINE=InnoDB;