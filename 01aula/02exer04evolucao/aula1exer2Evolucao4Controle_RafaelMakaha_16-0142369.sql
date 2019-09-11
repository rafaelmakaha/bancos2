-- ------------------ << aula1exer2Evolucao4 >> ------------------ --
-- 								                                                --
-- 		                	SCRIPT DE CONTROLE 			                 --
-- 								                                                --
-- Data Criacao ..........: 10/09/2019  			                             --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira        	           --
-- Banco de Dados ........: MySQL 				                               --
-- Base de Dados(nome) ...: aula1exer2Evolucao4 			                   --
-- 								                                                --
-- Data Ultima Alteracao ..: 10/09/2019 			                     --
-- + Criar usuarios do tipo administrador e usuario normal 	      --
-- 								                                                --
-- PROJETO => 01 Base de Dados 					                          --
--         => 08 Tabelas 						                              --
-- 								                                                --
-- --------------------------------------------------------------- --

-- Administrador: possui todos os privil�gios sobre essa base de dados somente:

CREATE USER 'zequinha' IDENTIFIED BY 'zequinha123';
GRANT ALL PRIVILEGES ON aula1exer2Evolucao4.* TO zequinha;

-- Usuario: possui todos os privil�gios de consulta de dados sobre a base de dados desse projeto somente:

CREATE USER 'neymar_junior' IDENTIFIED BY 'neymar123';
GRANT SELECT, USAGE ON aula1exer2Evolucao4.* TO neymar_junior;

-- Para deletar os usuários, usar DROP USER, pois o DELETE ainda deixa o usuário
-- existindo.