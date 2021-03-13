CREATE DATABASE Micromanu;

USE Micromanu;

create table Empresa
(
	idEmpresa    INT PRIMARY KEY IDENTITY
	,NomeEmpresa VARCHAR(50) NOT NULL
	,CNPJEmpresa CHAR(19) NOT NULL
	,endereco    VARCHAR(40) NOT NULL
	,telefone    CHAR(9) NOT NULL
);

create table Colaboradores 
(
	idColaborador INT PRIMARY KEY IDENTITY 
	,nomeColab    VARCHAR(50) NOT NULL
	,Salario      MONEY NOT NULL
	,idEmpresa   INT FOREIGN KEY REFERENCES Empresa(idEmpresa)
);

create table Cliente
(
	idCliente  INT PRIMARY KEY IDENTITY 
	,NomeC     VARCHAR(50)  NOT NULL
	,TelefoneC VARCHAR(9)   NOT NULL
	,Email     VARCHAR(100) NOT NULL
);

create table Equipamento
(
	idEquipamento    INT PRIMARY KEY IDENTITY
	,NomeEquipamento VARCHAR(50) NOT NULL
	,idCliente       INT FOREIGN KEY REFERENCES Cliente(idCliente)
);

create table Atendimento
(
	idAtendimento        INT PRIMARY KEY IDENTITY
	,Hora                TIME NOT NULL
	,ProblemaEquipamento VARCHAR(150) NOT NULL
	,DataAtendimento     DATE NOT NULL
	,idEquipamento       INT FOREIGN KEY REFERENCES Equipamento(idEquipamento)
	,idColaborador       INT FOREIGN KEY REFERENCES Colaboradores(idColaborador)
);

create table ColaboradorAtendimento
(
	idColaborador  INT FOREIGN KEY REFERENCES Colaboradores(idColaborador)
	,idAtendimento INT FOREIGN KEY REFERENCES Atendimento (idAtendimento)
);