-- --------            << aula3exer1evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT CONSULTA (DDL)                      --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 27/09/2019                              --
--    + Criação de view para visão estrategica dos plantoes          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 5 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula3exer1evolucao2;

-- Esta visão apresenta quais plantonistas de especialidades
-- estão em setores não condizentes com suas 
-- especialidades

CREATE VIEW ESPECIALIDADE_SETOR (Setor, Quantidade_Plantonista) AS
    SELECT s.nome, count(p.matriculaFuncional)
    FROM PLANTONISTA p
    INNER JOIN possui po ON po.matriculaFuncional = p.matriculaFuncional
    INNER JOIN ESPECIALIDADE e ON e.idEspecialidade = po.idespecialidade
    INNER JOIN trabalha t ON t.matriculaFuncional = p.matriculaFuncional
    INNER JOIN SETOR s ON s.idSetor = t.matriculaFuncional
    WHERE s.nome <> e.nome
    ORDER BY s.nome;
    