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

select * from VENDA v where v.matricula=15898;

/* Consulta B
Relacionar todos os dados de uma venda com 
todas as informações dos produtos comercializados por 
esta venda específica;
*/

select * from PRODUTO p where p.idArea=434;

/* Consulta C
Mostrar todos os empregados da empresa que não sejam 
gerentes em ordem alfabética crescente;
*/
/* Não soube implementar este */
select * from PESSOA p inner join EMPREGADO e on p.cpf=e.cpf
                        left join telefone t on t.matricula = e.matricula
                        order by p.nome ASC;

/* Consulta D
Consultar e mostrar a quantidade de CADA produto 
que foi vendido por esta empresa.
*/

select p.codigo as Codigo, p.nome as Nome, sum(po.quantidade) as Quantidade
    from produto p
    inner join possui po on p.codigo = po.codigo
    group by p.codigo;