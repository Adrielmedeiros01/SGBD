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

-- Quantidade que possui x condição:
select count(*) from filme where duracao_do_filme >= 90;

-- Média de valores que possui a seuinte condição:
select avg(preco_da_locacao) from filme where ano_de_lancamento = 2006 and classificacao = 'R';

-- Soma dos valores de uma coluna, colocando esse valor em uma coluna apelidada de x, seguindo a seguinte condições:
select sum(valor) as total_pagamentos from pagamento  where data_de_pagamento between "2005-03-10" and "2005-11-30";


