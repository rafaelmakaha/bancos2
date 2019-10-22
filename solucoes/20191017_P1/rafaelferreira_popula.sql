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

INSERT INTO PROFESSOR (primeiroNome, ultimoNome, dataNascimento, sexo, idade) VALUES
  ('Andre', 'Silva', '1990-10-10 00:00:00', 'M', 29),
  ('Carlos', 'Pitanga', '1990-10-10 00:00:00', 'M', 29),
  ('Ana', 'Maria', '1990-10-10 00:00:00', 'F', 29);

INSERT INTO DISCIPLINA (periodo, sigla, quantidadeCreditos, nome) VALUES
  ('M', 'OO', 4, 'Orientação a Objetos'),
  ('M', 'MDS', 4, 'Metodos Desenvolvimento Software'),
  ('M', 'PA', 4, 'Projeto de Algoritmos'),
  ('V', 'MD', 4, 'Matematica Discreta');

INSERT INTO email (matriculaFuncional, email) VALUES
  (1,'andre@amil.com'),
  (2, 'carlos@email.com'),
  (3, 'ana@amil.com');

INSERT INTO leciona (idDisciplina, matriculaFuncional) VALUES
  (1,1),
  (2,2),
  (3,3);

INSERT INTO requer (idDisciplina, idDisciplinaPreRquisito) VALUES
  (2,1),
  (3,1),
  (4,1);