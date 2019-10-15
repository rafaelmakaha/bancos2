-- --------     << aula3exer1evolucao4 >>     ------------
-- 
--                    SCRIPT DE MANIPULACAO (DML)
-- 
-- date Criacao ...........: 07/10/2019
-- Autor(es) ..............: Rafael Makaha Gomes Ferreira
-- Banco de Dados .........: mysql
-- Base de Dados(nome) ....: aula3exer1evolucao4
-- 
-- date Ultima Alteracao ..: 14/10/2019
--   => Criacao das tabelas e ajustes na documentacao dos scritps
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 01 Visao 	 
--         
-- 
-- -----------------------------------------------------------------

USE aula3exer1evolucao4;

INSERT INTO ESPECIALIDADE (idEspecialidade, tipoEspecialidade) VALUES
    (0, 'Enfermeiro Geral'),
    (1, 'Acupuntura'),
    (2, 'Alergia e Imunologia'),
    (3, 'Anestesiologia'),
    (4, 'Angiologia'),
    (5, 'Cancerologia'),
    (6, 'Urologia');

INSERT INTO SETOR (idSetor, nomeSetor) VALUES
    (1, 'Acupuntura'),
    (2, 'Anestesiologia'),
    (3, 'Urologia');

INSERT INTO PLANTONISTA (matricula, nome, sexo) VALUES
    (1, 'João Silva da Silva', 'M'),
    (2, 'Maria Souza da Silva', 'F'),
    (3, 'João Pedro Alves', 'M');

INSERT INTO alocado (idSetor, matricula, datahora) VALUES
    (1, 2, '2019-09-03 08:00:00'),
    (1, 1, '2019-09-14 08:00:00'),
    (2, 3, '2019-09-20 08:00:00');

INSERT INTO possui (matricula, idEspecialidade) VALUES
    (1,1),
    (2,3),
    (3,2);
