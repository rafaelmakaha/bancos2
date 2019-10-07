-- --------            << aula3exer1Evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT DE MANIPULACAO (DML)                        --
--                                                                   --
-- Data Criacao ..........: 02/10/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves 			 --
-- 							Eduardo Júnio Veloso Rodrigues
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1Evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 02/10/2019                              --
--    + Inserção de dados                                         --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 3 Usuarios						                                 --
--         => 5 Tabelas                                              --
--         => 1 View                                                      --
-- ----------------------------------------------------------------- --

USE aula3exer1Evolucao2;

INSERT PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES 
    (4231432, 'Neymar Junior dos Santos', 'M'),
    (51253152, 'Rivaldo Martins Mendes', 'M'),
    (124344, 'Everton Gabriel Oliveira', 'M');

INSERT ESPECIALIDADE (codigo, nomeEspecialidade) VALUES
    (123, 'Cardiologia'),
    (33, 'Endocrinologia'),
    (44, 'Ginecologia');

INSERT possui (matriculaFuncional, codigo) VALUES
    (4231432, 123),
    (4231432, 33),
    (51253152, 44);

INSERT SETOR (codigoSetor, nomeSetor) VALUES
    (321, 'Ambulatorio'),
    (4243,'Centro Cirurgico' ),
    (423, 'Pronto Atendimento');

INSERT atende (dthora, codigoSetor, matriculaFuncional) VALUES
    ('2019-12-09 09:00', '321', '4231432'),
    ('2019-12-09 09:00', '4243', '51253152'),
    ('2019-12-11 10:00', '423', '124344'),
    ('2019-12-12 20:00', '321', '51253152');
