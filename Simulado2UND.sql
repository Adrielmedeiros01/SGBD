use locadora;
/*
Exiba as categorias de filmes existentes e o valor médio de locação de
cada categoria respectiva. Os valores devem aparecer com um cifrão ao lado (ex.:
$ 2.890).
*/
select c.nome categoria, avg(f.preco_da_locacao) Valormedio  from filme f
join filme_categoria fc on f.filme_id = fc.filme_id
join categoria c on fc.categoria_id = c.categoria_id
group by c.nome; 
/*
Exiba o primeiro nome do funcionário que fez mais aluguéis.
*/
select f.primeiro_nome, count(a.funcionario_id) as qtdMais_alugueis from aluguel a
join funcionario f on a.funcionario_id = f.funcionario_id
group by a.funcionario_id
order by qtdMais_alugueis desc
limit 1;
/*
Exiba quantos filmes existem por categoria, em ordem decrescente
da quantidade.
*/
select c.nome, count(*) as qtd from filme f
join filme_categoria fc on f.filme_id = fc.filme_id
join categoria c on fc.categoria_id = c.categoria_id
group by c.categoria_id
order by qtd desc;
/*
Exiba as informações de título, ano de lançamento, idioma, duração
do filme e a quantidade de vezes que cada filme foi alugado.
*/
select f.titulo, f.ano_de_lancamento, i.nome as idioma, f.duracao_do_filme, count(a.midia_id) as qtdAlugueis from aluguel a
join midia m on a.midia_id = m.midia_id
join filme f on m.filme_id = f.filme_id
join idioma i on f.idioma_id = i.idioma_id
group by f.filme_id;
/*
Exiba o título do filme que gerou mais valor em pagamentos.
*/
select f.titulo, sum(p.valor) as maiorValor_em_Pagamentos from pagamento p
join aluguel a on p.aluguel_id = a.aluguel_id
join midia m on a.midia_id = m.midia_id
join filme f on m.filme_id = f.filme_id
group by f.filme_id
order by sum(p.valor) desc
limit 1;
