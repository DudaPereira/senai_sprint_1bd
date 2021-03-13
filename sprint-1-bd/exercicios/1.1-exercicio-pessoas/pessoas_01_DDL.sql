CREATE DATABASE Pessoa;

USE Pessoa; 

CREATE TABLE Pessoa 
(
   idPessoa        INT PRIMARY KEY IDENTITY
   ,NomePessoa     VARCHAR(100) NOT NULL
   ,DataNascimento DATE NOT NULL
   ,CPF            CHAR(16) NOT NULL
   ,RG             CHAR(10) NOT NULL
);

CREATE TABLE Telefone
(
   idTelefone      INT PRIMARY KEY IDENTITY
   ,Numero         VARCHAR(9) NOT NULL
   ,Operadora      VARCHAR(5) NOT NULL
   ,idPessoa       INT FOREIGN KEY REFERENCES Pessoa(idPessoa)
);

CREATE TABLE Email
(
  idEmail          INT PRIMARY KEY IDENTITY
  ,Email           VARCHAR(100) NOT NULL
  ,idPessoa        INT FOREIGN KEY REFERENCES Pessoa(idPessoa)
);

CREATE TABLE CNH
(
  idCNH            INT PRIMARY KEY IDENTITY
  ,Foto            varchar (210) NOT NULL
  ,idPessoa        INT FOREIGN KEY REFERENCES Pessoa(idPessoa)
);