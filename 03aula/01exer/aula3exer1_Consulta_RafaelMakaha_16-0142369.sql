/*
-- --------            << exer01aula03 >>        ------------ --
--                                                                   --
--                    SCRIPT POPULA (DML)                            --
--                                                                   --
-- Data Criacao ..........: 30/09/2019                               --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira             --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: exer01aula03                      --
--                                                                   --
-- Data Ultima Alteracao ..: 30/09/2019                              --
--    + Ajuste das consultas A, B e D (falta revisar a C)            --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 5 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
*/

USE exer01aula03;

-- Esta visão apresenta quais plantonistas de especialidades
-- estão em setores não condizentes com suas 
-- especialidades

CREATE VIEW ESPECIALIDADE_SETOR (Setor, Quantidade_Plantonista) AS
    SELECT s.nome, count(p.matricula)
    FROM PLANTONISTA p
    INNER JOIN possui po ON po.matricula = p.matricula
    INNER JOIN ESPECIALIDADE e ON e.idEspecialidade = po.idespecialidade
    INNER JOIN trabalha t ON t.matricula = p.matricula
    INNER JOIN SETOR s ON s.idSetor = t.matricula
    WHERE s.nome <> e.nome
    ORDER BY s.nome;
    