-- --------            << exer01aula03 >>        ------------ --
--                                                                   --
--                    SCRIPT POPULA (DML)                            --
--                                                                   --
-- Data Criacao ..........: 30/09/2019                               --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira             --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: exer01aula03                      --
--                                                                   --
-- Data Ultima Alteracao ..: 30/09/2019                              --
--    + Novos cadastros para testes na base de dados                 --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 5 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --


USE exer01aula03;

INSERT INTO PLANTONISTA VALUES 
    ('M', 'João Pedro Álvares', 10000000001),
    ('F', 'Maria Joaquina', 10000000002),
    ('F', 'Carminha dos Santos', 10000000003);

INSERT INTO SETOR VALUES 
    ('Pediatria', 20000000001),
    ('Ortodontia', 20000000002),
    ('UTI', 20000000003);

INSERT INTO ESPECIALIDADE VALUES 
    ('Podologia',30000000001),
    ('Cirurgia', 30000000002),
    ('Nefrologia',30000000003);

INSERT INTO possui VALUES 
    (10000000001, 30000000002),
    (10000000002, 30000000002),
    (10000000003, 10000000001);

INSERT INTO trabalha VALUES 
    ('2019-08-01 08:00:06', 10000000001, 20000000003),
    ('2019-08-01 18:00:06', 10000000002, 20000000003),
    ('2019-08-01 08:00:06', 10000000001, 20000000001);
