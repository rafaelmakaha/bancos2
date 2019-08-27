use aula1exer2Evolucao3;

-- A)	Consultar todas as vendas feitas por um empregado específico definido pela sua chave primária na pesquisa;
select 
  pe.nome,
  v.idVenda,
  v.dtVenda as dataVenda,
  v.matricula as matriculaEmpregado,
  p.codigo as codigoProduto,
  p.quantidade * pr.precoUnitario as total,
  pr.nome as nomeProduto
  from VENDA as v
    inner join possui as p
      on p.idVenda = v.idVenda
    inner join PRODUTO as pr
      on pr.codigo = p.codigo
    inner join EMPREGADO as e
      on e.matricula = v.matricula
    inner join PESSOA as pe
      on pe.cpf = e.cpf
where v.matricula = 51662; -- matricula do empregado aqui

-- B)	Relacionar todos os dados de uma venda com todas as informações dos produtos comercializados por esta venda específica;
select * from VENDA as v
  inner join possui as p
    on v.idVenda = p.idVenda
  inner join PRODUTO as pr
    on p.codigo = pr.codigo;

-- C)	Mostrar todos os empregados da empresa que não sejam gerentes em ordem alfabética crescente;
select * from EMPREGADO as e
  inner join PESSOA as p
    on e.cpf = p.cpf
  order by p.nome ASC;

-- D) Consultar e mostrar a quantidade de CADA produto que foi vendido por esta empresa.
select pr.codigo, pr.nome, sum(p.quantidade) from possui as p
  inner join PRODUTO as pr
    on pr.codigo = p.codigo
  group by pr.codigo;