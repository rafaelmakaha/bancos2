-- --------     << rafaelferreiraP1 >>     ------------
--
--                    SCRIPT CONTORLE
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

-- Criação de usuário administrador com qualquer instrução DDL e DML
CREATE USER 'ADMIN'@'localhost' IDENTIFIED BY 'admin321';

GRANT ALL PRIVILEGES ON rafaelferreirap1.* to 'ADMIN'@'localhost';

-- Criação de usuário com poder para apenas consultas DML

CREATE USER 'USUARIO'@'localhost' IDENTIFIED BY 'usuario321';

GRANT SELECT ON rafaelferreirap1.* to 'USUARIO'@'localhost';