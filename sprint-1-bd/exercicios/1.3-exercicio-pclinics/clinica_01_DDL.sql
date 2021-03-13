CREATE DATABASE Clinica;

USE Clinica

CREATE TABLE Clinica
(   
  idClinica INT PRIMARY KEY IDENTITY
  ,Endereco VARCHAR(100) NOT NULL
  ,NomeClinc VARCHAR(100) NOT NULL
);
CREATE TABLE Veterinario
(
  idVeterinario INT PRIMARY KEY IDENTITY
  ,NomeVet      VARCHAR(100) NOT NULL
  ,CRM          CHAR(7) NOT NULL
  ,Idade        CHAR(2) NOT NULL
  ,idClinica    INT FOREIGN KEY REFERENCES Clinica(idClinica)
);
CREATE TABLE Dono
(
  idDono        INT PRIMARY KEY IDENTITY
  ,NomeDono     varchar (50) not null
  ,Idade        CHAR(2) Not null
  ,TelefoneDono CHAR(9) NOT NULL
);
CREATE TABLE Tipo
(
  idTipo    INT PRIMARY KEY IDENTITY
  ,NomeTipo VARCHAR(50) NOT NULL
);
CREATE TABLE Raca
(
  idRaca    INT PRIMARY KEY IDENTITY
  ,NomeRaca VARCHAR(50) NOT NULL
  ,idTipo   INT FOREIGN KEY REFERENCES Tipo(idTipo)
);
CREATE TABLE Pet
(
  idPet           INT PRIMARY KEY IDENTITY
  ,NomePet        VARCHAR(50) NOT NULL
  ,DataNascimento Date NOT NULL
  ,idRaca         INT FOREIGN KEY REFERENCES Raca(idRaca)
  ,idDono         INT FOREIGN KEY REFERENCES Dono(idDono)
);
create table Atendimento
(
	idAtendimento     Int PRIMARY KEY IDENTITY
	,HoraAtendimento  TIME not null
	,FichaCadastroPet VARCHAR (150) not null
	,DataAtendimento  DATE not null
	,idPet            INT FOREIGN KEY REFERENCES Pet(idPet)
	,idVeterinario    INT FOREIGN KEY REFERENCES Veterinario(idVeterinario)
);