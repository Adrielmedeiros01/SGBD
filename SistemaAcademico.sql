
create database sistemaAcademico;

use sistemaAcademico;

create table campus(

idCampus int auto_increment,
nome varchar(100) not null,
primary key (idCampus)

);

create table curso (

idCurso int auto_increment,
nome varchar(100) not null,
primary key (idCurso)

);

create table professor(

idProf int auto_increment,
nome varchar(100) not null,
matricula int not null,
primary key (idProf)

);

create table disciplina (

idDisciplina int auto_increment,
nome varchar(100) not null,
cargaHoraria int not null,
cursoId int,
professorId int,

foreign key (cursoId) references curso(idCurso),
foreign key (professorId) references professor(idProf),
primary key (idDisciplina)
);

create table cursoCampos(

cursoId int,
campusId int,
cargaHorario int not null,
foreign key (cursoId) references curso(idCurso),
foreign key (campusId) references campus(idCampus)

);

create table aluno(

idAluno int not null,
nome varchar(100) not null,
matricula int not null,
nascimento datetime not null,
cursoId int,
campusId int,
foreign key (cursoId) references curso(idCurso),
foreign key (campusId) references campus(idcampus),
primary key (idAluno)

);

