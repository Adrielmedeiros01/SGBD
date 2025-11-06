-- GROUP BY: 

  -- Agrupamento de linhas que possuem o mesmo valor;
  -- É utilizado com as funções de agrgação;
  -- Fica posicionado após o WHERE e antes do ORDER BY;
  --  SELECT, FROM, WHERE, GROUP BY, ORDER BY, LIMIT (Sequência de declaração);

use locadora;

-- Retorna a quantidade existente de acordo com a classificação:
select classificacao, count(*) as filmes_Existentes  from filme
group by classificacao;

-- Retorna o valor total de cada "cliente" ordenados em ordem decrescente:
select cliente_id, sum(valor) as compras_totais from pagamento 
group by cliente_id
order by compras_totais desc;

-- Expoiler de como utilizar o join e associar os devidos valores das chaves primarias as chaves estrangeiras:
select c.primeiro_nome, c.email, sum(p.valor) as compras_totais from pagamento p
join cliente c on p.cliente_id = c.cliente_id
group by p.cliente_id
order by compras_totais desc;

-- Quantidade existente para cada duração somente para os que possuem 90min minimos:
select duracao_do_filme, count(*) as qtd_filmes from filme
where duracao_do_filme >= 90
group by duracao_do_filme
order by duracao_do_filme;

-- Aplicando um filtro após o agrupamento com o HAVING (Exibindo apenas os que cumprem a clausula):
-- É como se fosse um WHERE só que depois do GROUP BY:
select duracao_do_filme, count(*) as qtd_filmes from filme
where duracao_do_filme >= 90
group by duracao_do_filme
having qtd_filmes >= 2
order by duracao_do_filme;
