/*
-- --------            << aula1exer2Evolucao5 >>        ------------ --
--                                                                   --
--                    SCRIPT POPULA (DML)                            --
--                                                                   --
-- Data Criacao ..........: 16/09/2019                               --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira             --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula1exer2Evolucao5                      --
--                                                                   --
-- Data Ultima Alteracao ..: 16/09/2019                              --
--    + Ajuste das consultas A, B e D (falta revisar a C)            --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 8 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
*/

USE aula1exer2Evolucao5;

-- A)Consultar todas as vendas feitas por um empregado específico
--   definido pela sua chave primária na pesquisa;

SELECT *
  FROM VENDA
 WHERE matricula = 51662  -- matricula do empregado especifico
 ORDER BY dtVenda;



-- B)Relacionar todos os dados de uma venda com todas as informações
--   dos produtos comercializados por esta venda específica;
SELECT p.idVenda, v.dtVenda,pr.codigo, pr.nome, p.quantidade, pr.precoUnitario, p.quantidade * pr.precoUnitario AS precoTotal
  FROM possui as p
       INNER JOIN PRODUTO AS pr
          ON p.codigo = pr.codigo
       INNER JOIN VENDA AS v
          ON v.idVenda = p.idVenda
 WHERE p.idVenda = 678478    -- codigo da venda especifica
 ORDER BY pr.nome;



-- C)Mostrar todos os empregados da empresa que não sejam gerentes
--   em ordem alfabética crescente;
SELECT *
  FROM EMPREGADO AS e
       INNER JOIN PESSOA AS p
          ON e.cpf = p.cpf
 ORDER BY p.nome;



-- D)Consultar e mostrar a quantidade de CADA produto que foi
--   vendida por esta empresa.
SELECT pr.codigo, pr.nome, sum(p.quantidade) AS quantidadeTotal
  FROM possui AS p
       INNER JOIN PRODUTO AS pr
          ON pr.codigo = p.codigo
 GROUP BY pr.codigo
 ORDER BY pr.nome;

-- Visões
-- Esta visão apresentará para o proprietário da empresa,
-- o montante em produtos arrecadados em vendas por cada funcionário 
 CREATE VIEW EMPREGADO_VENDAS (Funcionário, "Lucro Total") AS
   SELECT e.nome, sum(pr.precoUnitario * p.quantidade)
   FROM VENDA v
   INNER JOIN EMPREGADO e on v.matricula = e.matricula
   INNER JOIN possui p on v.idVenda = p.idVenda
   INNER JOIN PRODUTO pr on p.codigo = pr.codigo
   ORDER BY e.nome;

-- Esta visão apresentará para o proprietário da empresa 
-- uma listagem de gerentes e suas áreas de atuação
CREATE VIEW GERENTE_AREA (Gerente, Área) AS
   SELECT g.nome, a.nome
   FROM GERENTE g
   INNER JOIN AREA a ON a.cpf = g.cpf
   ORDER BY g.nome