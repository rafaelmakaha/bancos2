-- --------            << aula3exer1evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT CONTROLE (DDL/DCL)                      --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves            --
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 27/09/2019                              --
--    + Criando usuários admin, usuario e gestor                     --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 5 Tabelas                                              --
--                                                                   --
-- ----------------------------------------------------------------- --

use aula3exer1evolucao2;

-- administrador: possui todos os privilégios sobre essa base de dados somente, pois será o DBA para administrar essa base de dados;

CREATE USER 'administrador' IDENTIFIED BY 'adm123';
GRANT ALL PRIVILEGES ON aula3exer1evolucao2.* TO 'administrador';

-- usuario: possui todos os privilégios de consulta de dados sobre a base de dados desse projeto somente;

CREATE USER 'usuario' IDENTIFIED BY 'user123';
GRANT SELECT ON aula3exer1evolucao2.* TO 'usuario';

-- gestor: possui os privilégios de consultar os dados de todas as tabelas dessa base de dados, mas também pode cadastrar e alterar dados do plantonista e do setor do hospital.
CREATE USER 'gestor' IDENTIFIED BY 'gestor123';
GRANT SELECT ON aula3exer1evolucao2.* TO 'gestor';
GRANT INSERT ON aula3exer1evolucao2.PLANTONISTA TO 'gestor';
GRANT INSERT ON aula3exer1evolucao2.SETOR TO 'gestor';
GRANT UPDATE ON aula3exer1evolucao2.PLANTONISTA TO 'gestor';
GRANT UPDATE ON aula3exer1evolucao2.SETOR TO 'gestor';