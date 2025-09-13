
create database concessionaria;
use concessionaria;

create table cliente(
idCliente int auto_increment,
nome varchar(50) not null,
cpf varchar(50) not null,
telefone varchar(50) not null,
primary key (idCliente)
);

create table pedido(
idPedido int auto_increment,
dataCompra date,
valor double not null,
clienteId int,
foreign key (clienteId) references cliente(idCliente),
primary key (idPedido)
);

create table marca(
idMarca int auto_increment,
nome varchar(50),
primary key (idMarca)
);

create table modelo(
idModel int auto_increment,
nome varchar(50) not null,
marcaId int,
foreign key (marcaId) references marca(idMarca),
primary key(idModel)
);

create table automovel(
idAutomovel int auto_increment,
placa varchar(50) not null,
pedidoId int,
modelId int,
foreign key (pedidoId) references pedido(idPedido),
foreign key (modelId) references modelo(idModel),
primary key (idAutomovel)

);

insert into marca(nome) value ("Ferrari"),("Volkswagem");
insert into cliente(nome,cpf,telefone) value ("Rafael", "1.2.3-4","(99)99-99");
insert into modelo(nome, marcaId) select "F50", marca.idMarca from marca where marca.idMarca = 1;
insert into modelo(nome, marcaId) select "Fusca", marca.idMarca from marca where marca.idMarca = 2;
insert into pedido(dataCompra, valor,clienteId) select "2025-09-25", 7000000, cliente.idCliente from cliente where cliente.idCliente = 1;
insert into automovel(placa, pedidoId, modelId) select "IT-8888", pedido.idPedido, modelo.idModel from pedido,  modelo where pedido.idPedido = 1 and modelo.idModel = 1;
insert into automovel(placa, pedidoId, modelId) select "BR-7777", pedido.idPedido, modelo.idModel from pedido, modelo where pedido.idPedido = 1  and modelo.idModel = 2;

update pedido set valor = 30000 where idPedido = 1;

