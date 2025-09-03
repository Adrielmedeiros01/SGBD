
create database locadora;

use locadora;

create table genero(

idGenero int auto_increment,
nome varchar(100) not null,
primary key (idGenero)

);

create table filme(
idFilme int auto_increment,
nome varchar(100) not null,
duracao int not null,
anoLancamento datetime not null,
primary key (idFilme)

);

create table generoFilme(

filmeId int,
generoId int,
foreign key (filmeId) references filme(idFilme),
foreign key (generoId) references genero(idGenero)

);

create table tipoProtagonismo(

idProtag int auto_increment,
tipo varchar(100) not null,
primary key(idProtag)

);

create table ator (

idAtor int auto_increment,
nome varchar(100) not null,
nascimento datetime not null,
primary key (idAtor)


);

create table filmeAtor(

filmeId int,
atorId int,
protagId int,
foreign key (filmeId) references filme(idFilme),
foreign key (atorId) references ator(idAtor),
foreign key (protagId) references tipoProtagonismo(idProtag)

);

create table cliente(

idCliente int auto_increment,
nome varchar(100) not null,
cpf varchar(50) not null,
endereço varchar(100) not null,
primary key (idCliente)
 
);


create table tipoMidia(

idTipoMidia int auto_increment,
nome varchar(100) not null,
primary key (idTipoMidia)

);

create table midia (

idMidia int auto_increment,
dataCompra datetime not null,
filmeId int,
tipoMidiaId int,

foreign key (filmeId) references filme(idFilme),
foreign key (tipoMidiaId) references tipoMidia(idTipoMidia),
primary key(idMidia)


);


create table pedido(

idPedido int auto_increment,
dataPedido datetime not null,
valor double not null,
clienteId int,
foreign key (clienteId) references cliente(idCliente),
primary key (idPedido)

);

create table pedidoMidia (

pedidoId int,
midiaId int,
foreign key (pedidoId) references pedido(idPedido),
foreign key (midiaId) references midia(idMidia)

);


