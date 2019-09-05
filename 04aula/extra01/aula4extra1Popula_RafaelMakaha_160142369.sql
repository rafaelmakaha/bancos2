/*
-- --------            << aula4extra1 >>        ------------ --
--                                                                   --
--                    SCRIPT POPULA (DML)                            --
--                                                                   --
-- Data Criacao ..........: 04/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula4extra1                      --
--                                                                   --
-- Data Ultima Alteracao ..: 04/09/2019                              --
--    + Populando todas as tabelas com 3 tuplas                      --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 2 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
*/

USE aula4extra1;

INSERT INTO ESTADO (sigla, nome) VALUES 
    ('RJ', 'Rio de Janeiro'),
    ('GO', 'Goiás'),
    ('SP', 'São Paulo'),
    ('DF', 'Distrito Federal');

INSERT INTO CIDADE (codigo, nome, sigla, habitantes) VALUES 
    (10001, 'Petrópolis', 'RJ', 20000),
    (10002, 'Búzios', 'RJ', 10000),
    (10003, 'Goiânia', 'GO', 50000),
    (10004, 'Brasília', 'DF', 1000000),
    (10005, 'Marília', 'SP', 1000000);
    