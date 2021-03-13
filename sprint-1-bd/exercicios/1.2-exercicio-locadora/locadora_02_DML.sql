USE Locadora;

INSERT INTO Empresa(NomeEmpresa, CNPJ, Funcionarios, Endereco)
VALUES             ('PereiraVeiculos', '000.567.980/0001-50', 'Marco', 'Rua Maruara N80')
                  ,('Carros&Carros', '000.123.314/0001-24', 'Pedro', 'Rua Barão de Maua N10');

INSERT INTO Marca(Nome,Sligan)
VALUES           ('Fiat', 'Seu maior parceiro')
                ,('Hyundai', 'O cumplice perfeito');

INSERT INTO Modelo(Tipo, idMarca)
VALUES            ('Gol', 1)
                 ,('HB20', 2);


INSERT INTO Veiculo(Placa, Cor, idEmpresa, idModelo)
VALUES             ('CCC-333', 'Preto', 1, 1)
                  ,('JJJ-101', 'Cinza', 2, 2);

INSERT INTO Cliente(Nome, Idade, CNH, Telefone)
VALUES             ('Marcos', '29', '123467889-x','965455454')
                  ,('Julia', '30', '578901273-x', '994982838');

INSERT INTO Aluguel(Preco, DataPega, Horario, DataDevolucao, idVeiculo, idCliente)
VALUES             ('$600,00', '12/01/2021', '14:30', '12/03/2021', 1,1)
                  ,('$550,00', '20/01/2021', '12:00', '20/03/2021', 2,2);