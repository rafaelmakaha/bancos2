-- --------     << aula3exer1evolucao4 >>     ------------
-- 
--                    SCRIPT DE MANIPULACAO (DML)
-- 
-- date Criacao ...........: 14/10/2019
-- Autor(es) ..............: Rafael Makaha Gomes Ferreira
-- Banco de Dados .........: mysql
-- Base de Dados(nome) ....: aula3exer1evolucao4
-- 
-- date Ultima Alteracao ..: 14/10/2019
--   => Criacao das tabelas e ajustes na documentacao dos scritps
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 01 Visao 	 
--         
-- 
-- -----------------------------------------------------------------

USE aula3exer1evolucao4;

CREATE USER 'administrador'@'localhost' 
    IDENTIFIED BY 'adm123';

GRANT ALL PRIVILEGES ON aula3exer1evolucao4.*
    TO 'administrador'@'localhost';

CREATE USER 'usuario'@'localhost'
    IDENTIFIED BY 'usuario123';

GRANT SELECT ON aula3exer1evolucao4.*
    TO 'usuario'@'localhost';

CREATE USER 'gestor'@'localhost'
    IDENTIFIED BY 'gestor123';

GRANT SELECT ON aula3exer1evolucao4.*
    TO 'gestor'@'localhost';

GRANT INSERT, UPDATE ON aula3exer1evolucao4.PLANTONISTA, aula3exer1evolucao4.SETOR
    TO 'gestor'@'localhost';