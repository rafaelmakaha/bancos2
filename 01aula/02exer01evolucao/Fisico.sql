/* L�gico_1: */

CREATE TABLE GERENTE (
    cpfGerente BIGINT(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    formacao VARCHAR(50) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    CONSTRAINT PK_GERENTE PRIMAR KEY (cpfGerente)
);

CREATE TABLE EMPREGADO (
    idTelefone BIGINT(11) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    complemento VARCHAR(50),
    logradouro VARCHAR(50),
    uf VARCHAR(2) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    cep BIGINT(8) NOT NULL,
    numero INT(5) NOT NULL,
    matricula BIGINT(11) NOT NULL,
    cpfEmpregado BIGINT(11) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    senha VARCHAR(2) NOT NULL,
    CONSTRAINT PK_EMPREGADO PRIMARY KEY (matricula, cpfEmpregado)
);

CREATE TABLE PRODUTO (
    codigo BIGINT(11) NOT NULL,
    nomeProduto VARCHAR(50) NOT NULL,
    idArea BIGINT(11) NOT NULL,
    CONSTRAINT PK_PRODUTO PRIMARY KEY (codigo),
    CONSTRAINT FK_PRODUTO_AREA FOREIGN KEY (idArea) REFERENCES AREA (idArea)
);

CREATE TABLE AREA (
    idArea BIGINT(11) NOT NULL,
    nomeArea VARCHAR(50) NOT NULL,
    CONSTRAINT PK_AERA PRIMARY KEY (idArea)
);

CREATE TABLE VENDA (
    idVenda BIGINT(11)  NOT NULL,
    valorTotal DECIMAL(7,2) NOT NULL,
    dataVenda TIMESTAMP  NOT NULL,
    matricula BIGINT(11) NOT NULL,
    cpfEmpregado BIGINT(11) NOT NULL
    CONSTRAINT PK_VENDA PRIMARY KEY (idVenda),
    CONSTRAINT FK_VENDA_EMPREGADO FOREIGN KEY (matricula,cpfEmpregado) REFERENCES EMPREGADO (matricula,cpfEmpregado)
);

CREATE TABLE telefone (
    idTelefone BIGINT(11) NOT NULL,
    telefone BIGINT(11) NOT NULL,
    CONSTRAINT PK_telefone PRIMARY KEY (idTelefone),
);

CREATE TABLE gerencia (
    cpfGerente BIGINT(11) NOT NULL,
    idArea BIGINT(11) NOT NULL,
    CONSTRAINT FK_gerencia_AREA FOREIGN KEY (idArea) REFERENCES AREA (idArea),
    CONSTRAINT FK_gerencia_GERENTE FOREIGN KEY (cpfGerente) REFERENCES GERENTE (cpfGerente)
);

CREATE TABLE compoe (
    idVenda BIGINT(11) NOT NULL,
    codigo BIGINT(11) NOT NULL,
    quantidade INT(5) NOT NULL,
    CONSTRAINT FK_compoe_VENDA FOREIGN KEY (idVenda) REFERENCES VENDA (idVenda),
    CONSTRAINT FK_compoe_PRODUTO FOREIGN KEY (codigo) REFERENCES PRODUTO (codigo),

);
