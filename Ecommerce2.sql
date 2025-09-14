

create database ecommerce2;
use ecommerce2;

create table categoria(

idCateg int auto_increment,
nome varchar(50) not null,
primary key (idCateg)

);

create table produto(

idProd int auto_increment,
nome varchar(50) not null,
preco double not null,
categId int,
primary key (idProd),
foreign key (categId) references categoria(idCateg)
);

create table cliente(

idCliente int auto_increment,
nome varchar(50) not null,
telefone varchar(50) not null, 
limiteCredito double not null,
primary key (idCliente)

);

create table pedido(

idPedido int auto_increment,
dataPedido date,
clienteId int,
primary key (idPedido),
foreign key (clienteId) references cliente(idCliente)

);

create table pedido_produto(

prodId int,
pedidoId int,
quantidade int,
foreign key (prodId) references produtos(idProd),
foreign key (pedidoId) references pedidos(idPedido)

);


insert into categoria(nome) value ("Informática"), ("Eletrônico");
insert into produto(nome, preco, categId) select "Notbook", 3000, categoria.idCateg from categoria where categoria.idCateg = 1;
insert into produto(nome, preco, categId) select "Smartphone", 1500, categoria.idCateg from categoria where categoria.idCateg = 2;
insert into produto(nome, preco, categId) select "Monitor", 500, categoria.idCateg from categoria where categoria.idCateg = 1;
insert into cliente(nome, telefone, limiteCredito) value ("Rafael","99999",7000), ("Cláudia","33333",9000);


insert into pedido(dataPedido, clienteId) select "2025-09-14", cliente.Idcliente from cliente where cliente.idCliente = 1;
insert into pedido_produto(prodId, pedidoId, quantidade) select produto.idProd, pedido.idPedido, 1 from produto, pedido where produto.idProd = 1 and pedido.idPedido = 1;
insert into pedido_produto(prodId, pedidoId, quantidade) select produto.idProd, pedido.idPedido, 2 from produto, pedido where produto.idProd = 2 and pedido.idPedido = 1;

update cliente set telefone = "77777" where idCliente = 1;
update cliente set limiteCredito = 7000 + (7000*20)/100 where idCliente = 1;
update cliente set limiteCredito = 9000 + (9000*20)/100 where idCliente = 2;
delete from cliente where idCliente = 1;










