CREATE DATABASE Ecomerce;

use Ecomerce;

CREATE TABLE cliente (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  limite double DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pedido (
  id int NOT NULL AUTO_INCREMENT,
  dataPedido datetime NOT NULL,
  idCliente int  NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (idCliente) REFERENCES cliente(id)
);

CREATE TABLE produto (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL DEFAULT 'Sem nome',
  preco double NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pedidoproduto (
  idPedido int DEFAULT NULL,
  idProduto int DEFAULT NULL,
  quantidade int DEFAULT NULL,
  FOREIGN KEY (idPedido) REFERENCES pedido(id),
  FOREIGN KEY (idProduto) REFERENCES produto(id)
);



