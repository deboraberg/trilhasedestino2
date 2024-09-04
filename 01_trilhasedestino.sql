-- CRiando arquivo
create database TrilhaseDestino;
-- Acessando Arquivo

use TrilhaseDestino;
-- Criando tabelas 
CREATE TABLE Clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
sobrenome VARCHAR(255),
email VARCHAR(255),
telefone VARCHAR(20),
endereco VARCHAR (255)
);

CREATE TABLE Destinos (
id_destino INT PRIMARY KEY AUTO_INCREMENT,
nome_destino VARCHAR(255),
descricao TEXT,
preco DECIMAL(10, 2)
);

CREATE TABLE Pacotes(
id_pacote INT PRIMARY KEY AUTO_INCREMENT,
nome_pacote VARCHAR(255),
descricao TEXT,
preco DECIMAL(10, 2),
id_destino INT,
FOREIGN KEY (id_destino) REFERENCES Destinos(id_destino)
);

CREATE TABLE Reservas (
id_reserva INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_pacote INT,
data_reserva DATE,
status VARCHAR(20),
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_pacote) REFERENCES Pacotes(id_pacote)
);
CREATE TABLE Pagamentos(
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
id_reserva INT,
valor DECIMAL(10, 2),
data_pagamento DATE,
FOREIGN KEY (id_reserva) REFERENCES Reservas(id_reserva)
);
