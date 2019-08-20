-- --------               << aula1exer2 >>              ------------ --
--                                                                   --
--                    SCRIPT DE POPULAR (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 19/08/2019                               --
-- Autor(es) .............: Rafael Makaha Gomes Ferreira             --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula1exer2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 19/08/2019                              --
--                                                                   --
--                                                                   --
-- PROJETO => SCRIPT DE POPULAR TABELAS                              --
--                                                                   --
-- ----------------------------------------------------------------- --

USE aula1exer2;

INSERT INTO PESSOA (nome, senha, cpf) VALUES
    ('Joao de Barros', 'senha123', 12345678911),
    ('Joao de Gordo', 'senha123', 12345678912),
    ('Joao Cardoso', 'senha123', 12345678913),
    ('Joao de Brito', 'senha123', 12345678914),
    ('Joao de Cabisbaixo', 'senha123', 12345678915),
    ('Joao de Maria', 'senha123', 12345678916);

INSERT INTO GERENTE (email, escolaridade, cpf) VALUES
    ('Joao de Barros','EM', 12345678911),
    ('Joao de Gordo', 'ES', 12345678912),
    ('Joao Cardoso', 'EM', 12345678913);

INSERT INTO telefone (idTelefone, telefone) VALUES
    (100000001, 61345678911),
    (100000002, 61345678912),
    (100000003, 61345678913);

INSERT INTO endereco (idEndereco, estado, cidade, bairro, complemento) VALUES
    (200000001, 'DF', 'Águas Claras', 'Arnqueiras', 'Nenhum'),
    (200000002, 'DF', 'Águas Claras', 'Concessionarias', 'Nenhum'),
    (200000003, 'GO', 'Águas Lindas', 'Av Cruz', 'Nenhum');

INSERT INTO FUNCIONARIO (idTelefone, matricula, idEndereco, cpf) VALUES
    (100000001, 300000001, 200000001, 12345678914),
    (100000002, 300000002, 200000002, 12345678915),
    (100000003, 300000003, 200000003, 12345678916);

INSERT INTO VENDA (dataVenda, total, idVenda, cpf) VALUES
    ('2019-03-20 15:02:54', 2, 400000001, 12345678914),
    ('2019-03-20 16:02:54', 3, 400000002, 12345678915),
    ('2019-03-20 17:02:54', 4, 400000003, 12345678916);

INSERT INTO PRODUTO (idProduto, nome, valor) VALUES
    (500000001, 'produto1', 2),
    (500000002, 'produto2', 3),
    (500000003, 'produto3', 4);
    
INSERT INTO supervisiona (cpfGerente, cpfFuncionario) VALUES
    (12345678911, 12345678914),
    (12345678912, 12345678915),
    (12345678913, 12345678916);
    
INSERT INTO ITEM (idProduto, idVenda, quantidade) VALUES
    (500000001, 400000001, 1),
    (500000002, 400000002, 1),
    (500000003, 400000003, 1);