-- --------     << aula3exer1evolucao4 >>     ------------
-- 
--                    SCRIPT DE MANIPULACAO (DML)
-- 
-- date Criacao ...........: 07/10/2019
-- Autor(es) ..............: Rafael Makaha Gomes Ferreira
-- Banco de Dados .........: mysql
-- Base de Dados(nome) ....: aula3exer1evolucao4
-- 
-- date Ultima Alteracao ..: 14/10/2019
--   => Criacao das tabelas e ajustes na documentacao dos scritps
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 01 Visao 
--         => 03 Sequences
-- 
-- -----------------------------------------------------------------

-- VIEW que apresenta plantonistas em cada especialidade
-- Boa para o Gestor saber quais especialidades cada
-- plantonista possui
CREATE VIEW PLANTONISTA_ESPECIALIDADE AS
  SELECT e.nome, pl.nome
    FROM possui p
    INNER JOIN PLANTONISTA pl ON pl.matricula = p.matricula
    INNER JOIN ESPECIALIDADE e ON e.idEspecialidade = p.idEspecialidade
    GROUP BY (e.nome);
-- Esta view tem a sua consulta agilizada com o Index no
-- nome da Especialidade.
CREATE INDEX indice_nome_ESPECIALIDADE on ESPECIALIDADE(nome);


-- Busca todos os Plantonistas de um determinado 
-- horário. É bom para que o usuário saiba
-- se o seu plantonista preferido está trabalhando
-- no horário desejado
SELECT a.datahora as "Horario", p.nome as "Nome"
  FROM alocado a 
  INNER JOIN PLANTONISTA p ON p.matricula = a.matricula
  WHERE a.datahora = '2019-09-20 08:00:00'
  GROUP BY (a.datahora);

-- Esta consulta tem sua busca agilizada com um index
-- do nome do Plantonista devido 
CREATE INDEX indice_Nome_Plantonista ON PLANTONISTA(nome);


--------------------------------------------------------