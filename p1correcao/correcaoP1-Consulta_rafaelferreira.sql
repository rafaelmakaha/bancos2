-- --------     << rafaelferreiraP1 >>     ------------
--
--                    SCRIPT CONSULTA (DDL)
--
-- Data Criacao ...........: 17/10/2019
-- Autor(es) ..............: RafaelMakaha
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: rafaelferreiraP1
--
-- Data Ultima Alteracao ..: 17/10/2019
--   => Criacao de nova tabela
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--
-- -----------------------------------------------------------------

USE rafaelferreiraP1;

-- Esta view apresenta a quantidade de professores
-- que lecionam uma determinada disciplina
-- isto ajuda a saber se existem muitos professores
-- alocados a uma única disciplina e se há necessidade de
-- remanejá-los
CREATE VIEW V_PROFESSOR_DISCIPLINA AS
  SELECT d.nome, count(p.matriculaFuncional)
  FROM leciona l,
  INNER JOIN DISCIPLINA d ON d.idDisciplina = l.idDisciplina
  INNER JOIN PROFESSOR p ON p.matriculaFuncional = l.matriculaFuncional
  WHERE d.idDisciplina = 1
  ORDER BY (d.nome)

