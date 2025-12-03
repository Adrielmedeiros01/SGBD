
-- Exiba os nomes dos produtos que possuam preço entre 500 e 1000, e que
-- comecem com a letra ‘M’. Ordene de maneira decrescente pelo nome.
select p.nome from produto p
where preco between 500 and 1000
having nome like"M%"
order by nome desc;

-- Nome do cliente que efetuou o primeiro pedido:
select c.nome from pedido p 
join cliente c on p.idCliente = c.id
limit 1;

-- Nome de cada produto e sua respectiva categoria:
select p.nome, c.nome as categoria from produto p
join categoria c on p.idCategoria = c.id;

-- Preço médio dos produtos por categorias:
select avg(preco) as precoMedioCategoria from produto p
join categoria c on p.idCategoria = c.id
group by c.id;

-- Data do pedido, nome do cliente e total de cada pedido:
select p.dataPedido, c.nome as nomeCliente, pr.preco as totPedido from pedido p
join cliente c on p.idCliente = c.id
join pedido_produto pd on p.id = pd.idPedido
join produto pr on pd.idProduto = pr.id
group by p.dataPedido;
