CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE Loja
(
	idLoja    INT PRIMARY KEY IDENTITY
	,Nome     VARCHAR(50) NOT NULL
	,Endereco VARCHAR(100) NOT NULL
	,Telefone VARCHAR(9) NOT NULL
	,CNPJ     VARCHAR(20) NOT NULL
);

CREATE TABLE Categoria 
(
	idCategoria INT PRIMARY KEY IDENTITY
	,NomeCat    VARCHAR(30) NOT NULL
	,idLoja     INT FOREIGN KEY REFERENCES Loja(idLoja)
);

CREATE TABLE SubCategoria
(
	idSubCategoria INT PRIMARY KEY IDENTITY
	,NomeSub       VARCHAR(50) NOT NULL
	,idCategoria   INT FOREIGN KEY REFERENCES Categoria(idCategoria)
);

CREATE TABLE Cliente
(
	idCliente    INT PRIMARY KEY IDENTITY
	,NomeCliente VARCHAR(100) NOT NULL
	,RG          CHAR(15)NOT NULL
	,CPF         CHAR(16) NOT NULL
	,TelefoneC   VARCHAR(9) NOT NULL
);

CREATE TABLE Pedido 
(
	idPedido    INT PRIMARY KEY IDENTITY
	,Quantidade VARCHAR(10) NOT NULL
	,NotaFisc   CHAR(11) NOT NULL
	,idCliente  INT FOREIGN KEY REFERENCES Cliente(idCliente)
);

CREATE TABLE Produto
(
	idProduto       INT PRIMARY KEY IDENTITY
	,NomeProd       VARCHAR(100) NOT NULL
	,Preco          MONEY NOT NULL
	,Validade       VARCHAR(20) NOT NULL
	,idSubCategoria INT FOREIGN KEY REFERENCES SubCategoria(idSubCategoria)
	,idPedido       INT FOREIGN KEY REFERENCES Pedido(idPedido)
);

CREATE TABLE PedidoProduto
(
	idPedido   INT FOREIGN KEY REFERENCES Pedido(idPedido)
	,idProduto INT FOREIGN KEY REFERENCES Produto(idProduto)
);