-- --------     << VENDAS >>     ------------
-- 
--                    SCRIPT DE POPULA (DML)
-- 
-- Data Criacao ...........: 19/08/2019
-- Autor(es) ..............: Lieverton Silva
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ....: aula1exer2
-- 
-- Data Ultima Alteracao ..: 19/08/2019
--   => Criacao do script que popula
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula1exer2;

INSERT INTO PESSOA VALUES
	(09976933321, 'Pedro Barbosa', 'pd01ba23'),
    (09831231211, 'Joana Almeida', 'mstopra21'),
    (43137123211, 'João Pinto', 'rqsdd12'),
    (67390120932, 'Giovanna Queiroz', 'amora97'),
    (43127381232, 'Ivan Santos', 'klab32'),
    (71152813231, 'Joaquim Oliveira', 'oliver123');

INSERT INTO GERENTE VALUES
	('pedro@gmail.com', 'superior', 09976933321),
    ('almeida@gmail.com', 'superior', 09831231211),
    ('joaoli@gmail.com', 'superior', 43137123211);

INSERT INTO EMPREGADO VALUES
	(265321, 67390120932, 43, 'Rua Algusto Ribeiro', 'Setor Norte', 'Gama', 'DF', 72300000, NULL),
    (296232, 43127381232, 24, 'QR 210 conj 04 ', 'Norte', 'Ceilândia', 'DF', 31241200, 'Ao lado do Banco'),
    (332172, 71152813231, 25, 'QNJ', 'Sul', 'Taguatinga', 'DF', 89132122, NULL);

INSERT INTO telefone VALUES
	(265321, 5561999961224),
    (296232, 5561997162322),
    (332172, 5561997368221);

INSERT INTO supervisiona VALUES
	(09976933321, 265321),
    (09831231211, 296232),
    (43137123211, 332172);

INSERT INTO AREA VALUES
	(NULL, 'Esportes'),
    (NULL, 'Informática'),
    (NULL, 'Jogos');

INSERT INTO PRODUTO VALUES
	(3243, 1, 'luva de box 15 oz'),
    (2342, 2, 'mause xtz 3'),
    (2232, 3, 'fifa 19');

INSERT INTO vende VALUES
	('2019-08-01 10:00:09', 3243, 265321, 200, 100.00),
    ('2019-08-01 10:00:09', 2342, 296232, 1000, 20.00),
    ('2019-08-01 10:00:09', 2232, 332172, 500, 200.00);