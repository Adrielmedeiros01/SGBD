/*

# Funções de Agregação: (Todas retornam um único valor):
# Resumir e extrai infomações:

- COUNT(*)  = Quantidade total;
- SUM(VALOR) = Soma dos valores;
- AVG(PRECO) = Valor médio;
- MAX(PRECO) = Maior valor;
- MIN(PRECO) = Menor valor;

*/


-- Retorne a quantidade de clientes:
select count(*) from cliente;

-- Retorne maior valor:
select max(data_de_aluguel) from aluguel;

-- Exibe a quantidade de itens da tabela que começam com a letra A:
select count(*) from ator where primeiro_nome like 'A%';
