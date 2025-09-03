CREATE DATABASE concessionaria;

use concessionaria;

CREATE TABLE cliente (
  idCliente int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  cpf varchar(20) NOT NULL,
  telefone varchar(100) NOT NULL,
  PRIMARY KEY (idCliente)
);

CREATE TABLE pedido (
  idPedido int  AUTO_INCREMENT,
  dataCampra datetime NOT NULL,
  valor double NOT NULL,
  clienteId int,
  PRIMARY KEY (idPedido),
  FOREIGN KEY (clienteId) REFERENCES cliente(idCliente)
);


CREATE TABLE marca (
  idMarca int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  PRIMARY KEY (idMarca)
);


CREATE TABLE modelo (
  idModelo int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  marcaId int,
  PRIMARY KEY (idModelo),
  FOREIGN KEY (marcaId) REFERENCES marca(idMarca)
);

CREATE TABLE automovel (
  idAutomovel int AUTO_INCREMENT,
  placa varchar(50) NOT NULL,
  modeloId int,
  PRIMARY KEY (idAutomovel),
  FOREIGN KEY (modeloId) REFERENCES modelo(idModelo)
);


CREATE TABLE pedidoautomovel (
  pedidoId int,
  automovelId int,
  FOREIGN KEY (pedidoId) REFERENCES pedido(idPedido),
  FOREIGN KEY (automovelId) REFERENCES automovel(idAutomovel)
);


