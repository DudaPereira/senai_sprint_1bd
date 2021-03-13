CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Empresa
(
  idEmpresa        INT PRIMARY KEY IDENTITY
  ,NomeEmpresa     VARCHAR(100) NOT NULL
  ,CNPJ            CHAR(19) NOT NULL
  ,Funcionarios    VARCHAR(200) NOT NULL
  ,Endereco        VARCHAR(150) NOT NULL
);

CREATE TABLE Marca
(
  idMarca INT PRIMARY KEY IDENTITY
  ,Nome   VARCHAR(150) NOT NULL
  ,Sligan VARCHAR(150) NOT NULL
);

CREATE TABLE Modelo
(
  idModelo INT PRIMARY KEY IDENTITY
  ,Tipo    VARCHAR(100) NOT NULL
  ,idMarca INT FOREIGN KEY REFERENCES Marca(idMarca)
);

CREATE TABLE Veiculo
(
  idVeiculo  INT PRIMARY KEY IDENTITY
  ,Placa     CHAR(7) NOT NULL
  ,Cor       VARCHAR(10) NOT NULL
  ,idEmpresa INT FOREIGN KEY REFERENCES Empresa(idEmpresa)
  ,idModelo  INT FOREIGN KEY REFERENCES Modelo(idModelo)  
);

CREATE TABLE Cliente
(
  idCliente INT PRIMARY KEY IDENTITY
  ,Nome     VARCHAR(100) NOT NULL
  ,Idade    CHAR(2) NOT NULL
  ,CNH      CHAR(11) NOT NULL
  ,Telefone CHAR(9) NOT NULL
);

CREATE TABLE Aluguel
(
  idAluguel      INT PRIMARY KEY IDENTITY
  ,Preco         MONEY NOT NULL
  ,DataPega      DATE NOT NULL
  ,Horario       TIME NOT NULL
  ,DataDevolucao DATE NOT NULL
  ,idVeiculo     INT FOREIGN KEY REFERENCES Veiculo(idVeiculo)
  ,idCliente     INT FOREIGN KEY REFERENCES Cliente(idCliente)
);
