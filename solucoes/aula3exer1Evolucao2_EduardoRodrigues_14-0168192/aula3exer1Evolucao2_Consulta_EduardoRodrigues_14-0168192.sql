-- --------            << aula3exer1Evolucao2 >>                 ------------ --
--                                                                   --
--                    SCRIPT DE CRIACAO (DDL)                        --
--                                                                   --
-- Data Criacao ..........: 27/09/2019                               --
-- Autor(es) .............: Eduardo Júnio Veloso Rodrigues			 --
-- 							
-- Banco de Dados ........: MySQL                                    --
-- Base de Dados(nome) ...: aula3exer1Evolucao2                               --
--                                                                   --
-- Data Ultima Alteracao ..: 02/10/2019                              --
--    + Criacao de view                                       --
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 3 Usuarios						                                 --
--         => 5 Tabelas                                              --
--         => 1 View                                                      --
-- ----------------------------------------------------------------- --


use aula3exer1Evolucao2;

-- Permite visualizar os atendimentos que cada plantonista vai realizar em cada setor entre duas
-- datas. Auxilia os responsáveis pela criação das escalas a melhor distribuir os plantonistas 
-- de forma a atender todos os setores.
CREATE VIEW v_PLANTOES (setor, dtHora, plantonista, matricula) AS
	SELECT s.nomeSetor, a.dtHora, p.nomeCompleto, p.matriculaFuncional 
		FROM atende a
			INNER JOIN SETOR s
				ON a.codigoSetor=s.codigoSetor
			INNER JOIN PLANTONISTA p
				ON a.matriculaFuncional=p.matriculaFuncional
		where a.dtHora between '2019-12-09' and '2019-12-25'
		order by p.matriculaFuncional, s.nomeSetor;