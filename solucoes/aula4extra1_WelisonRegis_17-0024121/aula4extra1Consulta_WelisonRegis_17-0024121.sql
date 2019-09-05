-- --------     << aula4extra1 >>     ------------
-- 
--                    SCRIPT Consulta (DML)
-- 
-- Data Criacao ...........: 04/09/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ....: aula4extra1
-- 
-- Data Ultima Alteracao ..: 04/09/2019
--   => Criacao do script de consulta
-- 
-- PROJETO => 01 Base de Dados
--            02 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula4extra1;

-- A) Projeção de sigla e nome do estado de sigla SP e DF

SELECT sigla, nome
FROM ESTADO
WHERE sigla = 'SP' OR sigla = 'DF';

-- B) Selecione somente o nome e a sigla das cidades
--    que são dos estados RJ, DF e GO
SELECT nome, sigla
FROM CIDADE
WHERE sigla IN ('RJ', 'DF', 'GO')
ORDER BY sigla;

-- C) Selecione todas as cidades do primeiro estado
--    que você cadastrou mostrando somente o nome
--    da cidade, o nome do estado e sua sigla;
SELECT c.nome as CIDADE, e.nome as ESTADO, c.sigla
FROM CIDADE AS c
INNER JOIN ESTADO AS e
    ON c.sigla = e.sigla
WHERE e.sigla = 'SP'
ORDER BY c.nome;

-- D) Selecione somente o nome e a sigla do estado que você
--    cadastrou por último e todas as cidades cadastradas
--    nele, mostrando o seu nome e a quantidade de habitantes
--    em ordem crescente de nome de estado e nome de cidade.

SELECT e.nome as Estado, e.sigla, c.nome as Cidade, habitantes
FROM CIDADE AS c
INNER JOIN ESTADO AS e
    ON c.sigla = e.sigla
WHERE e.sigla = 'RJ'
ORDER BY e.nome, c.nome;
