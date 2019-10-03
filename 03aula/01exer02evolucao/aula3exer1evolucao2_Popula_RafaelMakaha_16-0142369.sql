-- --------            << aula3exer1evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT POPULA (DML)                            --
--                                                                   --
-- Data Criacao ..........: 02/10/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 02/10/2019                              --
--    + Populando todas as tabelas com 3 ou mais tuplas              --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 5 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula3exer1evolucao2;

INSERT PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES 
    (10000000001, 'Neymar Junior dos Santos', 'M'),
    (10000000002, 'Rivaldo Martins Mendes', 'M'),
    (10000000003, 'Everton Gabriel Oliveira', 'M');

INSERT ESPECIALIDADE (codigoEspecialidade, nomeEspecialidade) VALUES
    (123, 'Cardiologia'),
    (33, 'Endocrinologia'),
    (44, 'Ginecologia');

INSERT possui (matriculaFuncional, codigoEspecialidade) VALUES
    (10000000001, 123),
    (10000000001, 33),
    (10000000002, 44);

INSERT SETOR (codigoSetor, nomeSetor) VALUES
    (321, 'Ambulatorio'),
    (4243,'Centro Cirurgico' ),
    (423, 'Pronto Atendimento');

INSERT trabalha (horarioInicio, horarioFim, matriculaFuncional, codigoSetor) VALUES
    ('2019-12-09 09:00', '2019-12-09 19:00', 10000000001, 321),
    ('2019-12-09 09:00', '2019-12-09 19:00', 10000000001, 4243),
    ('2019-12-11 20:00', '2019-12-10 08:00', 10000000002, 4243),
    ('2019-12-12 20:00', '2019-12-13 09:00', 10000000001, 423);
