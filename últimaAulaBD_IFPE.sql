use locadora;

-- Contunuação da aula anterior; utilizando o JOIN, GROUP BY, ORDER BY, LIMIT, HAVING e FUNCOES DE AGREGAÇÃO:

select pa.pais, count(*) quantidade from cliente p
join endereco e on p.endereco_id = e.endereco_id
join cidade c on e.cidade_id = c.cidade_id
join pais pa on c.pais_id = pa.pais_id
group by pais
order by quantidade desc;

select c.cliente_id, c.primeiro_nome, c.email email, sum(p.valor) totalPagamentos
from cliente c
join pagamento p on c.cliente_id = p.cliente_id
group by c.cliente_id
order by totalPagamentos desc
limit 1;

select a.primeiro_nome, a.ultimo_nome, count(*) qtdFilmes
from ator a
join filme_ator fa on a.ator_id = fa.ator_id
group by a.primeiro_nome, a.ultimo_nome
having qtdFilmes >= 40; -- Where depois do agrupamento;


-- Utilização do IN e do NOT IN:

select * from filme
where classificacao in ("PG","G","R");

select * from filme
where classificacao not in ("PG","G","R");
 
-- SubQuery = Consultas aninhadas:

select cliente_id, primeiro_nome, ultimo_nome from cliente
where endereco_id in (select endereco_id from endereco where bairro = "Buenos Aires");

select * from filme
where idioma_id not in (select idioma_id from idioma
where nome = "English")


