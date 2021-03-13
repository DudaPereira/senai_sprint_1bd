create database hroads;

use hroads;

create table Classe
(
	idClasse int primary key identity
	,nomeClasse varchar (40) not null
)

create table TipoHabilidade
(
	idTipoHabilidade int primary key identity
	,nomeTipoHabilidade varchar (40) not null
)

create table Personagem
(
	idPersonagem int primary key identity
	,nomePersonagem varchar (100) not null
	,capacidadeMaximaVida int not null
	,capacidadeMaximaMana int not null
	,dataAtualização date not null
	,dataDeCriacao date not null
	,idClasse int foreign key references Classe(idClasse)
)

create table Habilidade
(
	idHabilidade int primary key identity
	,nomeHabilidade varchar (100) not null
	,idTipoHabilidade int foreign key references tipoHabilidade (idTipoHabilidade)
)

create table ClasseHabilidade
(
	idClasse int foreign key references Classe(idClasse)
	,idHabilidade int foreign key references Habilidade(idHabilidade)
)
