-- ------------------ << exer01aula03 >> ------------------ --
-- 								                                                --
-- 		                	SCRIPT DE CONTROLE 			                 --
-- 								                                                --
-- Data Criacao ..........: 30/09/2019  			                             --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira        	           --
-- Banco de Dados ........: MySQL 				                               --
-- Base de Dados(nome) ...: exer01aula03 			                   --
-- 								                                                --
-- Data Ultima Alteracao ..: 30/09/2019 			                     --
-- + Criar usuarios do tipo administrador e usuario normal 	      --
-- 								                                                --
-- PROJETO => 01 Base de Dados 					                          --
--         => 05 Tabelas 						                              --
-- 								                                                --
-- --------------------------------------------------------------- --


USE exer01aula03;

-- administrador
CREATE USER 'administradorHK' 
    IDENTIFIED BY 'admin123';

GRANT ALL PRIVILEGES ON exer01aula03.* TO administradorHK;

-- usuario
CREATE USER 'usuarioComum77' 
    IDENTIFIED BY 'paralelepipedo';

GRANT SELECT ON exer01aula03.* TO administradorHK;


-- gestor
CREATE USER 'gestoraLindona' 
    IDENTIFIED BY 'policiaAmarela48';

GRANT SELECT ON exer01aula03.* TO administradorHK;
GRANT UPDATE, INSERT ON exer01aula03.PLANTONISTA, exer01aula03.SETOR, exer01aula03.trabalha TO administradorHK;
