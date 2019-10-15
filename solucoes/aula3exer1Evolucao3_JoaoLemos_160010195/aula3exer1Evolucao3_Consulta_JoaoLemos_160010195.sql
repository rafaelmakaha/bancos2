
--                                                                   --
--                      SCRIPT CONSULTA                              --
--                                                                   --
-- Data Criacao ...........: 14/09/2018                              --
-- Autor(es) ..............: Adrianne Alves da Silva                 --
-- Banco de Dados .........: MySQL                                   --
-- Banco de Dados(nome) ...: aula3exer1evolucao2                     --
--                                                                   --
-- Data Ultima Alteracao ..: 14/10/2018 - Alteração da terceira      --
--                               		view e criação de índices    --     
--                                                                   --
-- PROJETO => 1 Base de Dados                                        --
--         => 4 Tabelas                                              --
--         => 2 Usuarios                                             --
--         => 2 Visoes                                               --
--                                                                   --
-- ----------------------------------------------------------------- --


-- Acesso a base de dados
 USE aula3exer1evolucao2;


-- Analises propostas para DECISAO da instituicao


-- 1) CONSULTA simples do numero de plantonistas que trabalharao em uma data/horario em todos os setores
SELECT a.horarioInicio, COUNT(p.nomePlantonista)
  FROM Plantonista p, alocado a
 WHERE p.matriculaFuncional = a.matriculaFuncional
   AND a.horarioInicio = '2018-09-03 08:00:00';     -- <<== data e horario definido pelo usuario (padrao DATATIME)


-- 2) VIEW do numero de plantonistas por especialidade
CREATE VIEW numPlantonistasEspecialidades AS
  SELECT e.descEspecialidade, COUNT(p.nomePlantonista) AS numeroPlantonistas
    FROM Especialidade e, Plantonista p
   WHERE e.idEspecialidade = p.idEspecialidade
   GROUP BY e.idEspecialidade;


-- 3) VIEW de plantonistas por especialidade   
CREATE VIEW horario_plantonistas AS
	SELECT alocado.horarioInicio, plantonista.nomePlantonista
    FROM alocado, plantonista
    where alocado.matriculaFuncional = plantonista.matriculaFuncional
    GROUP BY alocado.horarioInicio;

-- Select 1 precisará de um índice no horárioInicio
create index indice_horario on alocado(horarioInicio);

-- Select 2 não precisará de índice, pois sua busca já é otimizada

-- Select 3 precisará de índice no nome do plantonista
create index indice_nomePlantonista on plantonista(nomePlantonista);
