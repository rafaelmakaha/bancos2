-- --------            << aula3exer1Evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT DE MANIPULACAO (DML)                        --
--                                                                   --
-- Data Criacao ..........: 02/10/2019                               --
-- Autor(es) .............: Daniel Maike Mendes Gonçalves 			 --
-- 							Eduardo Júnio Veloso Rodrigues
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1Evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 02/10/2019                              --
--    + Inserção de dados                                         --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 3 Usuarios						                                 --
--         => 5 Tabelas                                              --
--         => 1 View                                                      --
-- ----------------------------------------------------------------- --

USE aula3exer1Evolucao2;

INSERT ALL
    INTO PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) 
    VALUES (4231432, 'Neymar Junior dos Santos', 'M')

    INTO PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) 
    VALUES (51253152, 'Rivaldo Martins Mendes', 'M')
    
    INTO PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) 
    VALUES (124344, 'Everton Gabriel Oliveira', 'M')
SELECT 1 FROM DUAL;

INSERT ALL
    INTO ESPECIALIDADE (codigo, nomeEspecialidade) 
    VALUES (123, 'Cardiologia')
    
    INTO ESPECIALIDADE (codigo, nomeEspecialidade) 
    VALUES (33, 'Endocrinologia')
    
    INTO ESPECIALIDADE (codigo, nomeEspecialidade) 
    VALUES (44, 'Ginecologia')
SELECT 1 FROM DUAL;

INSERT ALL
    INTO possui (matriculaFuncional, codigo) 
    VALUES (4231432, 123)

    INTO possui (matriculaFuncional, codigo) 
    VALUES (4231432, 33)

    INTO possui (matriculaFuncional, codigo) 
    VALUES (51253152, 44)
SELECT 1 FROM DUAL;

INSERT ALL
    INTO SETOR (codigoSetor, nomeSetor) 
    VALUES (321, 'Ambulatorio')

    INTO SETOR (codigoSetor, nomeSetor) 
    VALUES (4243,'Centro Cirurgico' )

    INTO SETOR (codigoSetor, nomeSetor) 
    VALUES (423, 'Pronto Atendimento')
SELECT 1 FROM DUAL;

INSERT ALL
    INTO atende (dthora, codigoSetor, matriculaFuncional) 
    VALUES ('12-09-2019', '321', '4231432')

    INTO atende (dthora, codigoSetor, matriculaFuncional) 
    VALUES ('09-10-2019', '4243', '51253152')

    INTO atende (dthora, codigoSetor, matriculaFuncional) 
    VALUES ('09-14-2019', '423', '124344')

    INTO atende (dthora, codigoSetor, matriculaFuncional) 
    VALUES ('09-15-2019', '321', '51253152')
SELECT 1 FROM DUAL;
