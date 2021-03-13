USE Locadora;

SELECT * FROM Empresa;

SELECT * FROM Marca;

SELECT * FROM Modelo;

SELECT * FROM Veiculo;

SELECT * FROM Cliente;

SELECT * FROM Aluguel;

--inner join--
SELECT * From Aluguel;



SELECT Aluguel.DataPega, Aluguel.DataDevolucao, Cliente.Nome, Modelo.Tipo  AS Modelo FROM Aluguel
INNER JOIN Cliente
ON Cliente.idCliente = Aluguel.idCliente
INNER JOIN Veiculo
ON Aluguel.idVeiculo = Veiculo.idVeiculo
INNER JOIN Modelo
ON Modelo.idModelo = Veiculo.idModelo;

SELECT Aluguel.DataPega, Aluguel.DataDevolucao, Cliente.Nome, Modelo.Tipo AS Modelo FROM Aluguel
INNER JOIN Cliente
ON Cliente.idCliente = Aluguel.idAluguel
INNER JOIN Veiculo
ON Aluguel.idVeiculo = Veiculo.idVeiculo
INNER JOIN Modelo
ON Modelo.idModelo = Veiculo.idModelo
WHERE Cliente.Nome Like 'Julia';
