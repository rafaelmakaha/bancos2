/*
-- --------            << aula1exer2Evolucao3 >>        ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 25/08/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula1exer2Evolucao3                      --
--                                                                   --
-- Data Ultima Alteracao ..: 25/08/2019                              --
--    + Criacao da base de dados                                     --
--    + Criacao das tabelas                                          --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 8 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --
*/

USE aula1exer2Evolucao3;

/* Consulta A
Consultar todas as vendas feitas por um empregado
específico definido pela sua chave primária na pesquisa;
*/

select *
    from VENDA v 
    where v.matricula=15898
    order by dtVenda;

/* Consulta B
Relacionar todos os dados de uma venda com 
todas as informações dos produtos comercializados por 
esta venda específica;
*/

select p.idVenda, v.dtVenda, p.codigo, pr.nome, p.quantidade, pr.precoUnitario, (p.quantidade * pr.precoUnitario) as "Preco total"
    from possui p
    inner join PRODUTO pr on p.codigo = pr.codigo
    inner join VENDA v on p.idVenda = v.idVenda
    where p.idVenda = 678478
    order by pr.nome ASC;

/* Consulta C
Mostrar todos os empregados da empresa que não sejam 
gerentes em ordem alfabética crescente;
*/
select * 
    from PESSOA p 
    inner join EMPREGADO e on p.cpf=e.cpf
    left join telefone t on t.matricula = e.matricula
    order by p.nome ASC;

/* Consulta D
Consultar e mostrar a quantidade de CADA produto 
que foi vendido por esta empresa.
*/

select pr.codigo, pr.nome, sum(p.quantidade) as quantidadeTotal
    from possui p
    inner join PRODUTO pr on pr.codigo = p.codigo
    group by pr.nome;

-- select v.dtVenda, pr.codigo, pr.nome, p.quantidade
--   from possui p
--   inner join PRODUTO pr on p.codigo = pr.codigo
--   inner join VENDA v on p.idVenda = v.idVenda
--   where v.matricula = 15898;