-- --------     << DISCIPLINAS >>     ------------
--
--                    SCRIPT FISICO (DDL)
--
-- Data Criacao ...........: 17/10/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: WelisonRegis
--
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--         => 02 Usuários
--
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS WelisonRegis;
USE WelisonRegis;

CREATE TABLE PROFESSOR (
    matriculaFuncional INT,
    nome VARCHAR(50),
    dtNascimento DATE,
    sexo ENUM('M', 'F'),
CONSTRAINT PROFESSOR_PK PRIMARY KEY (matriculaFuncional)
);

CREATE TABLE DISCIPLINA (
    idDisciplina INT,
    nome VARCHAR(50),
    sigla VARCHAR(50),
    qtCredito INT,
    periodo ENUM('M', 'V', 'N'),
CONSTRAINT DISCIPLINA_PK PRIMARY KEY (idDisciplina)
);

CREATE TABLE CURSO (
    idCurso INT,
    nomeCurso VARCHAR(50),
    classificacao INT,
CONSTRAINT CURSO_PK PRIMARY KEY (idCurso)
);

CREATE TABLE email (
    matriculaFuncional INT NOT NULL,
    email VARCHAR(50),
CONSTRAINT email_PK PRIMARY KEY (matriculaFuncional, email),
CONSTRAINT email_PROFESSOR_FK FOREIGN KEY (matriculaFuncional)
  REFERENCES PROFESSOR (matriculaFuncional)
);

CREATE TABLE necessita (
    idDisciplina INT,
    idDisciplinaRequisito INT,
CONSTRAINT necessita_DISCIPLINA_FK FOREIGN KEY (idDisciplina)
  REFERENCES DISCIPLINA (idDisciplina),
CONSTRAINT necessita_DISCIPLINA2_FK FOREIGN KEY (idDisciplinaRequisito)
  REFERENCES DISCIPLINA (idDisciplina)
);

CREATE TABLE leciona (
    matriculaFuncional INT,
    idDisciplina INT,
CONSTRAINT leciona_PK PRIMARY KEY (matriculaFuncional, idDisciplina),
CONSTRAINT leciona_PROFESSOR_FK FOREIGN KEY (matriculaFuncional)
  REFERENCES PROFESSOR (matriculaFuncional),
CONSTRAINT leciona_DISCIPLINA_FK FOREIGN KEY (idDisciplina)
  REFERENCES DISCIPLINA (idDisciplina)
);

CREATE TABLE formado (
    matriculaFuncional INT,
    idCurso INT,
CONSTRAINT formado_PK PRIMARY KEY (matriculaFuncional, idCurso),
CONSTRAINT formado_PROFESSOR_FK FOREIGN KEY (matriculaFuncional)
  REFERENCES PROFESSOR (matriculaFuncional),
CONSTRAINT formado_CURSO_FK FOREIGN KEY (idCurso)
  REFERENCES CURSO (idCurso)
);