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

-- View que mostra os horários ocupados por algum plantonista em cada setor
CREATE OR REPLACE VIEW V_HORARIOS (setor, datahora, plantonista) AS
  SELECT s.nomeSetor, a.datahora, p.nome
    FROM SETOR s JOIN alocado a
                       ON a.idSetor = s.idSetor
                     JOIN PLANTONISTA p
                       ON a.matricula = p.matricula
   ORDER BY s.nomeSetor, a.datahora, p.nome;