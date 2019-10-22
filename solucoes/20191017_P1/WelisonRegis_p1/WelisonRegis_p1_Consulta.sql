-- --------     << DISCIPLINAS >>     ------------
--
--                    SCRIPT DE CONSULTA (DCL)
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

USE WelisonRegis;

CREATE VIEW v_PROFESSOR_LECIONA AS
SELECT P.matriculaFuncional, D.idDisciplina, P.nome FROM PROFESSOR P
  INNER JOIN leciona L ON L.matriculaFuncional =  P.matriculaFuncional
  INNER JOIN DISCIPLINA D ON D.idDisciplina = L.idDisciplina
  ORDER BY P.matriculaFuncional;
