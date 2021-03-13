USE Micromanu;

INSERT INTO Empresa(NomeEmpresa, CNPJEmpresa, endereco, telefone)
VALUES             ('MicroMenu', '000.567.980/0001-50', 'Rua Maruara N80', '994982838');

INSERT INTO Colaboradores(nomeColab, Salario, idEmpresa)
VALUES                   ('Erik', '$950.90',1)
                        ,('Daniel','$800.43',1);

INSERT INTO Cliente(NomeC, TelefoneC, Email)
VALUES             ('Maria', '994982838', 'Maria12@gmail.com')
                  ,('Luana', '965455454', 'Luana9@gmail.com');

INSERT INTO Equipamento(NomeEquipamento, idCliente)
VALUES                 ('Tv', 1)
                      ,('computador', 2);

INSERT INTO Atendimento (Hora, ProblemaEquipamento, DataAtendimento, idEquipamento, idColaborador)
values                  ('12:00', 'Manutenção', '20/01/2021', 1, 1)
	                   ,('15:30', 'Limpeza', '15/02/2021', 2, 2);

Insert INTO ColaboradorAtendimento (idColaborador, idAtendimento)
values                             (1, 1)
	                              ,(3, 2)
								  ,(2, 3);
