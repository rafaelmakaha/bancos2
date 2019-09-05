-- --------     << aula4extra1 >>     ------------
-- 
--                    SCRIPT POPULA (DML)
-- 
-- Data Criacao ...........: 04/09/2019
-- Autor(es) ..............: Welison Lucas Almeida Regis
-- Banco de Dados .........: MySQL
-- Base de Dados(nome) ....: aula4extra1
-- 
-- Data Ultima Alteracao ..: 04/09/2019
--   => Criacao do script de popula
-- 
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula4extra1;

INSERT INTO ESTADO VALUES
    ('SP', 'São Paulo'),
	('GO', 'Goiás'),
    ('DF', 'Distrito Federal'),
    ('RJ', 'Rio de Janeiro'),
    ('AM', 'Amazonas');

INSERT INTO CIDADE VALUES
    (10000, 'São Bernado do Campo', 'SP', 838936),
    (10001, 'Mauá', 'SP', 472912),
    (10002, 'Guarujá', 'SP', 320459),
    (10003, 'Anapólis', 'GO', 381970),
    (10004, 'Novo Gama', 'GO', 113679),
    (10005, 'Planaltina', 'GO', 89181),
	(10006, 'Coari', 'AM', 85097),
    (10007, 'Manicoré', 'AM', 55751),
    (10008, 'Lábrea', 'AM', 46069),
    (10009, 'São Gonçalo', 'RJ', 1099249),
    (10010, 'Niterói', 'RJ', 512824),
    (10011, 'Petrópolis', 'RJ', 305706);
