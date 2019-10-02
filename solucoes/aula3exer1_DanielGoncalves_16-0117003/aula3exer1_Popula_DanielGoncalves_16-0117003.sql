-- --------            << aula3exer1 >>                 ------------ --
--                                                                   --
--                    SCRIPT POPULA (DML)                            --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1                               --
--                                                                   --
-- Data Ultima Alteracao ..: 27/09/2019                              --
--    + Populando todas as tabelas com 3 ou mais tuplas              --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 6 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula3exer1;

INSERT PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES 
    (4231432, 'Neymar Junior dos Santos', 'M'),
    (51253152, 'Rivaldo Martins Mendes', 'M'),
    (124344, 'Everton Gabriel Oliveira', 'M');

INSERT ESPECIALIDADE (codigoEspecialidade, nomeEspecialidade) VALUES
    (123, 'Cardiologia'),
    (33, 'Endocrinologia'),
    (44, 'Ginecologia');

INSERT possui (matriculaFuncional, codigoEspecialidade) VALUES
    (4231432, 123),
    (4231432, 33),
    (51253152, 44);

INSERT SETOR (codigoSetor, nomeSetor) VALUES
    (321, 'Ambulatorio'),
    (4243,'Centro Cirurgico' ),
    (423, 'Pronto Atendimento');

INSERT PLANTAO (dthrPlantao, duracaoPlantao, codigoSetor) VALUES
    ('2019-12-09 09:00', '12:00', 321),
    ('2019-12-09 09:00', '12:00', 4243),
    ('2019-12-11 10:00', '24:00', 4243),
    ('2019-12-12 20:00', '12:00', 423);

INSERT faz (idPlantao, dthrPlantao, matriculaFuncional) VALUES
    (1, '2019-12-09 09:00', 4231432),
    (1, '2019-12-09 09:00', 51253152),
    (2, '2019-12-09 09:00', 124344),
    (3, '2019-12-11 10:00', 4231432),
    (4, '2019-12-12 20:00', 124344);
