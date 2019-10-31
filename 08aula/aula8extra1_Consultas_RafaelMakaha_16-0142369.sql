use game;

-- Esta busca apresentará os 5 jogos mais vendidos de uma determinada publicadora
-- Ajuda na decisão de uma loja em escolher os jogos a serem revendidos
-- Esta busca se utiliza das chaves primárias, ou seja, o banco se utiliza
-- de índices para realizar suas buscas

select g.name as "Jogo",(na_sales + jp_sales + other_sales + eu_sales) as "total"
  from game g
  inner join publisher p on p.id_publisher = g.id_publisher
  where p.publisher_name = 'Nintendo'
  order by total desc,Jogo
  limit 5;

-- Este select apresenta os Shooters com maior quantidade de jogadores
-- Ajuda a saber quais jogos são mais propícios a se realizar campeonatos
-- Não há necessidade de se criar um index para o nome dos gêneros
-- devido a existirem poucas categorias de jogos.

select g.name as "Jogo", g.user_count as "Users"
  from game g
  inner join genre p on p.id_genre = g.id_genre
  where p.description = 'Shooter'
  order by Users desc,Jogo
  limit 5;