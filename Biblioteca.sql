create database biblioteca;
use biblioteca;

create table bibliotecario (
idBibliotecario int auto_increment,
nome varchar(100) not null,
matricula int not null,
primary key (idBibliotecario)
);

create table pessoa(

idPessoa int auto_increment,
nome varchar(100) not null,
endereco varchar(100) not null,
cpf varchar(50) not null,
primary key (idPessoa)

);

create table genero (

idGenero int auto_increment,
nome varchar(100) not null,
primary key (idGenero)

);

create table autor(

idAutor int auto_increment, 
nome varchar(100) not null,
primary key (idAutor)

);

create table reserva (

idReserva int auto_increment,
dataReserva datetime not null,
pessoaId int,
bibliotecarioId int,
foreign key (pessoaId) references pessoa(idPessoa),
foreign key (bibliotecarioId) references bibliotecario(idBibliotecario),
primary key (idReserva)

);

create table livro (

idLivro int auto_increment,
nome varchar(100) not null,
paginas int not null,
generoId int,
foreign key (generoId) references genero(idGenero),
primary key (idLivro)

);

create table reservaLivro (

reservaId int,
livroId int,
foreign key (reservaId) references reserva(idReserva),
foreign key (livroId) references livro(idLivro)

);

create table autorLivro(

autorId int,
livroId int,

foreign key (autorId) references autor(idAutor),
foreign key (livroId) references livro(idLivro)


);

