
-- Fazer uma busca extraindo dados de tabelas diferentes;
/*
# Consulta:
  -Implcita: WHERE
  -Explicita: JOIN
*/

/*
# JOIN {
SELECT p.nomeprod, c.nomecat
FROM produto p
JOIN catgoria c ON p.idcategoria = c.idcategoria
}

# LEFT JOIN {
SELECT p.nomeprod, c.nomecat
FROM produto p
LEFT JOIN catgoria c ON p.idcategoria = c.idcategoria
}


# RIGHT JOIN {
SELECT p.nomeprod, c.nomecat
FROM produto p
RIGHT JOIN catgoria c ON p.idcategoria = c.idcategoria
}

# FULL JOIN (Depende do SGBD){
SELECT p.nomeprod, c.nomecat
FROM produto p
FULL JOIN catgoria c ON p.idcategoria = c.idcategoria
}
*/


/*
# (Junção Base)Produto cartesiano:
    select * from tabela1, tabela2
*/







