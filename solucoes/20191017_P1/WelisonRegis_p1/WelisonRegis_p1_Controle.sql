-- --------     << DISCIPLINAS >>     ------------
--
--                    SCRIPT DE CONTROLE (DCL)
--
-- Data Criacao ...........: 17/10/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: WelisonRegis
--
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--         => 02 Usuários
--
-- -----------------------------------------------------------------

CREATE USER 'ADMIN' IDENTIFIED BY 'AdminMaster1@2';
GRANT  ALL PRIVILEGES ON WelisonRegis.* TO 'ADMIN';

CREATE USER 'PESSOA' IDENTIFIED BY 'PessoaTop1@2';
GRANT SELECT, INSERT, DELETE, UPDATE ON WelisonRegis.* TO 'PESSOA';