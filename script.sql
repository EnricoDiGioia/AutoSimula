-- Cria DataBase

Create Database if Not exists AutoSimula DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_0900_ai_ci;

-- Usa DataBase

use AutoSimula;

-- Cria Tabelas

CREATE TABLE Carros (
    id_carro INT AUTO_INCREMENT PRIMARY KEY,
    id_combustivel INT,
    id_localizacao INT,
    cilindradas FLOAT,
    usado BOOLEAN NOT NULL, 
    id_fabricante INT,
    quilometragem INT,
    ano_modelo YEAR NOT NULL,
    automatico boolean,             
    versao VARCHAR(100) NOT NULL,
	  modelo VARCHAR(100),
    FOREIGN KEY (id_combustivel) REFERENCES Combustivel(id_combustivel),
    FOREIGN KEY (id_localizacao) REFERENCES Localizacao(id_localizacao),
    foreign key (id_fabricante) references Fabricante(id_fabricante)
);

CREATE TABLE Fabricante(
	id_fabricante INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(60)
);

CREATE  TABLE Localizacao(
    id_localizacao INT AUTO_INCREMENT PRIMARY KEY,
    estado CHAR(2) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

CREATE TABLE combustivel(
id_combustivel INT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(50) NOT NULL  #gasolina, alcool, flex, diesel, eletrico
);

-- Querys para pegar os dados

