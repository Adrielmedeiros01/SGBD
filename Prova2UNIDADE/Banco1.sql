DROP DATABASE IF EXISTS ecommerce;

CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE categoria(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produto(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco FLOAT NOT NULL,
    idCategoria INT NOT NULL,
    FOREIGN KEY (idCategoria) REFERENCES categoria(id)
);

CREATE TABLE cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    salario FLOAT
);

CREATE TABLE pedido(
	id INT PRIMARY KEY AUTO_INCREMENT,
    dataPedido DATETIME DEFAULT(NOW()),
    idCliente INT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES cliente(id)
);

CREATE TABLE pedido_produto(
	idPedido INT,
    idProduto INT,
    PRIMARY KEY(idPedido, idProduto),
    FOREIGN KEY (idPedido) REFERENCES pedido(id),
    FOREIGN KEY (idProduto) REFERENCES produto(id)
);

INSERT INTO categoria (nome) VALUES
('Informática'),
('Eletrônicos'),
('Eletrodomésticos'),
('Móveis'),
('Infantil'),
('Esportivo'),
('Vestuário');

INSERT INTO cliente (nome, email, salario) VALUES
('Rafael Ferreira', 'rafael.ferreira@ecommerce.ifpe.com', 1000),
('José Godofredo', 'jose.godofredo@ecommerce.ifpe.com', 2000),
('Maria Joaquina', 'maria.joaquina@ecommerce.ifpe.com', 3000),
('Roberta Soares', 'roberta.soares@ecommerce.ifpe.com', 4000),
('Daniel Silva', 'daniel.silva@ecommerce.ifpe.com', 5000),
('Fernando José', 'fernando.jose@ecommerce.ifpe.com', 6000),
('Suely Silva', 'suely.silva@ecommerce.ifpe.com', 7000),
('Simone Biles', 'simone.biles@ecommerce.ifpe.com', 8000),
('Galvão Bueno', 'galvao.bueno@ecommerce.ifpe.com', 9000),
('Neymar Júnior', 'neymar.junior@ecommerce.ifpe.com', 10000);

INSERT INTO produto (nome, preco, idCategoria) VALUES 
('Monitor', 800, 1),
('Notebook', 3000, 1),
('Teclado', 100, 1),
('Roteador', 70, 1),
('Mouse', 30, 1),
('Smartphone', 999, 2),
('Fone de ouvido', 200, 2),
('Alexa', 300, 2),
('TV', 2500, 2),
('Soundbar', 1500, 2),
('Geladeira', 4000, 3),
('Microondas', 800, 3),
('Fogão', 500, 3),
('Airfryer', 300, 3),
('Liquidificador', 100, 3),
('Cama', 500, 4),
('Rack', 250, 4),
('Mesa', 700, 4),
('Guarda-roupa', 1200, 4),
('Cômoda', 350, 4),
('Chupeta', 20, 5),
('Carrinho de bebê', 900, 5),
('Cercadinho', 300, 5),
('Babá eletrônica', 500, 5),
('Fralda', 70, 5),
('Bola', 99, 6),
('Luva', 70, 6),
('Chuteira', 150, 6),
('Bicicleta', 550, 6),
('Prancha', 750, 6),
('Vestido', 250, 7),
('Bermuda', 70, 7),
('Calça jeans', 120, 7),
('Camiseta', 50, 7),
('Meia', 20, 7);

INSERT INTO pedido (dataPedido, idCliente) VALUES
('2024-01-30 07:32', 1),
('2024-05-10 19:50', 1),
('2024-04-15 00:15', 1),
('2024-12-17 09:32', 2),
('2024-11-22 15:01', 2),
('2024-10-11 17:44', 3),
('2024-03-19 13:37', 5),
('2024-09-07 02:50', 6),
('2024-08-29 18:19', 7),
('2024-07-05 22:54', 8);

INSERT INTO pedido_produto(idPedido, idProduto) VALUES
(1, 2),
(1, 7),
(1, 12),
(1, 22),
(2, 4),
(3, 10),
(3, 30),
(3, 20),
(4, 15),
(4, 17),
(5, 5),
(6, 9),
(6, 19),
(6, 29),
(6, 25),
(6, 32),
(6, 5),
(7, 3),
(7, 4),
(7, 5),
(8, 24),
(9, 25),
(10, 10),
(10, 17);
