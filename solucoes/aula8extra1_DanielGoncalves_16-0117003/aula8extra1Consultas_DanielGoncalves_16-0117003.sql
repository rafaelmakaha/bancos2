-- --------                << aula8extra1 >>            ------------ --
--                                                                   --
--                    SCRIPT CONSULTA (DDL/DML)                      --
--                                                                   --
-- Data Criacao ..........: 29/10/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula8extra1                              --
--                                                                   --
-- Data Ultima Alteracao ..: 29/10/2019                              --
--    + Criação de duas consultas estrategicas                       --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 3 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula8extra1;

-- Criacao de indice para otimizar a consulta realizada sobre os valores de venda por ano e genero 
CREATE INDEX Game_Year_IDX ON GAME(year_of_release);
-- Consulta para verificar os valores de venda em unidade de milhão por ano e genero de cada jogo
SELECT GENRE.description, GAME.year_of_release, (SUM(GAME.na_sales) + SUM(GAME.eu_sales) + SUM(GAME.jp_sales) + SUM(GAME.other_sales)) AS sales FROM
GAME INNER JOIN GENRE ON GAME.id_genre = GENRE.id_genre
GROUP BY GENRE.description, GAME.year_of_release
ORDER BY GAME.year_of_release, GENRE.description;

-- Criacao de indice para otimizar a consulta realizada sobre a quantidade de jogos publicados por ano para cada publicadora
CREATE INDEX Publisher_Name_IDX ON PUBLISHER(publisher_name);
-- Consulta para verificar quantos jogos foram publicados por ano para cada publicadora de jogos
SELECT PUBLISHER.publisher_name, COUNT(GAME.id_game), GAME.year_of_release FROM
GAME INNER JOIN PUBLISHER ON GAME.id_publisher = PUBLISHER.id_publisher
GROUP BY PUBLISHER.publisher_name, GAME.year_of_release
ORDER BY GAME.year_of_release, PUBLISHER.publisher_name;