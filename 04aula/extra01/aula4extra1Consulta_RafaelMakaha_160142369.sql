/*
-- --------            << aula4extra1 >>        ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 04/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula4extra1                      --
--                                                                   --
-- Data Ultima Alteracao ..: 04/09/2019                              --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 2 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
*/

USE aula4extra1;

/*
A) Projeção de sigla e nome do estado de sigla SP e DF;
*/

SELECT e.sigla, e.nome
    FROM ESTADO e
    WHERE e.sigla = 'SP' OR e.sigla = 'DF';

/*
B) Selecione somente o nome e a sigla das cidades que 
são dos estados RJ, DF e GO;
*/

SELECT c.nome, c.sigla
    FROM CIDADE c
    INNER JOIN ESTADO e ON e.sigla = c.sigla
    WHERE c.sigla = 'RJ' OR c.sigla = 'DF' OR c.sigla = 'GO';

/*
C) Selecione todas as cidades do primeiro estado que 
você cadastrou mostrando somente o nome da cidade, o 
nome do estado e sua sigla;
*/

SELECT c.nome, e.nome, c.sigla
    FROM ESTADO e 
    INNER JOIN CIDADE c on e.sigla = c.sigla
    WHERE e.sigla='RJ';

/*
D) Selecione somente o nome e a sigla do estado que 
você cadastrou por último e todas as cidades cadastradas 
nele, mostrando o seu nome e a quantidade de habitantes 
em ordem crescente de nome de estado e nome de cidade.
*/

SELECT e.nome, e.sigla, c.nome, c.habitantes
    FROM ESTADO e
    INNER JOIN CIDADE c on e.sigla = c.sigla
    WHERE e.sigla='DF'
    ORDER BY e.nome, c.nome;