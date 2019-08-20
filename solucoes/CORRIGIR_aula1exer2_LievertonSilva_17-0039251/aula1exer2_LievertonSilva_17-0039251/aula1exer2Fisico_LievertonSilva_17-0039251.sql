-- --------     << VENDAS >>     ------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 19/08/2019
-- Autor(es) ..............: Lieverton Silva
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ....: aula1exer2
-- 
-- Data Ultima Alteracao ..: 19/08/2019
--   => Criacao das tabelas 
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2;

USE aula1exer2;

CREATE TABLE PESSOA (
    cpf BIGINT(11) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    senha VARCHAR(20) NOT NULL,
CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE=InnoDB;

CREATE TABLE GERENTE (
    email VARCHAR(50) NOT NULL,
	formacao VARCHAR(50) NOT NULL,
    cpf BIGINT(11) NOT NULL,
CONSTRAINT GERENTE_PK PRIMARY KEY (cpf),
CONSTRAINT GERENTE_PESSOA_fk FOREIGN KEY (cpf)
	REFERENCES PESSOA (cpf)
) ENGINE=InnoDB;

CREATE TABLE EMPREGADO (
    matricula INT NOT NULL,
    cpf BIGINT(11) NOT NULL UNIQUE,
    numero INT NOT NULL,
    logradouro VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    cep INT(8) NOT NULL,
    complemento VARCHAR(50),
CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf)
	REFERENCES PESSOA (cpf)
) ENGINE=InnoDB;

CREATE TABLE telefone (
    matricula INT NOT NULL,
    telefone BIGINT(14) NOT NULL,
CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula)
	REFERENCES EMPREGADO (matricula)
) ENGINE=InnoDB;

CREATE TABLE supervisiona (
    cpf BIGINT(11) NOT NULL,
    matricula INT NOT NULL,
CONSTRAINT supervisiona_PK PRIMARY KEY (cpf, matricula),
CONSTRAINT supervisiona_GERENTE_FK FOREIGN KEY (cpf)
	REFERENCES GERENTE (cpf),
CONSTRAINT supervisiona_EMPREGADO_FK FOREIGN KEY (matricula)
	REFERENCES EMPREGADO (matricula)
) ENGINE=InnoDB;

CREATE TABLE AREA (
    idArea INT NOT NULL AUTO_INCREMENT,
    nomeArea VARCHAR(50) NOT NULL,
CONSTRAINT AREA_PK PRIMARY KEY (idArea)
) ENGINE=InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO (
    codigo INT NOT NULL,
    idArea INT NOT NULL,
    nomeProduto VARCHAR(50) NOT NULL,
CONSTRAINT PRODUTO_PK PRIMARY KEY (codigo),
CONSTRAINT PRODUTO_AREA_FK FOREIGN KEY (idArea)
	REFERENCES AREA (idArea)
) ENGINE=InnoDB;

CREATE TABLE vende (
	data TIMESTAMP NOT NULL,
    codigo INT NOT NULL,
    matricula INT NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(9, 2) NOT NULL,
CONSTRAINT VENDA_PK PRIMARY KEY (data, codigo, matricula),
CONSTRAINT VENDA_PRODUTO_FK FOREIGN KEY (codigo)
	REFERENCES PRODUTO (codigo),
CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
	REFERENCES EMPREGADO (matricula)
) ENGINE=InnoDB;
