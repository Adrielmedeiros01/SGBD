CREATE DATABASE hospvet;

use hospvet;

CREATE TABLE cliente (
  idCliente int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  PRIMARY KEY (idCliente)
);

CREATE TABLE animal (
  idAnimal int  AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  clienteId int,
  PRIMARY KEY (idAnimal),
  FOREIGN KEY (clienteId) REFERENCES cliente(idCliente)
);

CREATE TABLE veterinario (
  idVeterinario int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  PRIMARY KEY (idVeterinario)
);

CREATE TABLE enfermidade (
  idEnfermidade int AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  PRIMARY KEY (idEnfermidade)

);


CREATE TABLE consulta (
  idConsulta int  AUTO_INCREMENT,
  dataConsulta datetime NOT NULL,
  animalId int ,
  veterinarioId int ,
  PRIMARY KEY (idConsulta),
  FOREIGN KEY (animalId) REFERENCES animal(idAnimal),
  FOREIGN KEY (veterinarioId) REFERENCES veterinario(idVeterinario)
);


CREATE TABLE diagnostico (
  consultaId int ,
  enfermidadeId int ,
  FOREIGN KEY (consultaId) REFERENCES consulta(idConsulta),
  FOREIGN KEY (enfermidadeId) REFERENCES enfermidade(idEnfermidade)
)



