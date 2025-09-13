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

create table automocel(

idAutomovel int auto_increment,
placa varchar(50) not null,
pedidoId int,
modelId int,
foreign key (pedidoId) references pedido(idPedido),
foreign key (modelId) references modelo(idModel),
primary key (idAutomovel)

);


insert into cliente(nome,cpf,telefone) value ("Rafael","1234","99999");

insert into marca(nome) value ("Ferrari"),("Volkswagem");

insert into placa()



