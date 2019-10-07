-- --------            << aula3exer1Evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT DE CONTROLE (DCl\DDL)                        --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves 			 --
-- 							Eduardo Júnio Veloso Rodrigues
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1Evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 02/10/2019                              --
--    + Criacao de usuários: admin, usuario e gestor  
--
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 3 Usuarios						                                 --
--         => 5 Tabelas                                              --
--         => 1 View                                                      --
-- ----------------------------------------------------------------- --


use aula3exer1Evolucao2;

-- administrador: possui todos os privilégios sobre essa base de dados somente, pois será o DBA para administrar essa base de dados;

CREATE USER 'administrador'@'localhost' IDENTIFIED BY 'adm123';
GRANT ALL PRIVILEGES ON aula3exer1Evolucao2.* TO 'administrador'@'localhost';

-- usuario: possui todos os privilégios de consulta de dados sobre a base de dados desse projeto somente;

CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'user123';
GRANT SELECT ON aula3exer1Evolucao2.* TO 'usuario'@'localhost';

-- gestor: possui os privilégios de consultar os dados de todas as tabelas dessa base de dados, mas também pode cadastrar e alterar dados do plantonista e do setor do hospital.
CREATE USER 'gestor'@'localhost' IDENTIFIED BY 'gestor123';
GRANT SELECT ON aula3exer1Evolucao2.* TO 'gestor'@'localhost';
GRANT INSERT ON aula3exer1Evolucao2.PLANTONISTA TO 'gestor'@'localhost';
GRANT INSERT ON aula3exer1Evolucao2.SETOR TO 'gestor'@'localhost';
GRANT UPDATE ON aula3exer1Evolucao2.PLANTONISTA TO 'gestor'@'localhost';
GRANT UPDATE ON aula3exer1Evolucao2.SETOR TO 'gestor'@'localhost';