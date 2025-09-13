

create database qacademico;
use qacademico;

create table campus(
idCampus int auto_increment,
nome varchar(50) not null,
primary key(idCampus)
);

create table curso(
idCurso int auto_increment,
nome varchar(50),
primary key(idCurso)
);

insert into curso(nome) value ("Lic. Comp."),("Eng. Civil"),("Enfermagem");
insert into campus(nome) value ("Recife"),("Olinda"),("Paulista"),("Afogados");

create table curso_campus(
cursoId int,
campusId int,
cHoraria int not null,
foreign key (cursoId) references curso(idCurso),
foreign key (campusId) references campus(idCampus)
);

insert into curso_campus(cursoId, campusId, cHoraria) select curso.idCurso, campus.idCampus,  "3600" from curso, campus where curso.idCurso = 1 and campus.idCampus = 4;
insert into curso_campus(cursoId,campusId,  cHoraria) select curso.idCurso, campus.idCampus,  4800 from curso, campus  where curso.idCurso = 2 and campus.idCampus =  4;
insert into curso_campus( cursoId, campusId, cHoraria) select curso.idCurso, campus.idCampus,  3600 from curso, campus where curso.idcurso = 3 and campus.idCampus = 2;
insert into curso_campus( cursoId, campusId, cHoraria) select curso.idCurso, campus.idCampus,  3200 from curso, campus where curso.idcurso = 1 and campus.idCampus = 3;

create table aluno(
idAluno int auto_increment,
nome varchar(50),
matricula int,
dNasc date,
bolsista int,
cursoId int,
campusId int,
foreign key (cursoId) references curso(idCurso),
foreign key (campusId) references campus(idCampus),
primary key (idAluno)
);

insert into aluno(nome,matricula,dNasc,bolsista, cursoId, campusId) select "Rafael",12345,"1988-11-12",1,curso.idCurso, campus.idCampus from curso, campus where curso.idcurso = 1 and campus.idCampus = 4;
insert into aluno(nome,matricula,dNasc,bolsista, cursoId, campusId) select "João",9999,"1999-1-12",0,curso.idCurso, campus.idCampus from curso, campus where curso.idcurso = 2 and campus.idCampus = 1;
insert into aluno(nome,matricula,dNasc,bolsista, cursoId, campusId) select "José",7777,"2000-01-01",1,curso.idCurso, campus.idCampus from curso, campus where curso.idcurso = 3 and campus.idCampus = 3;

delete from aluno where aluno.cursoId = 1;
update curso set nome = "Licenciatura em Computação" where idCurso = 1;
update curso_campus set cHoraria = "4000" where cursoId = 1 and campusId = 4;
alter table aluno add column bolsaValor double;
update aluno set bolsaValor = 100 where aluno.bolsista = 1; 
update aluno set bolsaValor = 100 + (100*20) / 100 where aluno.bolsaValor = 100;







 


