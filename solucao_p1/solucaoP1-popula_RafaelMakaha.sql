-- --------     << rafaelferreiraP1 >>     ------------
--
--                    SCRIPT POPULA (DML)
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

INSERT INTO PROFESSOR (primeiroNome, ultimoNome, dataNascimento, sexo) VALUES
  ('Andre', 'Silva', '1990-10-10 00:00:00', 'M'),
  ('Carlos', 'Pitanga', '1990-10-10 00:00:00', 'M'),
  ('Ana', 'Maria', '1990-10-10 00:00:00', 'F'),
  ('Zeca' 'Pinguin', '1991-09-09 00:00:00', 'M');

INSERT INTO DISCIPLINA (periodo, sigla, quantidadeCreditos, nome) VALUES
  ('M', 'OO', 4, 'Orientação a Objetos'),
  ('M', 'MDS', 4, 'Metodos Desenvolvimento Software'),
  ('M', 'PA', 4, 'Projeto de Algoritmos'),
  ('V', 'MD', 4, 'Matematica Discreta'),
  ('V', 'EDA', 4, 'Estrutura de Dados e Algoritmos');

INSERT INTO email (matriculaFuncional, email) VALUES
  (1,'andre@amil.com'),
  (2, 'carlos@email.com'),
  (3, 'ana@email.com'),
  (4, 'zeca@email.com');

INSERT INTO leciona (idDisciplina, matriculaFuncional) VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4);

INSERT INTO requer (idDisciplina, idDisciplinaPreRquisito) VALUES
  (2,1),
  (3,1),
  (4,1),
  (1,5);