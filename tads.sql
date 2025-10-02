create database if not exists Editora;
use Editora;

CREATE TABLE if not exists Autores (
    ID_autor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_autor varchar (50) null,
    bio varchar (200) null,
    nacionalidade varchar (30) null,
    data_nasc date null,
    obras_escritas varchar(300) null
);


CREATE TABLE if not exists Livros (
    ISBN int UNIQUE PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (100) null,
    genero VARCHAR (20) null,
    descricao VARCHAR (200) null,
    impressoes INT NULL,
    paginas INT NULL,
    ano_pub date NULL,
    autor VARCHAR (100) null,
    ordem_autor varchar (100) null,
    ID_autor int,
    foreign key (iD_autor) references Autores(ID_autor)
);


CREATE TABLE if not exists Exemplares (
    ID_exemp INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    condicao varchar (200) not null,
    `status` ENUM("PESSIMO", "RUIM", "INDIFERENTE") not null
);


CREATE TABLE if not exists Clientes (
    ID_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome varchar(70) NOT NULL,
    email varchar(150) NOT NULL,
    telefone INT(17) NOT NULL,
    rua varchar(100) not null,
    estado varchar(200) not null,
    cidade varchar (200) not null
);


CREATE TABLE if not exists Funcionarios (
    ID_funcionarios INT primary key AUTO_INCREMENT not null,
    estado_civil varchar (100) not null,
    telefone INT (17) not null,
    cargo varchar (100) not null,
    nome varchar (100) not null,
    cidade varchar (100) not null,
    estado varchar (100) not null,
    rua varchar (100) not null,
    email varchar (100) not null
);


create table if not exists Departamentos (
    ID_depart INT primary key AUTO_INCREMENT not null,
    nome_depar varchar (150) not null,
    responsavel INT,
    FOREIGN KEY (responsavel) REFERENCES Funcionarios(ID_funcionarios),
    descricao_Ativ varchar (300) null
  );


CREATE TABLE if not exists Pedidos (
    ID_pedido varchar (300) not null PRIMARY KEY,
    data_pedido date not null,
    `status` varchar (300) not null,
    data_pagamento date not null,
    metodo_pagamento varchar (300) not null,
    clientes_ID int,
    FOREIGN KEY (clientes_ID) REFERENCES clientes(ID_cliente)
);


CREATE TABLE if not exists Identificadores (
    ID_ident Int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descricao varchar (300),
    palavra_chave varchar (300),
    livros_ISBN INT,
    FOREIGN KEY (livros_ISBN) REFERENCES livros(ISBN)
);


CREATE TABLE if not exists Areas_Conhec (
    ID_area INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    descricao varchar(100) null,
    codigo_area varchar (300) null
);
