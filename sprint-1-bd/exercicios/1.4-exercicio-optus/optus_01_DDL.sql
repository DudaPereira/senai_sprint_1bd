CREATE DATABASE Optus;

USE Optus;

CREATE TABLE Artista
(
	idArtista    INT PRIMARY KEY IDENTITY
	,nomeArtista VARCHAR(50) NOT NULL
);

create table Usuario
(
	idUsuario      INT PRIMARY KEY IDENTITY
	,NomeUsuario   VARCHAR(100) NOT NULL
	,Email         VARCHAR(100) NOT NULL
	,Senha         VARCHAR(10)  NOT NULL
	,TipoPermissao VARCHAR(10)  NOT NULL
);

CREATE TABLE Estilo
(
	idEstilo    INT PRIMARY KEY IDENTITY
	,NomeEstilo VARCHAR(80) NOT NULL
);

CREATE TABLE Album
(
	idAlbum         INT PRIMARY KEY IDENTITY
	,TituloAlbum    VARCHAR(50) NOT NULL
	,DataLancamento DATE NOT NULL
	,Localizacao    VARCHAR(150) NOT NULL
	,Minutos        VARCHAR(16) NOT NULL
	,AtivoVisu      VARCHAR(5) NOT NULL
	,idEstilo       INT FOREIGN KEY REFERENCES Estilo(idEstilo)
	,idArtista      INT FOREIGN KEY REFERENCES Artista(idArtista)
);

CREATE TABLE AlbumEstilo
(
	idAlbum   iNT FOREIGN KEY REFERENCES Album(idAlbum)
	,idEstilo INT FOREIGN KEY REFERENCES Estilo (idEstilo)
);