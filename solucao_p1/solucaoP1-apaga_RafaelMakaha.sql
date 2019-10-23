-- --------     << rafaelferreiraP1 >>     ------------
--
--                    SCRIPT APAGA (DDL)
--
-- Data Criacao ...........: 17/10/2019
-- Autor(es) ..............: RafaelMakaha
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: rafaelferreiraP1
--
-- Data Ultima Alteracao ..: 17/10/2019
--   => Criacao de nova tabela
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 
-- -----------------------------------------------------------------

USE rafaelferreiraP1;

-- Remove tabelas
DROP TABLE email;
DROP TABLE requer;
DROP TABLE leciona;
DROP TABLE DISCIPLINA;
DROP TABLE PROFESSOR;

-- Remove usuarios
DROP USER 'ADMIN'@'localhost';
DROP USER 'USUARIO'@'localhost';