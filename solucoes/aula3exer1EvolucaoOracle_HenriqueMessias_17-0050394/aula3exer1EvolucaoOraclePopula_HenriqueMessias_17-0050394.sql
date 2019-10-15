-- --------     << aula3exer1evolucao4 >>     ------------
-- 
--                    SCRIPT DE MANIPULACAO (DML)
-- 
-- date Criacao ...........: 07/10/2019
-- Autor(es) ..............: Henrique Martins de Messias
-- Banco de Dados .........: Oracle
-- Base de Dados(nome) ....: VRVR
-- 
-- date Ultima Alteracao ..: 08/10/2019
--   => Criacao das tabelas e ajustes na documentacao dos scritps
--
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 01 Visao 	 
--         => 03 Sequences 
-- 
-- -----------------------------------------------------------------

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
(0, 'Enfermeiro Geral');

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
(ESPECIALIDADE_SEQ.NEXTVAL, 'Acupuntura');

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
(ESPECIALIDADE_SEQ.NEXTVAL, 'Alergia e Imunologia');

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
(ESPECIALIDADE_SEQ.NEXTVAL, 'Anestesiologia');

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
(ESPECIALIDADE_SEQ.NEXTVAL, 'Angiologia');

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
(ESPECIALIDADE_SEQ.NEXTVAL, 'Cancerologia');

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
(ESPECIALIDADE_SEQ.NEXTVAL, 'Urologia');

INSERT INTO SETOR (idSetor, nomeSetor) VALUES
(SETOR_SEQ.NEXTVAL, 'Acupuntura');

INSERT INTO SETOR (idSetor, nomeSetor) VALUES
(SETOR_SEQ.NEXTVAL, 'Anestesiologia');

INSERT INTO SETOR (idSetor, nomeSetor) VALUES
(SETOR_SEQ.NEXTVAL, 'Urologia');

INSERT INTO PLANTONISTA (matricula, nome, sexo, idEspecialidade) VALUES
(PLANTONISTA_SEQ.NEXTVAL, 'João Silva da Silva', 'M', 1);

INSERT INTO PLANTONISTA (matricula, nome, sexo, idEspecialidade) VALUES
(PLANTONISTA_SEQ.NEXTVAL, 'Maria Souza da Silva', 'F', 3);

INSERT INTO PLANTONISTA (matricula, nome, sexo, idEspecialidade) VALUES
(PLANTONISTA_SEQ.NEXTVAL, 'João Pedro Alves', 'M', 2);

INSERT INTO alocado (idSetor, matricula, datahora) VALUES
(1, 2, '10-SEP-2019 2:00:00.00');

INSERT INTO alocado (idSetor, matricula, datahora) VALUES
(1, 1, '11-SEP-2019 7:00:00.00');

INSERT INTO alocado (idSetor, matricula, datahora) VALUES
(2, 3, '22-SEP-2019 5:00:00.00');
