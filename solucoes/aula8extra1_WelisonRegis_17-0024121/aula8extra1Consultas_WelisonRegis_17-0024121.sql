--  ----------------------- GAMES --------------------------
--                                                                  
--                    SCRIPT CONSULTA (DML)                           
--                                                                  
-- Data Criacao ..........: 29/10/2019                              
-- Autor(es) .............: Welison Regis     
-- Banco de Dados ........: MySQL                                   
-- Base de Dados(nome) ...: aula8extra1                                                                                      
--                                                                  
-- PROJETO => 1 Base de Dados                                       
--         => 3 Tabelas                                           
--                                                                  
-- -----------------------------------------------------------------

-- Base com os dados dos jogos deve ser inserida em aula8extra1
USE aula8extra1;


-- Seleciona os cinco jogos mais rentáveis de dada empresa
-- com os lucros por região e lucro total.

-- Índice: acrescentou um índice em publisher_name para automatizar as
-- procuras por publicadores de jogos específicas.
-- Melhora: 49 milésimos de segundo para valores inferiores a 01 milésimo de segundo.

CREATE INDEX publisher_idx ON PUBLISHER (publisher_name);

SELECT
	GA.name AS "Jogo",
    GE.description AS "Gênero",
    GA.jp_sales AS "Vendas Japão",
    GA.eu_sales AS "Vendas Europa",
    GA.na_sales AS "Vendas Norte América",
    GA.other_sales AS "Vendas Outros",
    GA.jp_sales+GA.eu_sales+GA.na_sales+GA.other_sales AS "Total"
	FROM GAME GA
		INNER JOIN PUBLISHER P ON P.id_publisher = GA.id_publisher
        INNER JOIN GENRE GE ON GA.id_genre = GE.id_genre
	WHERE P.publisher_name = 'Nintendo'
	ORDER BY Total DESC
	LIMIT 5;

-- Select: apresenta o nome do jogo e o gênero dos dez jogos
-- mais vendidos na América do Norte.

-- Indice: A seleção já utiliza indices, devido a chaves primárias e
-- estrangeiras.

SELECT GE.description AS `Gênero`, GA.name AS `Jogo` FROM GAME GA
	INNER JOIN GENRE GE ON GA.id_genre = GE.id_genre
	ORDER BY na_sales DESC
	LIMIT 10;
