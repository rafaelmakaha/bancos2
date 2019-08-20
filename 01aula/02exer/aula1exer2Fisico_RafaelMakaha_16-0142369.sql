-- --------               << aula1exer2 >>              ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 19/08/2019                               --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira             --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula1exer2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 19/08/2019                              --
--                                                                   --
--                                                                   --
-- PROJETO => SCRIPT DE CRIACAO DE TABELAS                           --
--                                                                   --
-- ----------------------------------------------------------------- --

CREATE DATABASE aula1exer2;

USE aula1exer2;

CREATE TABLE PESSOA (
    nome VARCHAR(50),
    senha VARCHAR(50),
    cpf BIGINT(11),
    CONSTRAINT PK_PESSOA PRIMARY KEY (cpf)
);

CREATE TABLE GERENTE (
    email VARCHAR(50),
    escolaridade ENUM('EF','EM','ES'),
    cpf BIGINT(11),
    CONSTRAINT PK_GERENTE PRIMARY KEY (cpf)
);


CREATE TABLE telefone (
    idTelefone BIGINT(9) NOT NULL,
    telefone BIGINT(11),
    CONSTRAINT PK_TELEFONE PRIMARY KEY (idTelefone)
);

CREATE TABLE endereco (
    idEndereco BIGINT(9) NOT NULL,
    estado VARCHAR(50),
    cidade VARCHAR(50),
    bairro VARCHAR(50),
    complemento VARCHAR(50),
    CONSTRAINT PK_ENDERECO PRIMARY KEY (idEndereco)
);

CREATE TABLE FUNCIONARIO (
    idTelefone BIGINT(9),
    matricula BIGINT(9),
    idEndereco BIGINT(9),
    cpf BIGINT(11),
    CONSTRAINT PK_FUNCIONARIO PRIMARY KEY (cpf),
    CONSTRAINT FK_FUNCIONARIO_telefone FOREIGN KEY (idTelefone) REFERENCES telefone (idTelefone),
    CONSTRAINT FK_FUNCIONARIO_endereco FOREIGN KEY (idEndereco) REFERENCES endereco (idEndereco)

);

CREATE TABLE VENDA (
    dataVenda TIMESTAMP,
    total DECIMAL(7,2),
    idVenda BIGINT(9),
    cpf BIGINT(11),
    CONSTRAINT PK_VENDA PRIMARY KEY (idVenda),
    CONSTRAINT FK_VENDA_FUNCIONARIO FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf)
);

CREATE TABLE PRODUTO (
    idProduto BIGINT(9),
    nome VARCHAR(50),
    valor DECIMAL(7,2),
    CONSTRAINT PK_PRODUTO PRIMARY KEY (idProduto)
);


CREATE TABLE supervisiona (
    cpfGerente BIGINT(11),
    cpfFuncionario BIGINT(11),
    CONSTRAINT FK_supervisiona_GERENTE FOREIGN KEY (cpfGerente) REFERENCES GERENTE (cpf),
    CONSTRAINT FK_supervisiona_FUNCIONARIO FOREIGN KEY (cpfFuncionario) REFERENCES FUNCIONARIO (cpf)
);

CREATE TABLE ITEM (
    idProduto BIGINT(9),
    idVenda BIGINT(9),
    quantidade INT(5),    
    CONSTRAINT FK_ITEM_PRODUTO FOREIGN KEY (idProduto) REFERENCES PRODUTO (idProduto),
    CONSTRAINT FK_VENDA_VENDA FOREIGN KEY (idVenda) REFERENCES VENDA (idVenda)
);
 