-- --------            << Aula 1 Exercicio 2 >>            ------------ --
--                                                                   --
--                    SCRIPT DE INSERÇÃO (DML)                       --
--                                                                   --
-- Data Criacao ..........: 19/08/2019                               --
-- Autor(es) .............: Ana Carolina Carvalho da Silva           --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula1exer2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 19/08/2019                              --
--    + Insercao no banco de dados                                   --
--                                                                   --
-- PROJETO => 01 Base de Dados                                       --
--         => 06 Tabelas                                             --
--                                                                   --
-- ----------------------------------------------------------------- --

use aula1exer2;

INSERT INTO GERENTE VALUES('superior','ana@gmail.com','Ana','05478392214','senha123');
INSERT INTO GERENTE VALUES('medio','carolina@gmail.com','Carolina','83498273328','secret123');
INSERT INTO GERENTE VALUES('superior','carvalho@gmail.com','Amanda','90268549924','thesims123');

INSERT INTO EMPREGADO VALUES('190063882','Margarida','casa','Rio de Janeiro','Rafaela','56874287635','abc123');
INSERT INTO EMPREGADO VALUES('180056529','Rosa','casa','Rio de Janeiro','Marta','9672006974','rosa123');
INSERT INTO EMPREGADO VALUES('150183571','Alfa','casa','Rio de Janeiro','Sandra','19830987401','home123');

INSERT INTO PRODUTO VALUES('1223','10.00');
INSERT INTO PRODUTO VALUES('1234','20.00');
INSERT INTO PRODUTO VALUES('1267','30.00');

INSERT INTO telefone VALUES('33334444','190063882');
INSERT INTO telefone VALUES('33335555','180056529');
INSERT INTO telefone VALUES('33339999','150183571');

INSERT INTO supervisiona VALUES('05478392214','190063882');
INSERT INTO supervisiona VALUES('83498273328','180056529');
INSERT INTO supervisiona VALUES('90268549924','150183571');

INSERT INTO vende VALUES('190063882','1223','2019-07-06','30.00','3');
INSERT INTO vende VALUES('180056529','1234','2019-07-03','40.00','2');
INSERT INTO vende VALUES('150183571','1267','2019-06-07','240.00','7');