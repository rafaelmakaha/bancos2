
-- Esta visão apresenta quais plantonistas de especialidades
-- estão em setores não condizentes com suas 
-- especialidades

CREATE VIEW ESPECIALIDADE_SETOR (Setor, Quantidade_Plantonista) AS
    SELECT e
    FROM PLANTONISTA p
    INNER JOIN possui po ON po.matricula = p.matricula
    INNER JOIN ESPECIALIDADE_SETOR e ON e.idEspecialidade = po.idespecialidade
    INNER JOIN trabalha t ON t.matricula = p.matricula
    INNER JOIN SETOR s ON s.idSetor = t.matricula
    WHERE s.nome <> e.nome
    ORDER BY s.nome;
    