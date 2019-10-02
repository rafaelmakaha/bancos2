-- --------            << aula3exer1 >>                 ------------ --
--                                                                   --
--                    SCRIPT CONSULTA (DDL)                      --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1                               --
--                                                                   --
-- Data Ultima Alteracao ..: 27/09/2019                              --
--    + Criação de view para visão estrategica dos plantoes          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 6 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula3exer1;

-- view para visão estategica dos plantoes
CREATE VIEW V_PLANTAO (matriculaPlantonista, idPlantao, diaHoraPlantao, duracaoPlantao, codigoSetor, nomeSetor) AS
SELECT PLANTONISTA.matriculaFuncional, PLANTAO.idPlantao, PLANTAO.dthrPlantao, PLANTAO.duracaoPlantao, SETOR.codigoSetor, SETOR.nomeSetor FROM 
PLANTONISTA INNER JOIN faz ON PLANTONISTA.matriculaFuncional = faz.matriculaFuncional
INNER JOIN PLANTAO ON faz.idPlantao = PLANTAO.idPlantao
INNER JOIN SETOR ON PLANTAO.codigoSetor = SETOR.codigoSetor
ORDER BY PLANTAO.dthrPlantao;