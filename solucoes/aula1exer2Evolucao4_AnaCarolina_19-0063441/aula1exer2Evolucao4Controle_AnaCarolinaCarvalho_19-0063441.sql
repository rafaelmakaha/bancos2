-- ------------------ << aula1exer2Evolucao4 >> ------------------ --
-- 								                                                --
-- 		                	SCRIPT DE CONTROLE 			                 --
-- 								                                                --
-- Data Criacao ..........: 08/09/2019  			                     --
-- Autor(es) .............: Ana Carolina Carvalho da Silva 	      --
-- Banco de Dados ........: MySQL 				                         --
-- Base de Dados(nome) ...: aula1exer2Evolucao4 			             --
-- 								                                                --
-- Data Ultima Alteracao ..: 08/09/2019 			                     --
-- + Criar usuarios do tipo administrador e usuario normal 	      --
-- 								                                                --
-- PROJETO => 01 Base de Dados 					                          --
--         => 08 Tabelas 						                              --
-- 								                                                --
-- --------------------------------------------------------------- --

-- Administrador: possui todos os privil�gios sobre essa base de dados somente:

CREATE USER 'ana_carolina' IDENTIFIED BY 'anacarol123';
GRANT ALL PRIVILEGES ON aula1exer2Evolucao4.* TO ana_carolina;

-- Usuario: possui todos os privil�gios de consulta de dados sobre a base de dados desse projeto somente:

CREATE USER 'raphael_carvalho' IDENTIFIED BY 'raphael123';
GRANT SELECT, USAGE ON aula1exer2Evolucao4.* TO raphael_carvalho;