/* Lógico_1: */

CREATE TABLE PLANTONISTA (
    sexo ENUM('M','F'),
    nome VARCHAR(50),
    matricula INT(11),
    CONSTRAINT PK_PLANTONISTA PRIMARY KEY (matricula)
);

CREATE TABLE SETOR (
    nome VARCHAR(50),
    idSetor INT(11) 
    CONSTRAINT PK_SETOR PRIMARY KEY (idSetor)
);

CREATE TABLE ESPECIALIDADE (
    nome VARCHAR(50),
    idEspecialidade INT(11) 
    CONSTRAINT PK_ESPECIALIDADE PRIMARY KEY (idEspecialidade)
);

CREATE TABLE trabalha (
    horario TIMESTAMP,
    matricula INT(11),
    idSetor INT(11),
    CONSTRAINT FK_trabalha_PLANTONISTA FOREIGN KEY (matricula) REFERENCES PLANTONISTA (matricula),
    CONSTRAINT FK_trabalha_SETOR FOREIGN KEY (idSetor) REFERENCES SETOR (idSetor)
);

CREATE TABLE possui (
    matricula INT(11),
    idEspecialidade INT(11),
    CONSTRAINT FK_possui_PLANTONISTA FOREIGN KEY (matricula) REFERENCES PLANTONISTA (matricula),
    CONSTRAINT FK_possui_ESPECIALIDADE FOREIGN KEY (idEspecialidade) REFERENCES ESPECIALIDADE (idEspecialidade)
);