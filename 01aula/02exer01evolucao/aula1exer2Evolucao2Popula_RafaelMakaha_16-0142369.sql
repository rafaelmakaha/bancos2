-- --------               << aula1exer2evolucao2 >>     ------------ --
--                                                                   --
--                    SCRIPT DE POPULAR (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 21/08/2019                               --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira             --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula1exer2evolucao2                      --
--                                                                   --
-- Data Ultima Alteracao ..: 21/08/2019                              --
--                                                                   --
--                                                                   --
-- PROJETO => SCRIPT DE POPULAR TABELAS                              --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula1exer2evolucao2;

INSERT INTO telefone (idTelefone, telefone) VALUES
    (100000001, 61345678911),
    (100000002, 61345678912),
    (100000003, 61345678913);

INSERT INTO GERENTE (nome, email, senha, formacao, cpfGerente) VALUES
    ('Joao de Barros', 'joaodebarros@email.com', 'barros123','EM', 12345678911),
    ('Joao Gordo', 'joaogordo@email.com', 'gordo123','ES', 12345678912),
    ('Joao Cardoso', 'joaocardoso@email.com', 'cardoso123','EM', 12345678913);

INSERT INTO EMPREGADO (idTelefone, bairro, complemento, logradouro, uf, cidade, cep, numero, nome, senha, matricula, cpfEmpregado) VALUES
    (100000001, 'Arniqueiras', 'nada', 'logradouro1', 'DF', 'Águas Claras', '711000001', '1', 'Joao de Brito', 'senha123', 300000001, 12345678914),
    (100000002, 'Concessionarias', 'nada', 'logradouro2', 'DF', 'Águas Claras', '711000002', '2','Joao de Cabisbaixo', 'senha123', 300000002, 12345678915),
    (100000003, 'Av. Cruz', 'nada', 'logradouro3', 'GO', 'Águas Lindas', '711000003', '1','Joao de Maria', 'senha123', 300000003, 12345678916);

INSERT INTO AREA (idArea, nomeArea) VALUES
    (4000000001, 'Area1'),
    (4000000002, 'Area2'),
    (4000000003, 'Area3');

INSERT INTO PRODUTO (codigo, nomeProduto, valor, idArea) VALUES
    (500000001, 'produto1', 2, 4000000001),
    (500000002, 'produto2', 3, 4000000002),
    (500000003, 'produto3', 4, 4000000003);

INSERT INTO VENDA (dataVenda, valorTotal, idVenda, matricula, cpfEmpregado) VALUES
    ('2019-03-20 15:02:54', 2, 400000001, 300000001, 12345678914),
    ('2019-03-20 16:02:54', 3, 400000002, 300000002, 12345678915),
    ('2019-03-20 17:02:54', 4, 400000003, 300000003, 12345678916);
    
INSERT INTO gerencia (cpfGerente, idArea) VALUES
    (12345678911, 4000000001),
    (12345678912, 4000000002),
    (12345678913, 4000000003);
    
INSERT INTO compoe (codigo, idVenda, quantidade) VALUES
    (500000001, 400000001, 1),
    (500000002, 400000002, 1),
    (500000003, 400000003, 1);