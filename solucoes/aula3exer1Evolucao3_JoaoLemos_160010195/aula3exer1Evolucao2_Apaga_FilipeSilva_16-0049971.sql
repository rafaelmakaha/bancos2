
--                                                                   --
--                    SCRIPT DE DELEÇÃO (DDL)                        --
--                                                                   --
-- Data Criacao ...........: 02/09/2018                              --
-- Autor(es) ..............: João Pedro Sconetto                     --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula3exer1                              --
--                                                                   --
-- Data Ultima Alteracao ..: 		                                    --
--   			                                                          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 4 Tabelas                                              --
--         => 2 Usuarios                                             --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula3exer1evolucao2;

DROP TABLE IF EXISTS
  alocado,
  Plantonista,
  Especialidade,
  Setor;

DROP USER IF EXISTS administrador@localhost,
          usuario@localhost;
          
DROP view horario_plantonistas;

                                 